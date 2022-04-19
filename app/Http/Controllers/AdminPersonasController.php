<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	//use DB;
	use CRUDBooster;
	use Illuminate\Support\Facades\DB;

	class AdminPersonasController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = true;
			$this->table = "personas";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			
			$this->col[] = ["label"=>"Foto","name"=>"foto","image"=>true];
			$this->col[] = ["label"=>"Grado, Nombres y Apellidos","name"=>"nombre_completo"];
			
			# END COLUMNS DO NOT REMOVE THIS LINE
			
			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Escalafón','name'=>'escalafon','type'=>'text','width'=>'col-sm-8','value'=>'SOF. - SGTO.'];
			$this->form[] = ['label'=>'Grado','name'=>'grado','type'=>'select2','validation'=>'required','width'=>'col-sm-8','dataenum'=>'Sof. My.;Sof. 1ro.;Sof. 2do.;Sof. Incl.;Sgto. 1ro.;Sgto. 2do.;Sgto. Incl.'];
			$this->form[] = ['label'=>'Arma','name'=>'arma','type'=>'select2','validation'=>'required','width'=>'col-sm-8','dataenum'=>'Inf.;Cab.;Art.;Ing.;Com.;Log.'];
			$this->form[] = ['label'=>'Especialidad','name'=>'especialidad','type'=>'select2','width'=>'col-sm-8','dataenum'=>'DEPSS.;Tgrafo.;Mus.'];
			$this->form[] = ['label' => 'Apellido Paterno', 'name' => 'paterno', 'type' => 'text', 'validation' => 'required|min:1|max:255', 'width' => 'col-sm-8'];
			$this->form[] = ['label' => 'Apellido Materno', 'name' => 'materno', 'type' => 'text', 'validation' => 'required|min:1|max:255', 'width' => 'col-sm-8'];
			$this->form[] = ['label' => 'Nombre', 'name' => 'nombre', 'type' => 'text', 'validation' => 'required|min:1|max:255', 'width' => 'col-sm-8'];
			$this->form[] = ['label' => 'CI', 'name' => 'ci', 'type' => 'number', 'validation' => 'required|integer|min:0', 'width' => 'col-sm-8'];
			$this->form[] = ['label' => 'Extensión', 'name' => 'extension', 'type' => 'select2', 'validation' => 'required', 'width' => 'col-sm-8', 'dataenum' => 'CH;LP;CB;OR;PT;TJ;SC;BE;PD'];
			$this->form[] = ['label' => 'Año de egreso', 'name' => 'egreso', 'type' => 'text', 'validation' => 'required|min:1|max:255', 'width' => 'col-sm-8'];
			$this->form[] = ['label' => 'Antiguedad', 'name' => 'antiguedad', 'type' => 'number', 'validation' => 'required|integer|min:0', 'width' => 'col-sm-8'];
			$this->form[] = ['label' => 'Sexo', 'name' => 'sexo', 'type' => 'select2', 'validation' => 'required', 'width' => 'col-sm-8', 'dataenum' => 'Masculino;Femenino'];
			$this->form[] = ['label' => 'Estado Civil', 'name' => 'estdo_civil', 'type' => 'select2', 'validation' => 'required', 'width' => 'col-sm-8', 'dataenum' => 'Soltero(a);Casado(a);Divorciado(a)'];
			$this->form[] = ['label' => 'Fecha Nacimiento', 'name' => 'fecha_nacimiento', 'type' => 'date', 'validation' => 'required|date', 'width' => 'col-sm-8'];
			$this->form[] = ['label' => 'Domicilio', 'name' => 'domicilio', 'type' => 'text', 'validation' => 'required|min:1|max:255', 'width' => 'col-sm-8'];
			$this->form[] = ['label' => 'Celular', 'name' => 'celular', 'type' => 'number', 'validation' => 'required|integer|min:8', 'width' => 'col-sm-8'];
			$this->form[] = ['label' => 'Celular2', 'name' => 'celular2', 'type' => 'number', 'validation' => 'required|integer|min:8', 'width' => 'col-sm-8'];
			$this->form[] = ['label' => 'Email', 'name' => 'email', 'type' => 'email', 'validation' => 'required|min:1|max:255|email|unique:personas', 'width' => 'col-sm-8', 'placeholder' => 'Please enter a valid email address'];
			$this->form[] = ['label' => 'Foto', 'name' => 'foto', 'type' => 'upload', 'validation' => 'required|image|max:3000', 'width' => 'col-sm-8', 'help' => 'File types support : JPG, JPEG, PNG, GIF, BMP'];


			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Escalafón','name'=>'escalafon','type'=>'text','width'=>'col-sm-8','value'=>'SOF. - SGTO.'];
			//$this->form[] = ['label'=>'Grado','name'=>'grado','type'=>'select2','validation'=>'required','width'=>'col-sm-8','dataenum'=>'Sof. My.;Sof. 1ro.;Sof. 2do.;Sof. Incl.;Sgto. 1ro.;Sgto. 2do.;Sgto. Incl.'];
			//$this->form[] = ['label'=>'Arma','name'=>'arma','type'=>'select2','validation'=>'required','width'=>'col-sm-8','dataenum'=>'Inf.;Cab.;Art.;Ing.;Com.;Log.'];
			//$this->form[] = ['label'=>'Especialidad','name'=>'especialidad','type'=>'select2','width'=>'col-sm-8','dataenum'=>'DEPSS.;Tgrafo.;Mus.'];
			//$this->form[] = ['label'=>'Paterno','name'=>'paterno','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-8'];
			//$this->form[] = ['label'=>'Materno','name'=>'materno','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-8'];
			//$this->form[] = ['label'=>'Nombre','name'=>'nombre','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-8'];
			//$this->form[] = ['label'=>'Ci','name'=>'ci','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-8'];
			//$this->form[] = ['label'=>'Extension','name'=>'extension','type'=>'select2','validation'=>'required','width'=>'col-sm-8','dataenum'=>'CH;LP;CB;OR;PT;TJ;SC;BE;PD'];
			//$this->form[] = ['label'=>'Egreso','name'=>'egreso','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-8'];
			//$this->form[] = ['label'=>'Antiguedad','name'=>'antiguedad','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-8'];
			//$this->form[] = ['label'=>'Sexo','name'=>'sexo','type'=>'select2','validation'=>'required','width'=>'col-sm-8','dataenum'=>'Masculino;Femenino'];
			//$this->form[] = ['label'=>'Estdo Civil','name'=>'estdo_civil','type'=>'select2','validation'=>'required','width'=>'col-sm-8','dataenum'=>'Soltero;Casado;Divorciado'];
			//$this->form[] = ['label'=>'Fecha Nacimiento','name'=>'fecha_nacimiento','type'=>'date','validation'=>'required|date','width'=>'col-sm-8'];
			//$this->form[] = ['label'=>'Domicilio','name'=>'domicilio','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-8'];
			//$this->form[] = ['label'=>'Celular','name'=>'celular','type'=>'number','validation'=>'required|integer|min:8','width'=>'col-sm-8'];
			//$this->form[] = ['label'=>'Celular2','name'=>'celular2','type'=>'number','validation'=>'required|integer|min:8','width'=>'col-sm-8'];
			//$this->form[] = ['label'=>'Email','name'=>'email','type'=>'email','validation'=>'required|min:1|max:255|email|unique:personas','width'=>'col-sm-8','placeholder'=>'Please enter a valid email address'];
			//$this->form[] = ['label'=>'Foto','name'=>'foto','type'=>'upload','validation'=>'required|image|max:3000','width'=>'col-sm-8','help'=>'File types support : JPG, JPEG, PNG, GIF, BMP'];
			# OLD END FORM

			/* 
	        | ---------------------------------------------------------------------- 
	        | Sub Module
	        | ----------------------------------------------------------------------     
			| @label          = Label of action 
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class  
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        | 
	        */
	        $this->sub_module = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)     
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        | 
	        */
	        $this->addaction = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Button Selected
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button 
	        | Then about the action, you should code at actionButtonSelected method 
	        | 
	        */
	        $this->button_selected = array();

	                
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------     
	        | @message = Text of message 
	        | @type    = warning,success,danger,info        
	        | 
	        */
	        $this->alert        = array();
	                

	        
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add more button to header button 
	        | ----------------------------------------------------------------------     
	        | @label = Name of button 
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        | 
	        */
	        $this->index_button = array();



	        /* 
	        | ---------------------------------------------------------------------- 
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------     
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.        
	        | 
	        */
	        $this->table_row_color = array();     	          

	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | You may use this bellow array to add statistic at dashboard 
	        | ---------------------------------------------------------------------- 
	        | @label, @count, @icon, @color 
	        |
	        */
	        $this->index_statistic = array();



	        /*
	        | ---------------------------------------------------------------------- 
	        | Add javascript at body 
	        | ---------------------------------------------------------------------- 
	        | javascript code in the variable 
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = NULL;


            /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code before index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code after index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include Javascript File 
	        | ---------------------------------------------------------------------- 
	        | URL of your javascript each array 
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Add css style at body 
	        | ---------------------------------------------------------------------- 
	        | css code in the variable 
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include css File 
	        | ---------------------------------------------------------------------- 
	        | URL of your css each array 
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();
	        
	        
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for button selected
	    | ---------------------------------------------------------------------- 
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here
	            
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate query of index result 
	    | ---------------------------------------------------------------------- 
	    | @query = current sql query 
	    |
	    */
	    public function hook_query_index(&$query) {
		//Your code here

			$query->where('escalafon', 'SOF. - SGTO.')->orderByRaw(DB::raw("FIELD(grado,'Sof. My.','Sof. 1ro.','Sof. 2do.','Sof. Incl.','Sgto. 1ro.','Sgto. 2do.', 'Sgto. Incl.')"))-> orderBy('egreso', 'asc')->orderBy('antiguedad', 'asc');
		
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
	    	//Your code here
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before add data is execute
	    | ---------------------------------------------------------------------- 
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {
		//Your code here
			if ($postdata['especialidad'] == Null) {
				$postdata['nombre_completo'] = $postdata['grado'] . ' ' . $postdata['arma'] . ' ' . $postdata['nombre'] . ' ' . $postdata['paterno'] . ' ' . $postdata['materno'];
			} else {
				$postdata['nombre_completo'] = $postdata['grado'] . ' ' . $postdata['especialidad'] . ' ' . $postdata['nombre'] . ' ' . $postdata['paterno'] . ' ' . $postdata['materno'];
			}
	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after add public static function called 
	    | ---------------------------------------------------------------------- 
	    | @id = last insert id
	    | 
	    */
	    public function hook_after_add($id) {
			//Your code here
	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before update data is execute
	    | ---------------------------------------------------------------------- 
	    | @postdata = input post data 
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_edit(&$postdata,$id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_edit($id) {
	        //Your code here 

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_delete($id) {
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_delete($id) {
	        //Your code here

	    }



	    //By the way, you can still create your own method in here... :) 


	}
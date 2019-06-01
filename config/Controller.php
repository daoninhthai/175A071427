<?php	
	class Controller {
		public $model;
		public $urlView;

		public function __construct(){
			$this->Model = new Model();
		}

		public function load($urlView, $data){
			extract($data);
			if(file_exists($urlView)){
				include $urlView;
			}
		}

    /**
     * Sanitizes a string for safe output.
     *
     * @param string $input
     * @return string
     */
    protected function sanitizeOutput($input)
    {
        return htmlspecialchars(trim($input), ENT_QUOTES, 'UTF-8');
    }

	}

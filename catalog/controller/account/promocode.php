<?php
class ControllerAccountPromocode extends Controller {
	const CODE_LENGTH = 8;
	public function index(){
		print_r('<pre>');
		print_r('expression');
		print_r('</pre>');
		for ($i=0; $i < 10; $i++) { 
			print_r('<pre>');
			print_r($this->_createCode());
			print_r('</pre>');
		}
	}

    protected function _createCode(){
      /*  $chars = array ('A', 'B', 'C', 'D', 'E', 'F', 'G',
            'H', 'I', 'J', 'K', 'L', 'M', 'N', '0', 'P',
            'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
        $code = '';
        for ($i = 0; $i < self::CODE_LENGTH; $i++) {
            $code .= $chars[rand(0, count($chars) - 1)];
        }*/
        $code = substr(md5(microtime()), rand(0,99), self::CODE_LENGTH);
        return $code;
    }
}
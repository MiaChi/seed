<?php
class ControllerStep2 extends Controller {
	private $error = array();
	
	public function index() {
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
			$this->redirect(HTTP_SERVER . 'index.php?route=step_3');
		}

		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';	
		}
		
		$this->data['action'] = HTTP_SERVER . 'index.php?route=step_2';

		$this->data['config_catalog'] = DIR_OPENCART . 'config.php';
		$this->data['config_admin'] = DIR_OPENCART . 'admin/config.php';
		
		$this->data['cache'] = DIR_SYSTEM . 'cache';
		$this->data['logs'] = DIR_SYSTEM . 'logs';
		$this->data['image'] = DIR_OPENCART . 'image';
		$this->data['image_cache'] = DIR_OPENCART . 'image/cache';
		$this->data['image_data'] = DIR_OPENCART . 'image/data';
		$this->data['download'] = DIR_OPENCART . 'download';
		
		$this->template = 'step_2.tpl';

		$this->children = array(
			'header',
			'footer'
		);		
		$this->response->setOutput($this->render(TRUE));
	}
	
	private function validate() {
		if (phpversion() < '5.0') {
			$this->error['warning'] = '警告: 您需要使用PHP5或以上的版本才能正常使用OpenCart!';
		}

		if (!ini_get('file_uploads')) {
			$this->error['warning'] = '警告: 必须开启 file_uploads 功能!';
		}
	
		if (ini_get('session.auto_start')) {
			$this->error['warning'] = '警告: 请关闭session.auto_start 否则OpenCart 无法正常工作!';
		}

		if (!extension_loaded('mysql')) {
			$this->error['warning'] = '警告: 必须载入 MySQL extension !';
		}

		if (!extension_loaded('gd')) {
			$this->error['warning'] = '警告: 必须载入GD extension !';
		}

		if (!extension_loaded('zlib')) {
			$this->error['warning'] = '警告: 必须载入 ZLIB extension !';
		}
	
		if (!is_writable(DIR_OPENCART . 'config.php')) {
			$this->error['warning'] = '警告: config.php 档案必须可读写才能安装!';
		}
				
		if (!is_writable(DIR_OPENCART . 'admin/config.php')) {
			$this->error['warning'] = '警告: admin/config.php 档案必须可读写才能安装!';
		}

		if (!is_writable(DIR_SYSTEM . 'cache')) {
			$this->error['warning'] = '警告: Cache 目录必须可读写才能安装!';
		}
		
		if (!is_writable(DIR_SYSTEM . 'logs')) {
			$this->error['warning'] = '警告: Logs 目录必须可读写才能安装!';
		}
		
		if (!is_writable(DIR_OPENCART . 'image')) {
			$this->error['warning'] = '警告: Image 目录必须可读写才能安装!';
		}

		if (!is_writable(DIR_OPENCART . 'image/cache')) {
			$this->error['warning'] = '警告: Image/cache 目录必须可读写才能安装!';
		}
		
		if (!is_writable(DIR_OPENCART . 'image/data')) {
			$this->error['warning'] = '警告: Image/data 目录必须可读写才能安装!';
		}
		
		if (!is_writable(DIR_OPENCART . 'download')) {
			$this->error['warning'] = '警告: Download 目录必须可读写才能安装!';
		}
		
    	if (!$this->error) {
      		return TRUE;
    	} else {
      		return FALSE;
    	}
	}
}
?>
<?php
namespace app\admin\model;
use think\Model;
 
 class Admin extends Model
 {
 	 protected $table = 'admin';
	 protected $id = 'id';
	 protected $username = 'username';
	 protected $password = 'passwoed';
	 protected $name = 'name';
	 protected $logtime = 'logtime';
	 protected $level = 'level';
 }

?>
<?php
namespace app\admin\model;
use think\Model;

class Imgs extends Model
{
	protected $table = 'imgs';
	protected $id = 'id';
	protected $userid = 'userid';
	protected $title = 'title';
	protected $des = 'des';
	protected $sex = 'sex';
	protected $src = 'src';
	protected $uptime = 'uptime';
}

?>
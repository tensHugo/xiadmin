<?php
namespace app\admin\model;
use think\Model;

class Updeted extends Model
{
	protected $table = 'updated';
	protected $id = 'id';
	protected $title = 'title';
	protected $context = 'context';
	protected $v = 'v';
	protected $uptime = 'uptime';
	protected $status = 'status';
	protected $num = 'num';
	protected $filename = 'filename';
}
?>
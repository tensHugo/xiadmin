<?php
namespace app\admin\model;
use think\Model;

class Userip extends Model
{
	protected $table = 'userip';
	protected $id = 'id';
	protected $username = 'username';
	protected $ip = 'ip';
	protected $time = 'time';
}

?>
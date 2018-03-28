<?php
namespace app\admin\model;
use think\Model;

class User extends Model
{
	protected $table = 'user';
	protected $id = 'id';
	protected $username = 'username';
	protected $ip = 'ip';
	protected $qq = 'qq';
	protected $zctime = 'zctime';
	protected $logintime = 'logintime';
	protected $money = 'money';
}

?>
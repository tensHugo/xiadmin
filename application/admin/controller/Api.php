<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\Admin;
use app\admin\model\Config;

  class Api extends Controller
  {
	public function login($username,$pwss){
		$info = array(
		  'code' => 0,
		  'msg'  => '系统提示'
		);
		$user = Admin::get(['username' => $username]);
		if($user!=null){
			if($user->password == md5($pwss)){
				$info['code'] = 1;
				$info['msg'] = '登录成功';
				session_start();
				$_SESSION['user'] = $username; //保存登录会话
				$_SESSION['name'] = $user->name; 
			}else{
				$info['msg'] = '用户密码错误';
			}
			
		}else{
			$info['msg'] = '用户名不存在';
		}
		return json($info);
	}
	
	/*
	 * 清除登录会话
	 */
	public function quit(){
		session_start();
		unset($_SESSION['user']);
		unset($_SESSION['name']);
		$info = array(
		  'code' => 1,
		  'msg'  => '退出成功'
		);
		return json($info);
	}
	
	
	public function sys_edit($qq,$context,$adminname)
	{
		$config = Config::get(1);
		$config->qq = $qq;
		$config->adminname = $adminname;
		$config->context = $context;
		$config->save();
		$info = array(
		  'code' => 1,
		  'msg'  => '退出成功'
		);
		return json($info);
	}
	
  
	
	
  }
?>
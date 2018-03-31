<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\Admin;
use app\admin\model\Config;
use app\admin\model\Updeted;
use app\admin\model\Imgs;

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
		  'msg'  => '保存成功'
		);
		return json($info);
	}
	
  public function updeted_add($title,$context,$v,$status,$filename)
  {
  	$updeted = new Updeted;
	  $updeted->title = $title;
	  $updeted->context = $context;
	  $updeted->v = $v;
	  $updeted->uptime = date('y-m-d h:i:S');
	  $updeted->status = $status;
	  $updeted->filename = $filename;
	  $updeted->save();
	  $info = array(
		  'code' => 1,
		  'msg'  => '添加成功'
		);
		return json($info);
	
  }
  
  public function updeted_edit($id,$title,$context,$v,$status,$filename)
  {
  	$updeted = Updeted::get($id);
	  $updeted->title = $title;
	  $updeted->context = $context;
	  $updeted->v = $v;
	  $updeted->filename = $filename;
	  $updeted->status = $status;
	  $updeted->save();
	  $info = array(
		  'code' => 1,
		  'msg'  => '保存成功'
		);
		return json($info);
	
  }
	
	
	public function upload()
	{
		$return = array(
		  'code' => 1,
		  'msg'  => '上传成功'
		);
		$file = request()->file('file');
		$info = $file->move( './uploads');
		if($info){
			$return['data'] = array('src'=>$info->getSaveName());
		}else{
			$return['code'] = 0;
			$return['msg'] = $file->getError();
		}
		 return json($return);
	}
	
	public function img_add($title,$des,$sex,$src)
	{
		$imgs = new Imgs;
		$imgs->title = $title;
		$imgs->des = $des;
		$imgs->sex = $sex;
		$imgs->src = $src;
		$imgs->uptime = date('y-m-d h:i:S');
		$imgs->save();
		 $info = array(
		  'code' => 1,
		  'msg'  => '添加成功'
		);
		return json($info);
	}
	
	public function img_edit($id,$title,$des,$sex,$src)
	{
		$imgs = Imgs::get($id);
		$imgs->title = $title;
		$imgs->des = $des;
		$imgs->sex = $sex;
		$imgs->src = $src;
		$imgs->uptime = date('y-m-d h:i:S');
		$imgs->save();
		 $info = array(
		  'code' => 1,
		  'msg'  => '保存成功'
		);
		return json($info);
	}
	
	
  }
?>
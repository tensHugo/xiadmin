<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\User;
use app\admin\model\Userip;
use app\admin\model\Config;
use app\admin\model\Updeted;

class View extends Controller
{
	public function _initialize()
    {
    	//初始化函数
       
    }
    public function admin()
	{
		//判断登录状态
		session_start();
		if(isset($_SESSION['user']) && !empty($_SESSION['user'])) {
			$this->assign('name', $_SESSION['name']);
            return $this->fetch('/index');
        }else{
        	$this->success('您还未登录，自动跳转到登录页面','../login.do');
        }
	}
	
	public function login()
	{
		//清除登录状态
		session_start();
		unset($_SESSION['user']);
		unset($_SESSION['name']);
		return $this->fetch('/login');
	}
	
	public function welcome(){
		return $this->fetch('/welcome');
	}
	
	public function user_list(){
		// 查询用户数据 并且每页显示10条数据
        $list = User::paginate(10);
		$page = $list->render();
		$count = $list->total();
        // 把分页数据赋值给模板变量list
        $this->assign('list', $list);
		$this->assign('page', $page);
		$this->assign('count', $count);
        // 渲染模板输出
        return $this->fetch('/user-list');
	}
	
	public function share_list()
	{
		$list = Userip::paginate(10);
		$page = $list->render();
		$count = $list->total();
		$this->assign('list', $list);
		$this->assign('page', $page);
		$this->assign('count', $count);
		return $this->fetch('/share-list');
	}
	
  public function sreach_user($username)
  {
  	    $list = User::getByUsername($username);
		$count = $list->total();
		//$this->assign('list',$list);
		//$this->assign('count', $count);
		return $this->fetch('/share-list');
	
  }
  
  public function sys_edit()
  {
  	$config = Config::get(1);
	$this->assign('config',$config);
	return $this->fetch('/sys-edit');
  }
  
  public function updeted_list()
  {
  	$list = Updeted::paginate(10);
	$page = $list->render();
	$count = $list->total();
	$this->assign('list', $list);
	$this->assign('page', $page);
    $this->assign('count', $count);
	return $this->fetch('/updeted-list');
  }
  
  public function updeted_add()
  {
  	
	return $this->fetch('/updeted-add');
  }
  
  public function updeted_edit($id)
  {
  	$updeted = Updeted::get($id);
	$selected = "";
	$selected1 = "";
	if($updeted->status == 1){
		$selected = "selected='selected'";
	}else{
		$selected1 = "selected='selected'";
	}
	$this->assign('selected',$selected);
	$this->assign('selected1',$selected1);
	$this->assign('updeted',$updeted);
	return $this->fetch('/updeted-edit');
  }
  
	
}

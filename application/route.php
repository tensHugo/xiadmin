<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

return [
    '__pattern__' => [
        'name' => '\w+',
    ],
    '[hello]'     => [
        ':id'   => ['index/hello', ['method' => 'get'], ['id' => '\d+']],
        ':name' => ['index/hello', ['method' => 'post']],
    ],
    
	//页面请求
     '/admin' =>['admin/View/admin',['method' => 'get']],
     '/login' =>['admin/View/login',['method' => 'get']],
     '/admin/welcome' =>['admin/View/welcome',['method' => 'get']],
     '/admin/admin-list' => ['admin/View/user_list',['method' => 'get']],
     '/admin/share-list' => ['admin/View/share_list',['method' => 'get']],
     '/admin/sreach-user' => ['admin/View/sreach_user',['method' => 'get']],
     '/admin/sreach-share' => ['admin/View/sreach_share',['method' => 'get']],
     '/admin/sreach-imgs' => ['admin/View/sreach_imgs',['method' => 'get']],
     '/admin/sys-edit' => ['admin/View/sys_edit',['method' => 'get']],
     '/admin/updeted-list' => ['admin/View/updeted_list',['method' => 'get']],
     '/admin/updeted-add' => ['admin/View/updeted_add',['method' => 'get']],
     '/admin/updeted-edit' => ['admin/View/updeted_edit',['method' => 'get']],
     '/admin/imgs-list' => ['admin/View/imgs_list',['method' => 'get']],
     '/admin/imgs-add' => ['admin/View/imgs_add',['method' => 'get']],
     '/admin/imgs-edit' => ['admin/View/imgs_edit',['method' => 'get']],
	 
	 //api请求
	 '/api/login' => ['admin/Api/login',['method' => 'post']],
	 '/api/quit' => ['admin/Api/quit',['method' => 'get']],
	 '/api/sys-edit'=> ['admin/Api/sys_edit',['method' => 'post']],
	 '/api/updeted-add'=> ['admin/Api/updeted_add',['method' => 'post']],
	 '/api/updeted-edit'=> ['admin/Api/updeted_edit',['method' => 'post']],
	 '/api/upload'=> ['admin/Api/upload',['method' => 'post']],
	 '/api/img-add'=> ['admin/Api/img_add',['method' => 'post']],
	 '/api/img-edit'=> ['admin/Api/img_edit',['method' => 'post']],

];

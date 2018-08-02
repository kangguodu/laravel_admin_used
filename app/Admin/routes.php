<?php

use Illuminate\Routing\Router;

Admin::registerHelpersRoutes();

Route::group([
    // 'prefix'        => config('admin.prefix'),
    'namespace'     => Admin::controllerNamespace(),
    'middleware' => ['web', ],
  ],function (Router $router)
  {
    $router->get('auth/login', 'AuthController@getLogin');
    $router->post('auth/login', 'AuthController@postLogin');
  });

Route::group([
    // 'prefix'        => config('admin.prefix'),
    'namespace'     => Admin::controllerNamespace(),
    'middleware'    => ['web', 'admin'],
], function (Router $router) {
    $router->resource('wx/synimg','Wx\WxController');


    $router->get('auth/logout', 'AuthController@getLogout');
    $router->get('auth/setting', 'AuthController@getSetting');
    $router->put('auth/setting', 'AuthController@putSetting');
    $router->get('auth',function (){return redirect(url('auth/users'));});

    $router->get('/', 'HomeController@index');    //index
   

   
});

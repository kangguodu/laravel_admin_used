<?php

namespace App\Admin\Controllers;

use App\Member;use App\Malls;use App\Orders;use App\Goods;
use App\Regions;use App\Activity;use App\Staple;
use App\Http\Controllers\Controller;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Encore\Admin\Widgets\Box;
use Encore\Admin\Widgets\Chart\Bar;
use Encore\Admin\Widgets\Chart\Doughnut;
use Encore\Admin\Widgets\Chart\Line;
use Encore\Admin\Widgets\Chart\Pie;
use Encore\Admin\Widgets\Chart\PolarArea;
use Encore\Admin\Widgets\Chart\Radar;
use Encore\Admin\Widgets\Collapse;
use Encore\Admin\Widgets\InfoBox;
use Encore\Admin\Widgets\Tab;
use Encore\Admin\Widgets\Table;
use yii\rbac\Permission;

class HomeController extends Controller
{
    public function index()
    {
        // \Encore\Admin\Auth\Permission::deny(['rebate']);
        return Admin::content(function (Content $content) {

            $content->header('首页');
            $content->description('laravel后台管理系统');

            $content->row(function ($row) {
              
            });
            $content->row(function ($row)
            {
              
            });
        });
    }
}

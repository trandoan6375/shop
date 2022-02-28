<?php
namespace App\Http\View\Composers;
//đưa view compovào config/app
use App\Models\Menu;
use Illuminate\View\View;
class MenuComposer
{

    protected $users;


    public function __construct()
    {

    }

    public function compose(View $view)
    {
        $menu= Menu::select('id','name','parent_id')->where('active',1)->orderByDesc('id')->get();
        $view->with('menus1',$menu);
    }

}

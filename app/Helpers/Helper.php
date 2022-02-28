<?php
namespace App\Helpers;
use Illuminate\Support\Str;
class Helper
{
    public static function menu($menus, $parent_id =0 ,$char = '')
    {
        $html='';
        foreach ($menus as $key => $menu){
            if($menu->parent_id == $parent_id){
                $html .= '
                    <tr>
                        <th>'.  $menu->id.'</th>
                        <td>'.  $char . $menu->name.'</td>
                        <td>'.  self::active($menu->active).'</td>
                        <td>'.  $menu->updated_at.'</td>
                        <td>
                            <a class="btn btn-primary btb-sm" href="/admin/menus/edit/'.$menu->id.'">
                                <i class="far fa-edit"></i>
                            </a>
                            <a class="btn btn-danger btb-sm"
                            onclick="removeRow('.$menu->id.',\'/admin/menus/destroy\')">
                                <i class="far fa-trash-alt"></i>
                            </a>
                        </td>
                    </tr>
                ';
            unset($menus[$key]);
            //đệ quy để lọc tất cả danh sách có cùng $key(id cha)
            $html .= self::menu($menus,$menu->id,$char.'--');
                //lúc này sẽ tìm kiếm tại id cha còn sách sách con không
            }
        }
        return $html;
    }
    public static function active($active=0) : string
    {
        return $active==0 ? '<span class="btn btn-danger btn-xs">NO</span>' :
            '<span class="btn btn-success btn-xs">YES</span>';
    }
    public static function menus($menus1,$parent_id = 0):string
    {
        $html='';
        foreach ($menus1 as $key =>$menu)
        {
            if($menu->parent_id == $parent_id)
            {
                $html.='
                <li>
                    <a href="/danh-muc/'. $menu->id.'-'. Str::slug($menu->name, '-') .'.html">
                        ' . $menu->name . '
                    </a>';

                if(self::isChild($menus1,$menu->id))
                {
                    $html .='<ul class="sub-menu">';
                    $html .= self::menus($menus1,$menu->id);
                    $html.='</ul>';
                }

                $html .='</li>';

            }

        }
        return $html;
    }
    public static function isChild($menus1, $id):bool
    {
        foreach ($menus1 as $menu)
        {
            if($menu->parent_id==$id)
            {
                return true;
            }
        }
        return false;
    }
    public  static function price($price =0 ,$price_sale=0)
    {
        if($price_sale !=0) return number_format($price_sale).'đ';
        if($price !=0) return number_format($price).'đ';
        return '<a href="/lien-he.html">Liên hệ</a>';

    }
}

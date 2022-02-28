$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
function loadmore()
{
    const page=$('#page').val();

    $.ajax({
        type:'POST',
        dataType:'json',
        data:{page},
        url:'/services/load-product',
        success:function (result){
            if(result.html != '')
            {
                $('#loadProduct').append(result.html);
                $('#page').val(page+1);

            }
            else {

                alert('Da load xong sp');
                $('#button-loadmore').css('display','none');
            }
        }

    });

}

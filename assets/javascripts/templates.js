if (window.location.href.search( 'wiki' ) > 0)
{
    $.ajax({
        url: '/all_templates',
        type: "GET",
        dataType: "script"
    });

    $(function(){
        $('#template_selector').live('change', function(){
            $.ajax({
                url: '/all_templates',
                type: "GET",
                dataType: "script",
                data: {template: $(this).val()}
            });
        })
    });
}





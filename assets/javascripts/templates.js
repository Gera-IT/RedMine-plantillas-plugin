$(function(){
    if (window.location.href.search( 'wiki' ) > 0)
    {
        $.ajax({
            url: '/all_templates',
            type: "GET",
            dataType: "script"
        });

        $(function(){
            $(document).on('change', '#template_selector', function(){
                $.ajax({
                    url: '/all_templates',
                    type: "GET",
                    dataType: "script",
                    data: {template: $(this).val()}
                });
            })
        });
    }
})




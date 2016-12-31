
requirejs.config({
    shim : { 
        "bootstrap" : { "deps" : ['jquery'] }
    }, 
    paths: {
        "jquery" :    "vendor/jquery",
        "bootstrap" : "vendor/bootstrap"
    }

});

require(['jquery', 'bootstrap'], function($){

    // DOM ready
    $(function(){

        // Twitter Bootstrap 3 carousel plugin
        $("#element").carousel();
    });
});



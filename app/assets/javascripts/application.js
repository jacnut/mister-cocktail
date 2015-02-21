// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .


$(document).ready(function() {

    $(window).scroll({
            previousTop: 0
        },
        function() {
            // get current distance from top of viewport
            var currentTop = $(window).scrollTop();
            // define the header height here
            var headerHeight = 50;
            // if user has scrolled past header, initiate the scroll up/scroll down hide show effect
            if ($(window).scrollTop() > headerHeight) {
                if ($(window).scrollTop() > 300) {
                    //Bottom of page -Low
                    $(".header_container").removeClass("show_nav");
                    $(".header_container").addClass("hide_nav");
                } else {
                    if (currentTop < this.previousTop) {
                        //Up
                        $(".header_container").removeClass("hide_nav");
                        $(".header_container").addClass("show_nav");
                    } else {
                        //Down
                        $(".header_container").removeClass("show_nav");
                        $(".header_container").addClass("hide_nav");
                    }
                }
            }
            this.previousTop = currentTop;
        });
});
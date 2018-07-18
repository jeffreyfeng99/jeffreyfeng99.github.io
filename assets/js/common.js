/*jslint browser: true*/
/*global $, jQuery, alert*/
'use strict';

$(document).ready(function() {

    $('#partnersModal').on('slid.bs.carousel', function(e) {
        var nextH = $(e.relatedTarget)
            .find('.item-inner')
            .height();
        $(this)
            .find('.active')
            .parent()
            .animate({ height: nextH }, 500);
    });

    $('#firstModal').on('slid.bs.carousel', function(e) {
        var nextH = $(e.relatedTarget)
            .find('.item-inner')
            .height();
        $(this)
            .find('.active')
            .parent()
            .animate({ height: nextH }, 500);
    });

    $('#secondModal').on('slid.bs.carousel', function(e) {
        var nextH = $(e.relatedTarget)
            .find('.item-inner')
            .height();
        $(this)
            .find('.active')
            .parent()
            .animate({ height: nextH }, 500);
    });

    $('#thirdModal').on('slid.bs.carousel', function(e) {
        var nextH = $(e.relatedTarget)
            .find('.item-inner')
            .height();
        $(this)
            .find('.active')
            .parent()
            .animate({ height: nextH }, 500);
    });

    $('#fourthModal').on('slid.bs.carousel', function(e) {
        var nextH = $(e.relatedTarget)
            .find('.item-inner')
            .height();
        $(this)
            .find('.active')
            .parent()
            .animate({ height: nextH }, 500);
    });
    
     var $tabNav = $('#tabNavHref');
     if ($tabNav.length) {
         var hash = document.location.hash;
         if (hash) {
             $('#tabNavHref button[href="' + hash + '"]').tab('show');
         }
 
         $('#tabNavHref button').on('shown.bs.tab', function(e) {
             window.location.hash = $(this).attr('href');
             window.scrollTo(0, 0);
         });
     }

});

$(window).on('load', function() {
    $('header').removeClass('fade-out');
    $('main').removeClass('fade-out');
});

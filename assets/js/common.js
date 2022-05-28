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
    
    function centerModal() {
        $(this).css('display', 'block');
        var $dialog = $(this).find('.modal-dialog'),
            offset = ($(window).height() - $dialog.height()) / 2,
            bottomMargin = parseInt($dialog.css('marginBottom'), 10);

        // Make sure you don't hide the top part of the modal w/ a negative margin if it's longer than the screen height, and keep the margin equal to the bottom margin of the modal
        if (offset < bottomMargin) offset = bottomMargin;
        $dialog.css('margin-top', offset);
    }
    
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

    //  function linkUnderline () {
    //     var pathname = window.location.pathname;
    //     var $button1 = find('#solidworks-button');
    //     var $button2 = find('#design-button');
    //     var $button3 = find('#labs-button');
    //     var $button4 = find('#other-button');

    //     if (pathname == '/portfolio/#solidworks') {
    //         $($button1).css('border-bottom', '2px solid cadetblue');
    //     }
    //     else if (pathname == '/portfolio/#design') {
    //         $($button2).css('border-bottom', '2px solid cadetblue');
    //     }
    //     else if (pathname == '/portfolio/#labs') {
    //         $($button3).css('border-bottom', '2px solid cadetblue');
    //     }
    //     else if (pathname == '/portfolio/#other') {
    //         $($button4).css('border-bottom', '2px solid cadetblue');
    //     }
    //  }
    
});

$(window).on('load', function() {
    $('header').removeClass('fade-out');
    $('main').removeClass('fade-out');
});


$(window).on('load', function() {
     $('.grid').masonry({
        // options
        itemSelector: '.grid-item',
        columnWidth: '.grid-item'
      });

      $grid.imagesLoaded().progress( function() {
        $grid.masonry();
      });  

});


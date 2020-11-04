$(document).on('turbolinks:load', function() {
    $('.js-modal-open').on('click',function(){
        selector = '#' + $(this).attr('id').substr( 5 );
        $(selector).fadeIn();
        return false;
    });
    $('.js-modal-close').on('click',function(){
        $('.js-modal').fadeOut();
        return false;
    });
});

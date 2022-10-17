//Parallax
$(document).ready(function(){
    function edit_Parallax() {
        $('.parallax-group').each(function(){
            var scrollPos = $(window).scrollTop();
            var elmPos = $(this).offset().top;
            if(elmPos <= scrollPos + $(window).height() + $(window).height() * .5 && scrollPos <= elmPos + $(this).height()  + $(window).height() * .5) {
                $(this).addClass('is-show');
                $(this).find('.imagearea').each(function(){
                    var elm = $(this);
                    if(elm.attr('data-speed') != undefined) {
                        var scrollPosC = scrollPos + $(window).height() * 0.5;
                        var elmPosC = elmPos + $(this).height() * 0.5;
                        var tNum = (scrollPosC - elmPosC) * $(this).attr('data-speed') * 0.02;
                        
                        if(elm.hasClass('horizon')){
                            elm.find('img').css('transform','translate('+tNum+'vw, 0)');
                        }else{
                            elm.find('img').css('transform','translate(0,'+tNum+'vw)');
                        }
                    }
                });
            }
        });
    }
    
    edit_Parallax();
    $(window).on('scroll', function(){
        edit_Parallax();
    })
});
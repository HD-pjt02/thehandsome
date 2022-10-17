$(document).ready(function(){
    $(window).scroll(function(){
        $('.evt_area200721').each(function(){ // 스크롤시 화면에 들어온 엘리먼트에 클래스명 추가
            var winScroll = $(window).scrollTop(),
                fromTop = $(this).offset().top,
                fromBottom = $(this).offset().top + $(this).outerHeight(),
                winBottom = $(window).scrollTop() + $(window).height();
            if(winScroll <= fromBottom - 50 && winBottom > fromTop + 150){
                if(winScroll <= 90){
                    $(this).removeClass('edt_motion');
                }else{
                    if(!$(this).hasClass('edt_motion')){
                        $(this).addClass('edt_motion');
                    }
                }
            }
            if(winScroll <= fromBottom - 50 && winBottom > fromTop + 70){
            }else{
                if(winScroll <= 90){
                    $(this).removeClass('edt_motion');
                }else{
                    if($(this).hasClass('edt_motion')){
                        $(this).removeClass('edt_motion');
                    }
                }
            }
        });
        var winH = $(window).height(),
            fixedElementWrap = $('.start_foundation'), // 출발지점 기준
            moveAreaH = $('.end_foundation'); // 끝지점 기준
        
        if(fixedElementWrap != null && typeof fixedElementWrap != undefined && fixedElementWrap.length > 0
           && moveAreaH != null && typeof moveAreaH != undefined && moveAreaH.length > 0){
            var start = fixedElementWrap.offset().top - (winH - fixedElementWrap.outerHeight())/2, // 출발지점
                stop = moveAreaH.offset().top - (winH - moveAreaH.outerHeight())/2, //끝지점
                y = $(window).scrollTop(),
                topVal1 = fixedElementWrap.outerHeight() / 2,
                moveArea = $('.fixed200721_wrap').offset().top,
                topVal2 = moveAreaH.offset().top - moveArea + moveAreaH.outerHeight()/2,
                topVal3 = fixedElementWrap.outerHeight()/2 + (winH - fixedElementWrap.outerHeight())/2,
                fixedElement = $('.fixed200721'); // 고정되는 엘리먼트
            
            if(y >= start && y < stop){//출발
                fixedElement.css({'position':'fixed','top':topVal3 + 'px'});
            }else if(y >= start && y >= stop){//끝
                fixedElement.css({'position':'absolute','top':topVal2+'px'});
            }else if(y < start){//디폴트
                fixedElement.css({'position':'absolute','top':topVal1+'px'});
            }
        }
    });
});
const searchEl = document.querySelector('.search') ;
const searchinputEl = searchEl.querySelector('input');

searchEl.addEventListener('click', function () {
    // Logic..
    searchinputEl.focus();

});

searchinputEl.addEventListener('focus', function(){
    searchEl.classList.add('focused');
    searchinputEl.setAttribute('placeholder', '통합검색');
});

searchinputEl.addEventListener('blur', function(){
    searchEl.classList.remove('focused');
    searchinputEl.setAttribute('placeholder', '');
});

const badgeEl = document.querySelector('header .badges');

window.addEventListener('scroll', _.throttle(function() {
    console.log(window.scrollY);
    if (window.scrollY > 500){
        // 배지 숨기기 
        // badgeEl.style.display = 'none' ;
        // gsap.to(요소, 지속시간, 옵션);
        gsap.to(badgeEl, .6, {
            opacity : 0 , 
            display : 'none'
        });
    } else {
        // 배지 보이기
        // badgeEl.style.display = 'block';
        gsap.to(badgeEl, .6, {
            opacity :1 ,
            display : 'none'
        });
    }
}, 300));

// _.throttle(함수, 시간)
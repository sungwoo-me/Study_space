// HTML 요소 1개 검색/ 찾기
const boxEl = document.querySelector('.box') ;

// HTML 요소에 적용할 수 있는 메소드 ! 
boxEl.addEventListener();

// 인수를 추가가능 
boxEl.addEventListener(1,2);

// 1 - 이벤트(Event, 상황) 
boxEl.addEventListener('click', 2)

// 2 - 핸들러
boxEl.addEventListener('click', function () {
    console.log('Click');
});


console.log(boxEl);
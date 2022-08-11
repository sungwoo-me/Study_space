/*
    데이터 종류

        String      : 문자데이터 (따음표로 묶여있따.)
            let myName = "HEROPY" ;

        Number      : 숫자데이터 
            let n umber = 123 ;

        Boolean     : 불린 데이터 ture, false 
            let checked = ture ; 

        Undefined   : 값이 할당되지 않은 상태 
            let undef ; 

        Null        : 어떤 값이 의도적으로 비어있음을 의미합니다.
            let empty = null ;

        Object      : 여러 데이터를 Key:value 형태로 저장합니다. { }
            let user = { 
            Key : Value
            name : 'HEROPY',
            age: 85, 
            isValid: true 
            } ;

        Array       : 여러 데이터를 순차적으로 저장합니다. [] 
            let fruits = ['Apple', 'banana', 'Cherry'] ; 

 
*/

let myName = "SUNGWOO"; 
let email = 'awhtjddn1@naver.com' ;
let hello = ` Hello ${123} ?! ` ;

let user = {
    name : 'Sungwoo',
    age : 85
}
// 이렇게 보관하기 위해서는 `이거를 꼭 써야함 ' 랑 다른거임 

console.log(myName);
console.log(email); 
console.log(hello); 
console.log(user.age) ;
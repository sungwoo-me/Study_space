/*
    함수        : 특정 동작을 수행하는 일부 코드의 집합(부분)
        함수 선언
        fnnction fun1() {
            실행 코드
            console.log(1234);
        }    

        함수 호출 
        func1() ;
    
        함수 선언
        fnnction fun2() {
            반환 코드
            return 123; 
        }    

        함수 호출 
        let a = func1() ;
        console.log(a);


    객체 데이터 
        const heropy  = {
            name : 'HEROPY',
            age : 85 ; 
            // 메소드(Method)
            getName: function() {
                return this.name; 
            }
        };

        const hisName = heropy.getname();
        console.log(hisName); // Heropy
        //혹은
        console.log(heropy.getName()); 
*/
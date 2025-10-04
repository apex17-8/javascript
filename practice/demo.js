//tool yellow, blogs--someone already solved it.
//motivation

//function templates
/*function greet(name = 'Apex',greeting = 'hello'){
    return ${greeting} , ${name}

}
console.log(greet)

//rest parameter
function sum(...numbers){
    return numbers.reduce(total,num) => total + num,0)
}
console.log(sum(1,2,3,4,5))



//spread operator
const arr1 = [1,2,3]
const arr2 = [4,5,6]
const combined = [...arr1,...arr2]
console.log(combined)

//const user=id=1,email,contact,location
//const name ="John Doe " -> const{name,email,contact,location}


*/
//destructuring assignment
/*const[a,b,...rest]=[1,2,3,4,5]
console.log(a,b,rest)

const [header,...tail]=[1,2,3,4,5,6];
console.log(header,tail)*/
//

//objecy destructuring
const user ={
    name:"John evangelist",
    age:30,
    email:'john@gmail.com',
    contact:'1234567890'
}
const {name,age,email,contact}=user
console.log(name,age,email,contact)

//object inside an object in an array
const users=[
    {id:1,name:'John',address:{city:'New York',zip:'10001'}},   
    {id:2,name:'Jane',address:{city:'Los Angeles',zip:'90001'}}
]
users.forEach(({id,name,address:{city,zip}})=>{
    console.log(id,name,city,zip)
})

//array inside an object
const data={
    title:'Sample Data',    
    items:[1,2,3,4,5]
}
const {title,items:[first,...others]}=data
console.log(title,first,others)

//modules
//import/export

//import from named export

//aliasing

//call function from another file

//classes
class Person {
    constructor(name, age) {
        this.name = name;
        this.age = age;
    }
}

//inheritance

//arrow functions
//traditional function
function add(a,b){
    return a+b
}
console.log(add(2,3))

//arrow function
//single parameter-no need of parenthesis
const square = x => x*x
console.log(square(4))
//multiple parameters-need of parenthesis
const sum=(a,b) => a+b
console.log(sum(5,7))

//promises and async/await
//promise
const myPromise = new Promise((resolve,reject) => {
    const success=true;
    setTimeout(() => {
        if(success){
            resolve('operation successful')
        }else{
            reject('operation failed')
        }   
        },2000)
})
//consuming the promise
myPromise.then((result) => {
    console.log(result)
}).catch((error) => {
    console.log(error)
})
//fetching data
function fetchUser(user_id){
    return new Promise((resolve,reject) => {
        setTimeout(() => {
            if(user_id===10){
                resolve({name:'John',age:30})
            }else{
                reject(new Error('User not found'))
            }   
            }
            ,1000)
    })
}

//promise error handling
fetchUser(10).then((user) => {
    console.log(user)
}).catch((error) => {
    console.log(error)
})

//async function
//async function to catch errors
async function getUser(){
 try{
    const user = await fetchUser(1)
    console.log(user)
 }catch(error){
    console.log(error)
 }finally{
    console.log('done')
 }
}






//lexical this
const obj={
    value:10,
    traditionalFunc:function(){
        console.log(this.value)
    },
    arrowFunc:() => {
        console.log(this.value)
    }
}



//static methods
//getters and setters
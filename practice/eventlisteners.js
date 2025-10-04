//document object model(DOM)
//event listeners
//--get elements by class
//get elements by tag
// modify DOM with events eg mouse events, form events, focus events,keyboard events
//selecting elements:by id, class, tag, query selector, query selector all
//create element, remove element, replace element,manipulate element

//events: click, dblclick, mouseover, mouseout, mouseenter, mouseleave, mousemove
//keyboard events: keydown, keyup, keypress
//form events: submit, change, focus, blur
//window events: load, resize, scroll, unload
//apphend child, insert before, remove child, replace child

//onclick button function
function changeContent() {
    document.getElementById("demo").innerHTML = "Hello World!";
}

//onclick button function
function clickedbutton() {
    document.getElementById("demo").innerHTML = "Hello World!";
}

//event listener
document.getElementById("demo").addEventListener("click", changeContent);

//event listener
document.getElementById("demo").addEventListener("click", () => {
    document.getElementById("demo").innerHTML = "Hello World!";
});
//mouse event
document.getElementById("demo").addEventListener("mouseover", () => {
    document.getElementById("demo").innerHTML = "Hello World!";
});
const mouseEvent=document.querySelector("#demo");
mouseEvent.addEventListener("mouseout", () => {
    document.getElementById("demo").innerHTML = "Hello World!";
});
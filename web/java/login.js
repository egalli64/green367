document.getElementById("button-enter-submit").addEventListener('submit',(enter)=>{
let username=document.getElementById("azname").value;
let password=document.getElementById("carica").value;
if(username=="green" && password=="Green12345"){
    document.getElementById("form").submit();
    window.location.replace("index.html");
    document.getElementById("button-login").setAttribute("hidden",true);
    document.getElementById("button-registrati").setAttribute("hidden",true);
}});
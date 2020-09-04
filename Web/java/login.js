document.getElementById('form').onsubmit = () => {
    if (document.getElementById('azname').value !== 'green') {
    return false;
    }
    else if (document.getElementById('carica').value !== 'green') {
        return false;
        }
        else getElementById('button-id').setAttribute("href","../index.html");
        // window.location.href=  "../index.html";
        return  true;
    };


// // Constructor?
//    function User (uname,pword){
//        this.username: uname,
//        this.password: pword
//    } 
// //new user
//    let u= new User(document.getElementById('username').value, document.getElementById('password').value);
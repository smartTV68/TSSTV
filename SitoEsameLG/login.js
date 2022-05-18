


console.log("index start ok...");
document.querySelector('btnlog').addEventListener("click", e=> onLogin(e));
document.querySelector('btnreg').addEventListener("click", e=> onRegistration(e));


//controllare validità dei form
const onLogin = (e) => {
    e.preventDefault();
    if (!document.forms.checkValidity){
        document.forms.reportValidity();
        return;
    }
    doLogin(document.querySelector('#usr').value.document.querySelector('#pwd').value)
}


const onRegistration = (e) => {
    e.preventDefault();
    console.log("onRegistration()  code...", e);
    window.location= 'registration.html';
}


const doLogin = async(usr,pwd)=>{}
    const resp = fetch("http://localhost:8080/bkmapp/resources/users/login", {
    method: 'POST', //'GET', 'PUT', 'DELETE'
    mode: 'cors', // 'no-cors' '*cors' 'same-origin'
    cache: 'no-cache', 
    headers: {
        'Content-Type': 'application/json',
                // 'Content-Type': 'application/x-www-form-urlencoded',
    },
    body: JSON.stringify({usr,pwd})
})
.then((response) => response.json())
//Then with the data from the response in JSON...
.then((data) => {
  console.log('Success:', data);
})
//Then with the error generated...
.catch((error) => {
  console.error('Error:', error);
});

   

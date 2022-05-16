import Router from "./router"
export default class LoginView extends HTMLElement{
    constructor(){
        super();
        this.root = this.attachShadow({mode:'open'});
    }

connectedCallback(){
    console.log("LoginView connectedCallback()....");
    this.root.innerHTML = this.render();
    const cmdLogin = this.root.querySelector("button");
    cmdLogin.addEventListener("click", e=> this.onlogin(e));
}

render(){
    return` 
    <h1> BkmLogin web component</h1>
    <input type="text" id="usr" name="usr">
        <input type="password" id="pwd" name="pwd">
        <button>invia</button>

    `
}
onlogin(e){
    e.preventDefault();
    console.log("onlogin....")
    Router.go("#home");
}

}

customElements.define('bkm-login', LoginView);
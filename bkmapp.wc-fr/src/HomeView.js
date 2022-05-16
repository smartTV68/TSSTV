export default class HomeView extends HTMLElement {
    constructor(){
        super();
        this.root = this.attachShadow({mode:'open'});
    }

    connectedCallback() {
        this.root.innerHTML = 
        <h1> Home View</h1>
    }
}

customElements.define("bkm-home", HomeView);
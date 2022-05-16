const config ={
rootId= 'app',
routes: [



{
    'hash': '#home',
    'component': 'HomeView'
},
{
    'hash': '#login',
    'component': 'LoginView'

},

]

  }
  class Router {
      constructor(){
          this.config= config;
      }

go(path){
    const {component} = this.config.routes.find (el => el.hash==path);
    if(component){
        console.log("route trovato: " + component);
    }

}

  }

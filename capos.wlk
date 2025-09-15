/*const conjVacio = #{} //ejemplo de conjuntos y listas vacias
const listaVacia = []*/
object rolando {
    /* ya no se utiliza porque con el metodo size() puedo hacerlo, var cantDeArtefactos = 0 // ¿necesito verlo? voy a settearlo? si
    
    method cantDeArtefactos(_cantDeArtefactos) {
      cantDeArtefactos = _cantDeArtefactos
    }*/ // lo hare property a artefactos porque necesito usarlo, ya que lo setteo y a su vez debo poder verlo
    const property artefactos = #{} // por ahora artefactos sera un cpnjunto, porque los elementos no deberian repetirse y serian unicos
    var property capacidadDeArtefactos = 2 // como con ella voy a trabajar, necesito verla
    var casa = castilloDePiedra // ¿es necesario tener un atributo y no pasarlo como parametro? osea el hogar siempre sera el mismo?
    
    method recolectarArtefactos(_artefactos) { //
        if(artefactos.size() < capacidadDeArtefactos){
            artefactos.add(_artefactos)
        }
    }
    method tieneArtefacto(_artefacto) { 
        //este metodo deberia decir si en el conjunto artefactos se encuentra el artefacto 
        return artefactos.contains(_artefacto) // revisar la documentacion de wollok
    }
    method casa(){
        return casa // como por ahora rolando no cambia de casa setter innecesario
    } 
    method llegarACasaYDejarArtefactos(){
        casa.almacen().addAll(artefactos) //forEach({casa => casa.almacen(). })
        artefactos.removeAll(artefactos)//artefactos.removeAll(self.artefactos())
    }

    method verObjetosAlmacenadosYArtefactosEnLaMochila(){ //poseciones
        return artefactos + casa.almacen() // no se puede hacer union porque retorna un nuevo set sin embargo modifica el otro
    }//el + de por si crea una nueva coleccion 
//este metodo es de prueba para llegar
    method agregarArtefactoAlAlmacen(artefacto) {
        casa.almacen().add(artefacto)
        self.artefactos().remove(artefacto)
    } //este metodo deberia ester en rolando
    //-------------------------------------
}
object castilloDePiedra {
  const property almacen = #{}//¿Por que deberia ser conjunto? resulto ser que por el dominio, el objeto de este dominio seria unico

  /*method almacen(){ se agrega property porque tambien tengo que setearla
    return almacen
  }  */
}
object espadaDelDestino {
  
}
object libroDeHechizos {
  
}
object collarDivino {
  
}
object armaduraDeAceroValyrio {
  
}
//link de material de lectura https://www.wollok.org/documentation/language/
// self.mochila() + castilloDePiedra.almacen()
//operdador sobrecargado +, 
//es conmutativo,

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
        artefactos.contains(_artefacto) // revisar la documentacion de wollok
    }
    method casa(){
        return casa // como por ahora rolando no cambia de casa setter innecesario
    } 
    method llegarACasaYDejarArtefactos(){
        casa.almacen().addAll(self.artefactos()) //forEach({casa => casa.almacen(). })
        artefactos.removeAll(self.artefactos())
    }

    method agregarArtefactoAlAlmacen(artefacto) {
        casa.add(artefacto)
        self.artefactos().remove(artefacto)
    } //este metodo deberia ester en rolando
}
object castilloDePiedra {
  const almacen = []

  method almacen(){
    return almacen
  }  
}
object espadaDelDestino {
  
}
object libroDeHechizos {
  
}
object collarDivino {
  
}
object armaduraDeAceroValyrio {
  
}

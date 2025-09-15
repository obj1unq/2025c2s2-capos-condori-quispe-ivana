*const conjVacio = #{} //ejemplo de conjuntos y listas vacias
const listaVacia = []*/
object rolando {
    /* ya no se utiliza porque con el metodo size() puedo hacerlo, var cantDeArtefactos = 0 // ¿necesito verlo? voy a settearlo? si
    
    method cantDeArtefactos(_cantDeArtefactos) {
      cantDeArtefactos = _cantDeArtefactos
    }*/ // lo hare property a artefactos porque necesito usarlo, ya que lo setteo y a su vez debo poder verlo
    const property artefactos = #{} // por ahora artefactos sera un cpnjunto, porque los elementos no deberian repetirse y serian unicos
    var property capacidadDeArtefactos = 2 // como con ella voy a trabajar, necesito verla
    method recolectarArtefactos(_artefactos) { //
        if(artefactos.size() < capacidadDeArtefactos){
            artefactos.add(_artefactos)
        }
    }
    method tieneArtefacto(_artefacto) { 
        //este metodo deberia decir si en el conjunto artefactos se encuentra el artefacto 
        artefactos.contains(_artefacto) // revisar la documentacion de wollok
    }
    
}
object castilloDePiedra {
  var 
}
object espadaDelDestino {
  
}
object libroDeHechizos {
  
}
object collarDivino {
  
}
object armaduraDeAceroValyrio {
  
}

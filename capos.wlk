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
    const property historialDeArtefactos = [] 
    var poder = 0//cantidadDePoder() //valorBase()
    var valorBase = 0 


    method valorBase(_valorBase){
        valorBase = _valorBase
    }  
    method recolectarArtefactos(_artefactos) { //
        historialDeArtefactos.add(_artefactos)
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

    method posesiones(){ //verObjetosAlmacenadosYArtefactosEnLaMochila 
        return artefactos + casa.almacen() // no se puede hacer union porque retorna un nuevo set sin embargo modifica el otro
    }//el + de por si crea una nueva coleccion 
//este metodo es de prueba para llegar

    
    method agregarArtefactoAlAlmacen(artefacto) {
        casa.almacen().add(artefacto)
        artefactos.remove(artefacto)
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

  method poderDeAtaque(personaje) { // usando personaje, como polimorfico para que cada personaje lo la llame y lo entienda
    if(personaje.valorBase() == 1){ 
        return personaje.valorBase()
    }
    else{
        return 0.50 * personaje.valorBase() // 50%
    }
  }
}
object libroDeHechizos {
  
}
object collarDivino {
  method poderDeAtaque(personaje) {
   if() 
  }
}
object armaduraDeAceroValyrio {
  
}
//link de material de lectura https://www.wollok.org/documentation/language/
// self.mochila() + castilloDePiedra.almacen()
//operdador sobrecargado +, 
//es conmutativo,

/*
Clase 17/09/25

Bloque = 
const artefacto = espadaDelDestino
const miBloque = { accion/consulta. lo que queramos }
ejemplo de uso
const poderDeArtefacto = {artefacto.poder()} usar el poder del artefacto

lo que se usa en el bloque debe ser local, no se puede llamar algo fuera de donde se encuentra declarado el bloque

para llamar parametros se declara de la siguiente forma

const poderDeArtefacto = {artefacto => artefacto.poder()}

luego lo llamamos
const = poderDeArtefacto.apply(espada)




Ejemplo 2
const artefactos
method poderArtefactos(){
    const miTransformer = {art => art.poder()}
    return artefactos.sum(miTransformer)
aca puedo pasar varias cosas podes usar constantes y luego llamarlos o ponerlas directamente a los parentesis

artefactos.any({art => art.poder() > 1000}) esto me va filtrar

lo mas normal es llamar al bloque directamente
}
 method metodoDePrueba(valor){
    artefactos.any({art => art.poder() > valor}) esto me va filtrar
 }

*/

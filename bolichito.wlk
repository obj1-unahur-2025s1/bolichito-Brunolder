import personas.*
import objetos.*

object bolchito {
  var objetoEnVidriera = pelota
  var objetoEnMostrador = remera

  method objetoEnMostrador(objetoAPoner){
    objetoEnMostrador = objetoAPoner
  }

  method objetoEnVidriera(objetoAPoner) {
    objetoEnVidriera = objetoAPoner
  }

  method esMonocormatico() {
    return objetoEnMostrador.color() == objetoEnVidriera.color()
  }

  method estaEquilibrado(){
    return objetoEnMostrador.peso() > objetoEnVidriera.peso() 
  }

method tieneAlgoDeColor(unColor) {
  return objetoEnMostrador.color() == unColor || objetoEnVidriera.color() == unColor
}

method puedeMejorar() {
    return not self.estaEquilibrado() ||
    self.esMonocormatico()
}

method puedeOfrecerleAlgo(unaPersona) {
  return unaPersona.leGusta(objetoEnMostrador) || 
  unaPersona.leGusta(objetoEnVidriera)
}

method intercambiarObjetos() {
  const aux = objetoEnMostrador
  objetoEnMostrador = objetoEnVidriera
  objetoEnVidriera = aux
}

}

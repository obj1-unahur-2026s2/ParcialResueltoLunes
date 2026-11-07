//Herramientas

class Herramienta {
  const duenio = comunidad
  var usoAcumulado = 0

  method indiceDeControl()
  method nivelDeToxicidad() = duenio.toxicidadExtra()
  method esDeControl() = self.indiceDeControl() > 0
  method registrarUso(horas) { usoAcumulado += horas }
}

class EspacioDisciplinario inherits Herramienta {
  const nivelExigenciaFisica
  const cantidadDePersonasDentro
  
  method cumpleNormasDisciplinarias() = cantidadDePersonasDentro >= 100

  override method indiceDeControl() = nivelExigenciaFisica + duenio.plusControl() + if (self.cumpleNormasDisciplinarias()) 25 else 0
}

class DispositivoDigital inherits Herramienta {
  var notificacionesDiarias
  const toxicidadBase

  override method nivelDeToxicidad() = super() + toxicidadBase
  override method indiceDeControl() = 10.max(notificacionesDiarias * self.nivelDeToxicidad())

  override method registrarUso(horas) {
    super(horas)
    notificacionesDiarias = 50.min(notificacionesDiarias + horas * toxicidadBase)
  }
}

class HerramientaLibre inherits Herramienta {
  override method indiceDeControl() = duenio.plusControl()
  override method registrarUso(horas) { }
  
  method duenio() = duenio
  method setearUso(cantidad) { usoAcumulado = cantidad }
}

//Red

object redComunitaria {
  const herramientas = []

  method registrarHerramientas(coleccionDeHerramientas) { herramientas.addAll(coleccionDeHerramientas) }

  method darDeBajaHerramientas(coleccionDeHerramientas) { herramientas.removeAll(coleccionDeHerramientas) }

  method herramientasTotalitarias()  = herramientas.filter({ h => h.indiceDeControl() > 50 })

  method cantidadDeToxicas() = herramientas.count({ h => h.nivelDeToxicidad() > 70 })

  method redCompletamenteAlienada() = herramientas.all({ h => h.esDeControl() })

  method nivelDePeligrosidadDe(herramienta) = herramienta.nivelDeToxicidad() + herramienta.indiceDeControl()

  method algunaEsSana() = herramientas.any({ h => self.nivelDePeligrosidadDe(h) <= 0 })

  method listaDePeligrosidades() = herramientas.map({ h => self.nivelDePeligrosidadDe(h) })

  method nivelMaximoDePeligrosidad() = self.listaDePeligrosidades().max()

  method registrarUsoParaTodas(horas) { herramientas.forEach({ h => h.registrarUso(horas) })}
}

//Dueños

object comunidad {
  method plusControl() = 0
  method toxicidadExtra() = 0
}

object marcosZucaritas {
  method plusControl() = 30
  method toxicidadExtra() = 20
}

object samAiMan {
  method plusControl() = 40
  method toxicidadExtra() = 30
}

object elonSocialistaNacional {
  method plusControl() = 20
  method toxicidadExtra() = 15
}

object donaldoPDF {
  method plusControl() = 25
  method toxicidadExtra() = 50
}

object benjaNetAndYahoo {
  method plusControl() = 50
  method toxicidadExtra() = 40
}
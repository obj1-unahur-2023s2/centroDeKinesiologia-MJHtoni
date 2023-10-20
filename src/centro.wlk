object centro {
	const aparatos = []
	const pacientes = #{}
	
	method agregarPaciente(listaPacientes) {pacientes.add(listaPacientes)}
	method agregarAparatos(listaAparatos) {aparatos.addAll(listaAparatos)}
	
	method coloresDeAparatos() = aparatos.map({a=>a.color()}).asSet()
	method pacientesMenoresDe8Anios() = pacientes.filter({p=>p.edad()<8})
	method cantidadPacientesQueNoPuedenHacerRutina() = pacientes.count({p=>!p.puedeRealizarRutina()})
	method estaOptimo() = aparatos.all ({a=>!a.necesitaMantenimiento()})
	method estaComplicado() = self.aparatosParaMantenimiento().size() >= aparatos.size()/2
	method aparatosParaMantenimiento() = aparatos.filter({a=>a.necesitaMantenimiento()})
	method visitaTecnico(){
		self.aparatosParaMantenimiento().forEach({a=>a.realizarMantenimiento()})
	}
}

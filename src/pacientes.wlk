class Pacientes {
	const edad
	var fortalezaMuscular
	var dolor
	const aparatos = []
	
	method agregarAparato(unAparato) = aparatos.add(unAparato)
	method usarAparato(unAparato) = unAparato.uso()
}

class Magneto inherits Pacientes{
	method uso() {
		dolor -= dolor*0.1
	}
}

class Bicicleta inherits Pacientes{
	method uso() {
		if(edad > 8) {
			dolor -= 4
			fortalezaMuscular += 3
		}
	}
}

class Minitramp inherits Pacientes {
	method uso() {
		if(dolor < 20)
		fortalezaMuscular += fortalezaMuscular*0.1
	}
}
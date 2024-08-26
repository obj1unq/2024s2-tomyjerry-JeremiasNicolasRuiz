object tom {
	var energia = 50
	 
	method comer(raton) {
		energia = energia + 12 + raton.peso()
	}
	
	method correr(distancia){
		energia = energia - self.energiaGastadaEnRecorrer(distancia)
	}
	
	method velocidadMaxima()  {
		return 5 + energia / 10
	}

  method energiaGastadaEnRecorrer(distancia) {
    return distancia / 2
  }

  method puedeComer(distancia) {
    return energia > self.energiaGastadaEnRecorrer(distancia)
  }

  method quiereComer(raton, distancia) {
    return self.puedeComer(distancia) && self.energiaGastadaEnRecorrer(distancia) < raton.peso()
  }
	
}

object jerry {
	var edad = 2

  method crecer() {
    edad = edad + 1
  }

  method peso() {
    return edad * 20
  }
}

object nibbles {
	method peso() {
    return 35
  }
}

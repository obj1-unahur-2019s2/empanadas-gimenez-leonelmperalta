object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var deuda = 0
	var dinero = 0
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method totalDeuda() { return deuda }
	method totalDinero() { return dinero}
	method totalCobrado() {}
	method gastar(cantidad){
		if (cantidad <= dinero) {
			dinero -= cantidad
		}
		else
		{
			var adeuda = cantidad - self.totalDinero()
			dinero -= self.totalDinero()
			deuda += adeuda
		}
	
	}
	method cobrarSueldo(){
		dinero = self.sueldo()
		var aDescontar = deuda.min(dinero)
		deuda -= aDescontar
		dinero -= aDescontar
	}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var totalCobrado = 0
	var dinero = 0
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	method sueldo() { return cantidadEmpanadasVendidas * montoPorEmpanada }
	method cobrarSueldo()
	{
		dinero += self.sueldo()
		totalCobrado += self.sueldo()
	}
	method totalCobrado() { return totalCobrado }
	method totalDinero() { return dinero}
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}

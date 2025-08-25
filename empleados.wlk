object gimenez {
    var fondoParaSueldos = 300000

    method fondoActual() = fondoParaSueldos

    method pagarSueldo(empleado) {
        fondoParaSueldos -= empleado.sueldoACobrar()
        empleado.cobrar()
    }
}

object galvan {
    var sueldo = 15000
    var totalCobrado = 0

    method sueldoACobrar() = sueldo

    method cobrar() {
        totalCobrado += sueldo
    }

    method cambiarSueldo(nuevoSueldo) {
        sueldo = nuevoSueldo
    }

}

object baigorria {
    var sueldoPorEmpanada = 15
    var empanadasVendidas = 0
    var totalCobrado = 0

    method sueldoACobrar() = sueldoPorEmpanada * empanadasVendidas

    method totalCobrado() = totalCobrado

    method registrarVentas(cantidad) {
        empanadasVendidas += cantidad
    }

    method cobrar() {
        totalCobrado += self.sueldoACobrar()
        empanadasVendidas = 0
    }

}
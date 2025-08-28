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
    var dinero = 0
    var deuda = 0

    method sueldoACobrar() = sueldo

    method dinero() = dinero

    method deuda() = deuda

    method cobrar() {
        dinero += sueldo
        self.pagarDeudas()
    }

    method cambiarSueldo(nuevoSueldo) {
        sueldo = nuevoSueldo
    }

    method gastar(cantidadAGastar) {
        if (dinero >= cantidadAGastar) {
            dinero -= cantidadAGastar
        } 
        else {
            self.aumentarDeuda(cantidadAGastar - dinero)
            dinero = 0
        }
    }

    method aumentarDeuda(cantidadAAumentar) {
        deuda += cantidadAAumentar
    }

    method pagarDeudas() {
        if (dinero >= deuda) {
            dinero -= deuda
            deuda = 0
        }
        else {
            deuda -= dinero
            dinero = 0
        }
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
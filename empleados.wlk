object gimenez {
    var fondoParaSueldos = 300000

    method fondoActual() = fondoParaSueldos

    method pagarSueldo(empleado) {
        fondoParaSueldos -= empleado.sueldoACobrar()
    }
}

object galvan {
    var sueldo = 15000

    method sueldoACobrar() = sueldo

    method cambiarSueldo(nuevoSueldo) {
        sueldo = nuevoSueldo
    }

}

object baigorria {
    var sueldoPorEmpanada = 15
    var empanadasVendidas = 0

    method sueldoACobrar() = sueldoPorEmpanada * empanadasVendidas

    method registrarVentas(cantidad) {
        empanadasVendidas += cantidad
    }

}
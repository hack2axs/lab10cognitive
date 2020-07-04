var mongoose = require('mongoose');
var Schema = mongoose.Schema;

var EmpleadoSchema = new Schema({
    nombre: {type: String, required: true, max:20},
    email: {type: String, required: true},
    dni: {type: String, required: true, max:8},
    sexo: {type: String, required: true, max:1},
    telefono: {type: String, required: true, max:9},
    created_at: {type: Date, default: Date.now}
});

module.exports = mongoose.model('Empleado',EmpleadoSchema);
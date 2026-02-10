const cds = require('@sap/cds')

module.exports = cds.service.impl(function () {
  this.on('CalculoConsumo', (req) => {
    const { kmPrimeiro, kmSegundo, litros } = req.data
    if ([kmPrimeiro, kmSegundo, litros].some(v => typeof v !== 'number')) {
      req.reject(400, 'Parâmetros numéricos são obrigatórios')
    }
    if (litros === 0) req.reject(400, 'Litros não pode ser zero')
    const consumo = (kmSegundo - kmPrimeiro) / litros
    return `O seu consumo foi de: ${consumo.toFixed(2)} KM/L`
  })
})


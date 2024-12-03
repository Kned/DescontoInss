class CalculaDescontoService
  def self.calcula_desconto(salario)
    raise StandardError.new "Salario type invalid" unless salario.is_a? Numeric
    faixas = [
    { min: 0.0, max: 1045.0, tax: 0.075 },
    { min: 1045.1, max: 2089.60, tax: 0.09 },
    { min: 2089.61, max: 3134.40, tax: 0.12 },
    { min: 3134.41, max: 6101.06, tax: 0.14 }
  ]

  total_recolher = 0

  faixas.each do |faixa|
    max = faixa[:max] <= salario ? faixa[:max] : salario
    total_recolher += (max - faixa[:min]) * faixa[:tax]
    break if max == salario
  end
  total_recolher.floor(2)
  end
end

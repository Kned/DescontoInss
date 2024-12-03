class CalculaDescontoService
  def self.calcula_desconto salario
    faixas = [
    {min: 0.0, max: 1045.0, tax: 7.5},
    {min: 1045.1, max: 2089.60, tax: 9.0},
    {min: 2089.61, max: 3134.40, tax: 12.0},
    {min: 3134.41, max: 6101.06, tax: 14.0}
  ]

  total_recolher = 0
  faixas.each do |faixa|
    max = faixa[:max] <= salario ? faixa[:max] : salario
    total_recolher += (max - faixa[:min]) * (faixa[:tax]/100)
    break if max == salario
  end
  total_recolher.round(2)
  end
end
class UpdateSalarioJob
  include Sidekiq::Job

  def perform(proponente_id, salario)
    proponente = Proponente.find(proponente_id)
    proponente.desconto = CalculaDescontoService.calcula_desconto(salario)
    proponente.salario = salario
    proponente.save
  end
end

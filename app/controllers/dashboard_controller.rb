class DashboardController < ApplicationController
  def index
    @chart = {
      faixa_1: Proponente.where(salario: ...1045).count,
      faixa_2: Proponente.where(salario: 1045.01..2089.6).count,
      faixa_3: Proponente.where(salario: 2089.61..3134.4).count,
      faixa_4: Proponente.where(salario: 3134.41..6101.06).count
    }
  end
end

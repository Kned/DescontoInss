class DescontoController < ActionController::API
  def calcula_desconto
    render json: CalculaDescontoService.calcula_desconto(desconto_params[:salario].to_f)
  end
  private

  def desconto_params
    params.permit(:salario)
  end
end

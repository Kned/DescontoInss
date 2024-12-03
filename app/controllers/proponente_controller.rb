class ProponenteController < ApplicationController
  before_action :set_proponente, except: %i[new create index]

  def show; end
  def edit; end
  def edit_salario; end

  def index
    @proponentes = Proponente.all.page(params[:page]||0).per(5)
  end

  def update_salario
    UpdateSalarioJob.perform_async(@proponente.id, proponente_params[:salario].to_f)
    flash[:notice] = "Proponente será atualizado"
      redirect_to proponente_path(id: @proponente.id)
  end
  def update
    @proponente.assign_attributes(proponente_params.except(:address))
    @proponente.address.assign_attributes(proponente_params[:address])
    if @proponente.save!
      flash[:notice] = "Proponente atualizado"
      redirect_to proponente_path(id: @proponente.id)
    else
      flash[:alert] = "Erro ao atualizar proponente"
    end
  end
  def new
    @proponente = Proponente.new
    @proponente.build_address
  end

  def create
    @proponente = Proponente.create(proponente_params.except(:address))
    @proponente.build_address(proponente_params[:address])
    if @proponente.save!
      flash[:notice] = "Proponente registrado"
      redirect_to proponente_path(id: @proponente.id)
    else
      flash[:alert] = "Erro ao registrar proponente"
    end
  end

  def destroy
    if @proponente.destroy!
      flash[:notice] = "Proponente removido"
      redirect_to index_proponente_path
    end
  rescue
    flash[:alert] = "Proponente não removido"
  end

  private

  def set_proponente
    @proponente = Proponente.find(params[:id])
  end

  def proponente_params
    params.require(:proponente).permit(:nome,
                                       :nascimento,
                                       :telefone_pessoal,
                                       :telefone_referencia,
                                       :salario,
                                       :desconto,
                                       :cpf,
                                       address: {})
  end
end

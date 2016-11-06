class PaymentsController < ApplicationController
  def create
    @debt = Debt.find params[:debt_id]
    @payment = @debt.payments.build(payment_params)

    if @debt.save
      redirect_to debt_path(@debt), notice: 'Tu pago ha sido creado'
    else
      redirect_to debt_path(@debt), notice: @debt.errors.full_messages.join(', ')
    end
  end

  def destroy
    @debt = Debt.find params[:debt_id]

    if @debt.payments.find(params[:id]).destroy
      redirect_to debt_path(@debt), notice: 'Pago borrado'
    else
      redirect_to debt_path(@debt), notice: @debt.errors.full_messages.join(', ')
    end
  end

  private

  def payment_params
    params.require(:payment).permit(:amount)
  end
end

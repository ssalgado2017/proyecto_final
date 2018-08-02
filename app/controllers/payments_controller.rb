class PaymentsController < InheritedResources::Base
  before_action :set_payment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @payments = Payment.all
    @quotations = current_user.quotations

  end

  def show
  end

  def new
    @payment = Payment.new
    @quotations = current_user.quotations
  end


  private
    def set_payment
      @payment = Payment.find(params[:id])  
    end

    def payment_params
      params.require(:payment).permit(:OC, :coin, :rode, :iva, :quotation_id)
    end
end


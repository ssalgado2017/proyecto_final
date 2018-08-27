class PaymentsController < InheritedResources::Base
  before_action :set_payment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    #@payments = Payment.all
    #@payments = Payment.first
    @quotations = current_user.quotations
    @payments = Payment.where(quotation_id: @quotations.ids)

    #@payments = Payment.joins("INNER JOIN quotations ON posts.author_id = authors.id AND posts.published = 't'")

#Author.joins("INNER JOIN posts ON posts.author_id = authors.id AND posts.published = 't'")
    #@payments = Payment.find(params[:payment])
    #@payment = Payment.find(params[:quotation_id])    
    #@payments = current_user.payments
   

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

    def set_quotation
      @quotation = Quotation.find(params[:id])  
    end
end


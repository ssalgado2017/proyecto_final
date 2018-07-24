class PaymentsController < InheritedResources::Base

  private

    def payment_params
      params.require(:payment).permit(:OC, :coin, :rode, :iva, :quotation_id)
    end
end


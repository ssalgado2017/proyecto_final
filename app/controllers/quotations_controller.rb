class QuotationsController < InheritedResources::Base

  private

    def quotation_params
      params.require(:quotation).permit(:code_quotation, :title, :description, :state_id, :client_id)
    end
end


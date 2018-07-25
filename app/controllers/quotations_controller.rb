class QuotationsController < InheritedResources::Base
  before_action :set_quotation, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @quotations = Quotation.all
  #  @clients = current_user.clients
  end

  def show
  end

  def new
    @quotation = Quotation.new
    @states = State.all
    @clients = current_user.clients
    @client_quotations = @quotation.client_quotations.build
  end

   def edit
    @states = State.all
    @quote_products = @quotation.client_quotations
  end



 def create
 	@clients = Client.all
    @quotation = Quotation.new(quotation_params)	

    respond_to do |format|
      if @quotation.save
        format.html { redirect_to @quotation, notice: 'Quote was successfully created.' }
        format.json { render :show, status: :created, location: @quotation }
      else
        format.html { render :new }
        format.json { render json: @quotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotes/1
  # PATCH/PUT /quotes/1.json
  def update
    respond_to do |format|
      if @quotation.update(quotation_params)
        format.html { redirect_to @quotation, notice: 'Quote was successfully updated.' }
        format.json { render :show, status: :ok, location: @quotation }
      else
        format.html { render :edit }
        format.json { render json: @quotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quotes/1
  # DELETE /quotes/1.json
  def destroy
    @quote.destroy
    respond_to do |format|
      format.html { redirect_to quotes_url, notice: 'Quote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
    def set_quotation
      @quotation = Quotation.find(params[:id])
    end

    def set_client
      @client = current_user.clients
    end

#    def quotation_params
#      params.require(:quotation).permit(:code_quotation, :title, :description, :state_id, :client_id)
#    end


    def quotation_params
      params.require(:quotation).permit(:code_quotation, :title, :description, :state_id, :client_id, client_productions_attributes:
        [
          :client_id,
          :quotation_id,
          :_destroy
        ]
      )
    end
end



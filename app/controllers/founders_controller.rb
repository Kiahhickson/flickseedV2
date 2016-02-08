class FoundersController < ApplicationController
  before_action :set_founder, only: [:show, :edit, :update, :destroy]

  # GET /founders
  # GET /founders.json
  def index
    @founders = Founder.all
  end

  # GET /founders/1
  # GET /founders/1.json
  def show
  end

  # GET /founders/new
  def new
    @founder = Founder.new
  end

  # GET /founders/1/edit
  def edit
  end

  # POST /founders
  # POST /founders.json
  def create
    @founder = Founder.new(founder_params)

    respond_to do |format|
      if @founder.save
        format.html { redirect_to @founder, notice: 'Founder was successfully created.' }
        format.json { render :show, status: :created, location: @founder }
      else
        format.html { render :new }
        format.json { render json: @founder.errors, status: :unprocessable_entity }
      end
    end
  end

#   def create 
#   @founder = Founder.new(user_params) 
#   if @founder.save 
#     session[:founder_id] = @founder.id 
#     redirect_to '/' 
#   else 
#     redirect_to '/signup' 
#   end 
# end


  # PATCH/PUT /founders/1
  # PATCH/PUT /founders/1.json
  def update
    respond_to do |format|
      if @founder.update(founder_params)
        format.html { redirect_to @founder, notice: 'Founder was successfully updated.' }
        format.json { render :show, status: :ok, location: @founder }
      else
        format.html { render :edit }
        format.json { render json: @founder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /founders/1
  # DELETE /founders/1.json
  def destroy
    @founder.destroy
    respond_to do |format|
      format.html { redirect_to founders_url, notice: 'Founder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_founder
      @founder = Founder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def founder_params
      params.require(:founder).permit(:name, :user_id, :company_name, :email_address, :password_digest, :website, :profile_picture, :description, :industry, :capital_required, :equity_share, :video, :image_one, :image_two, :image_three, :image_four)
    end

end

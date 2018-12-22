class LearningusersController < ApplicationController
  before_action :set_learninguser, only: [:show, :edit, :update, :destroy]

  # GET /learningusers
  # GET /learningusers.json
  def index
    @learningusers = Learninguser.all
  end

  # GET /learningusers/1
  # GET /learningusers/1.json
  def show
  end

  # GET /learningusers/new
  def new
    @learninguser = Learninguser.new
  end

  # GET /learningusers/1/edit
  def edit
  end

  # POST /learningusers
  # POST /learningusers.json
  def create
    @learninguser = Learninguser.new(learninguser_params)
    @learninguser.save
    redirect_to complete_learningusers_path   
    #respond_to do |format|
     # if @learninguser.save
      #  redirect_to complete_learningusers_path

        #format.html { redirect_to @learninguser, notice: 'Learninguser was successfully created.' }
        #format.json { render :show, status: :created, location: @learninguser }
     # else
      #  format.html { render :new }
      #  format.json { render json: @learninguser.errors, status: :unprocessable_entity }
     # end
   # end
  end

  # PATCH/PUT /learningusers/1
  # PATCH/PUT /learningusers/1.json
  def update
    respond_to do |format|
      if @learninguser.update(learninguser_params)
        format.html { redirect_to @learninguser, notice: 'Learninguser was successfully updated.' }
        format.json { render :show, status: :ok, location: @learninguser }
      else
        format.html { render :edit }
        format.json { render json: @learninguser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /learningusers/1
  # DELETE /learningusers/1.json
  def destroy
    @learninguser.destroy
    respond_to do |format|
      format.html { redirect_to learningusers_url, notice: 'Learninguser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
 def download
  file_name="hack.txt"
  filepath = Rails.root.join('public',file_name)
  stat = File::stat(filepath)
  send_file(filepath, :filename => file_name, :length => stat.size)
 end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_learninguser
      @learninguser = Learninguser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def learninguser_params
      params.require(:learninguser).permit(:name)
    end
end

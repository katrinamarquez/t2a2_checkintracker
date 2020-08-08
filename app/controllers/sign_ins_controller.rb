class SignInsController < ApplicationController
  before_action :set_sign_in, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /sign_ins
  # GET /sign_ins.json
  def index
    @sign_ins = SignIn.all
  end

  # GET /sign_ins/1
  # GET /sign_ins/1.json
  def show
  end

  # GET /sign_ins/new
  def new
    @sign_in = current_user.sign_ins.build
    # Display restaurants that are logged onto the app to users
    @restaurants = Restaurant.all
  end

  # GET /sign_ins/1/edit
  def edit
  end

  # POST /sign_ins
  # POST /sign_ins.json
  def create
    @sign_in = current_user.sign_ins.build(sign_in_params)

    respond_to do |format|
      if @sign_in.save
        format.html { redirect_to @sign_in, notice: 'Sign in was successfully created.' }
        format.json { render :show, status: :created, location: @sign_in }
      else
        format.html { render :new }
        format.json { render json: @sign_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sign_ins/1
  # PATCH/PUT /sign_ins/1.json
  def update
    respond_to do |format|
      if @sign_in.update(sign_in_params)
        format.html { redirect_to @sign_in, notice: 'Sign in was successfully updated.' }
        format.json { render :show, status: :ok, location: @sign_in }
      else
        format.html { render :edit }
        format.json { render json: @sign_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sign_ins/1
  # DELETE /sign_ins/1.json
  def destroy
    @sign_in.destroy
    respond_to do |format|
      format.html { redirect_to sign_ins_url, notice: 'Sign in was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sign_in
      @sign_in = SignIn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sign_in_params
      params.require(:sign_in).permit(:date_in, :time_in, :in_comments)
    end
end

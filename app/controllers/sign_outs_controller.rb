class SignOutsController < ApplicationController
  before_action :set_sign_out, only: [:show, :edit, :update, :destroy]

  # GET /sign_outs
  # GET /sign_outs.json
  def index
    @sign_outs = SignOut.all
  end

  # GET /sign_outs/1
  # GET /sign_outs/1.json
  def show
  end

  # GET /sign_outs/new
  def new
    @sign_out = current_user.sign_outs.build
  end

  # GET /sign_outs/1/edit
  def edit
  end

  # POST /sign_outs
  # POST /sign_outs.json
  def create
    @sign_out = current_user.sign_outs.build(sign_out_params)

    respond_to do |format|
      if @sign_out.save
        format.html { redirect_to @sign_out, notice: 'Sign out was successfully created.' }
        format.json { render :show, status: :created, location: @sign_out }
      else
        format.html { render :new }
        format.json { render json: @sign_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sign_outs/1
  # PATCH/PUT /sign_outs/1.json
  def update
    respond_to do |format|
      if @sign_out.update(sign_out_params)
        format.html { redirect_to @sign_out, notice: 'Sign out was successfully updated.' }
        format.json { render :show, status: :ok, location: @sign_out }
      else
        format.html { render :edit }
        format.json { render json: @sign_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sign_outs/1
  # DELETE /sign_outs/1.json
  def destroy
    @sign_out.destroy
    respond_to do |format|
      format.html { redirect_to sign_outs_url, notice: 'Sign out was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sign_out
      @sign_out = SignOut.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sign_out_params
      params.require(:sign_out).permit(:date_out, :time_out, :out_comments)
    end
end

class PowerballPicksController < ApplicationController
  before_action :set_user, only: [:index, :show, :edit, :update, :destroy, :create, :new]
  before_action :set_powerball_pick, only: [:show, :edit, :update, :destroy]

  # GET /powerball_picks
  # GET /powerball_picks.json
  def index
    @powerball_picks = @user.powerball_picks.all
  end

  # GET /powerball_picks/1
  # GET /powerball_picks/1.json
  def show
  end

  # GET /powerball_picks/new
  def new
    @powerball_pick = @user.powerball_picks.create
  end

  # GET /powerball_picks/1/edit
  def edit
  end

  # POST /powerball_picks
  # POST /powerball_picks.json
  def create
    @powerball_pick = @user.powerball_picks.create(powerball_pick_params)

    respond_to do |format|
      if @powerball_pick.save
        format.html { redirect_to @powerball_pick, notice: 'Powerball pick was successfully created.' }
        format.json { render :show, status: :created, location: @powerball_pick }
      else
        format.html { render :new }
        format.json { render json: @powerball_pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /powerball_picks/1
  # PATCH/PUT /powerball_picks/1.json
  def update
    respond_to do |format|
      if @powerball_pick.update(powerball_pick_params)
        format.html { redirect_to [@user, @powerball_pick], notice: 'Powerball pick was successfully updated.' }
        format.json { render :show, status: :ok, location: @powerball_pick }
      else
        format.html { render :edit }
        format.json { render json: @powerball_pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /powerball_picks/1
  # DELETE /powerball_picks/1.json
  def destroy
    @powerball_pick.destroy
    respond_to do |format|
      format.html { redirect_to powerball_picks_url, notice: 'Powerball pick was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_user
      @user = User.find(params[:user_id])
      logger.debug("Found User in PowerballPicksController: #{@user} with #{@user.powerball_picks.length} picks")
    end 
    # Use callbacks to share common setup or constraints between actions.
    def set_powerball_pick
      @powerball_pick = @user.powerball_picks.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def powerball_pick_params
      params.require(:powerball_pick).permit(:user_id, :draw_on, :powerball, :wb1, :wb2, :wb3, :wb4, :wb5)
    end
end

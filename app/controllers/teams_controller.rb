class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  # GET /teams.json
  def index
    teams = Team.all
  
  Team.all.each do |id_number| 
  total_point = Game.where(team_id: (id_number))
  sum_total_point= total_point.sum(:game_point)
  
  add_game_point = Team.where(id: (id_number))
  add_game_point.update(team_point: sum_total_point)
  
  game_size = total_point.size
  add_game_size = Team.where(id: (id_number))
  add_game_size.update(games_play: game_size)

  best_time_from_games = total_point.minimum(:game_time)
  add_best_time = Team.where(id: (id_number))
  add_best_time.update(best_time: best_time_from_games)



end
#@teams = Team.order(team_point: :desc, best_time: :asc)
@line_race_teams = Team.where(team_category: "Line Race").order(team_group: :desc, team_point: :desc, best_time: :asc)
@open_sumo_teams = Team.where(team_category: "Sumo").order(team_group: :desc, team_point: :desc, best_time: :asc)


  end

  # GET /teams/1
  # GET /teams/1.json
  def show

  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit

  end

  # POST /teams
  # POST /teams.json
  def create

    @team = Team.new(team_params)

    respond_to do |format|
      if @team.save
        format.html { redirect_to @team, notice: 'Team was successfully created.' }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update

    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to @team, notice: 'Team was successfully updated.' }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy

    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url, notice: 'Team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:team_name, :team_school, :team_category, :team_point, :team_group)
    end
end

class PlayersController < ApplicationController

  def index
    # TODO
    #   - Add pagination
    #   - filter to reduce json size
    render json: Player.all
  end

  def show
    # TODO
    #   - Use serializer
    render json: player.as_json(
      except: [:created_at, :updated_at],
      methods: [:full_name]
    )
  end

  def create
    player = Player.new(player_params)
    if player.save!
      render json: player
    else
      render_model_errors_from(player)
    end
  end

  def update
    if player.update(player_params)
      render json: player
    else
      render_model_errors_from(player)
    end
  end

  # TODO just inactivate the player
  def destroy; end

  private

  def player_params
    params.require(:player).permit(
      :first_name,
      :last_name,
      :allowance
    )
  end

  def player
    @player ||= Player.find(params[:id])
  end
end

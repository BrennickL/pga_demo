class GamesController < ApplicationController

  # Must belong to a player
  def index
    # TODO
  end

  def create
    game = Game.new(tee_time: game_params[:tee_time])
    unless game.save!
      return render_model_errors_from(game)
    end

    players.each do |player|
      players_game = PlayersGame.new(
        player: player,
        game: game
      )

      unless players_game.save!
        return render_model_errors_from(players_game)
      end
    end

    render json: { game: game, players: game.players }
  end

  def game_players
    render json: game.players
  end

  def show
    render json: game.as_json(
      include: [:players]
    )
  end

  def update
    unless game.update!(tee_time: game_params[:tee_time])
      return render_model_errors_from(game)
    end

    if players.present?
      game.players.destroy_all
      players.each do |player|
        players_game = PlayersGame.new(
          player: player,
          game: game
        )

        unless players_game.save!
          return render_model_errors_from(players_game)
        end
      end
    end

    render json: { game: game, players: game.reload.players }
  end

  private

  def game_params
    @game_params ||= params.require(:game).permit(
      :tee_time,
      players: []
    )
  end

  def players
    @players ||= Player.where(id: game_params[:players])
  end

  def game
    @game ||= Game.find(params[:id])
  end
end

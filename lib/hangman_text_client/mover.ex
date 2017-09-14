defmodule HangmanTextClient.Mover do
  alias HangmanTextClient.State

  def move(game) do
    { updated_game, tally } = Hangman.make_move(game.game_service, game.guess)
    %State{ game | game_service: updated_game, tally: tally  }
  end
end

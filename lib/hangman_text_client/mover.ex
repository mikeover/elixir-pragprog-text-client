defmodule HangmanTextClient.Mover do
  alias HangmanTextClient.State

  def move(game) do
    tally = Hangman.make_move(game.game_service, game.guess)
    %State{ game | tally: tally  }
  end
end

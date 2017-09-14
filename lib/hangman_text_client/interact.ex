defmodule HangmanTextClient.Interact do
  alias HangmanTextClient.State

  def start() do
    Hangman.new_game()
    |> setup_state()
  end

  defp setup_state(game) do
    %State{
      game_service: game,
      tally: Hangman.tally(game),
    }
  end

  def play(state) do
    # state = interact(state)...
    play(state)
  end
end

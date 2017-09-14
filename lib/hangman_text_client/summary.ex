defmodule HangmanTextClient.Summary do

  def display(game = %{ tally: tally }) do
    IO.puts [
      "\n",
      "Word so far: #{Enum.join(tally.letters, " ")}\n",
      "Your guesses: #{Enum.join(tally.letters_used, " ")}\n",
      "Guesses left: #{tally.turns_left}\n",
    ]
    game
  end
end

defmodule HangmanTextClient.Prompter do
  alias HangmanTextClient.State

  def accept_move(game = %State{}) do
    IO.gets("Your guess: ")
    |> check_input(game)
  end

  defp check_input({:error, reason}, _) do
    IO.puts("Game ended: #{reason}")
    exit(:normal)
  end

  defp check_input(:eof, _) do
    IO.puts("Looks like you gave up...")
    exit(:normal)
  end

  defp check_input(input, game = %State{}) do
    input = String.trim(input)
    cond do
#      input == List.to_string(letters) ->
#        IO.puts "Congrats! You guessed the correct word: #{input}"
#        exit :normal
      input =~ ~r/\A[a-z]\z/ ->
        Map.put(game, :guess, input)
      true ->
        IO.puts "Please enter a single lowercase letter"
        Map.put(game, :guess, input)
    end
  end
end

defmodule HangmanTextClient.Mixfile do
  use Mix.Project

  def project do
    [
      app: :hangman_text_client,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      included_applications: [ :hangman ],
      extra_applications: [ :logger ],
    ]
  end

  defp deps do
    [
      { :hangman, git: "git://github.com/mikeover/elixir-pragprog-hangman.git" },
    ]
  end
end

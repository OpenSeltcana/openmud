defmodule Openmud.MixProject do
  use Mix.Project

  def project do
    [
      app: :openmud,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:logger, :universa]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:universa, git: "https://github.com/OpenSeltcana/universa.git"}
    ]
  end
end

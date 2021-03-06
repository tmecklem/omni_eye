defmodule Eye.MixProject do
  use Mix.Project

  def project do
    [
      app: :eye,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Eye.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cowboy, "~> 1.1.2"},
      {:picam, "~> 0.3.0"},
      {:plug, "~> 1.6.2"}
    ]
  end
end

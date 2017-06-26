defmodule OneflowEx.Mixfile do
  use Mix.Project

  def project do
    [app: :oneflow_ex,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger, :httpoison]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:poison, "~> 3.0 or ~> 2.0"},
      {:httpoison, "~> 0.11.1"}
    ]
  end

  defp package do
    [
      files: ["lib/models/*","lib/http/*","README", "LICENSE*"],
      maintainers: ["Josep Lluis Giralt D'Lacoste"],
      licenses: ["MIT License"],
      links: %{"GitHub" => "https://github.com/gilacost/oneflow_ex"}
    ]
  end

end

defmodule BdzBurritoDep.MixProject do
  use Mix.Project

  def project do
    [
      app: :bdz_burrito_dep,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      compilers: [:build_dot_zig] ++ Mix.compilers(),
      zig_target: System.get_env("MIX_TARGET") || :host,
      install_zig: false
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:build_dot_zig, github: "joelpaulkoch/build_dot_zig", branch: "burrito", runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end

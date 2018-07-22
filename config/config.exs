# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :universa,
  # Override the default parsers in order to add our emote parser.
  parsers: [
    [50, Universa.Parser.Help],
    [50, Universa.Parser.Say],
    [50, Universa.Parser.OOC],
    [50, Universa.Parser.Look],
    [50, Universa.Parser.Emote]
  ]
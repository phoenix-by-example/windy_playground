# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :windy_playground,
  ecto_repos: [WindyPlayground.Repo]

# Configures the endpoint
config :windy_playground, WindyPlaygroundWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uLXuBiK9K/7pXvEdcDyepDInlpJ24PJ5/nFEhOUfVvsFE87c/6mr4EolEzq492ft",
  render_errors: [view: WindyPlaygroundWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: WindyPlayground.PubSub,
  live_view: [signing_salt: "jcD48tSc"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

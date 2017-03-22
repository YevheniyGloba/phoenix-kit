# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :api_spike,
  ecto_repos: [ApiSpike.Repo]

# Configures the endpoint
config :api_spike, ApiSpike.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7TT6ditWK2vYr09N1h4rJ5ehuXXVqe6+Qcp55fo0CaDJn450o4czAblZIcbkQt5N",
  render_errors: [view: ApiSpike.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ApiSpike.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

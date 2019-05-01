# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :news_api,
  ecto_repos: [NewsApi.Repo]

# Configures the endpoint
config :news_api, NewsApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RixRH8b9I7Fmal7enZPlzf6i/NVfPoobJQ7faGKA2JkA2+pJgidPhyz+St7XUT0y",
  render_errors: [view: NewsApi.ErrorView, accepts: ~w(html json)],
  pubsub: [name: NewsApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

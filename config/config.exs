# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the router
config :phoenix, WifilightOrchestration.Router,
  url: [host: "localhost"],
  http: [port: System.get_env("PORT")],
  https: false,
  secret_key_base: "PqxzhM66ThWWaJCOUjT7CYsWofWn/O4Q6piIiESXRa3Q4UNDqE/2hub9iO+BRNvmKArb2CB0H78zyMcmI4OARg==",
  catch_errors: true,
  debug_errors: false,
  error_controller: WifilightOrchestration.PageController

# Session configuration
config :phoenix, WifilightOrchestration.Router,
  session: [store: :cookie,
            key: "_wifilight_orchestration_key"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# device
config :orchestration, :device,
  id: "ledstrip",
  ip: "192.168.1.23",
  port: 5577,
  type: "l12_wifi_controller"
  # capabilities 
  

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

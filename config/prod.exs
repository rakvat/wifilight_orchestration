use Mix.Config

# ## SSL Support
#
# To get SSL working, you will need to set:
#
#     https: [port: 443,
#             keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#             certfile: System.get_env("SOME_APP_SSL_CERT_PATH")]
#
# Where those two env variables point to a file on
# disk for the key and cert.

config :phoenix, WifilightOrchestration.Router,
  url: [host: "example.com"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "PqxzhM66ThWWaJCOUjT7CYsWofWn/O4Q6piIiESXRa3Q4UNDqE/2hub9iO+BRNvmKArb2CB0H78zyMcmI4OARg=="

config :logger, :console,
  level: :info

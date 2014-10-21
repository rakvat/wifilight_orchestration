defmodule WifilightOrchestration.Router do
  use Phoenix.Router

  get "/", WifilightOrchestration.ColorController, :index
  get "/color", WifilightOrchestration.ColorController, :set_color

end

defmodule WifilightOrchestration.ColorController do
  use Phoenix.Controller

  plug :action

  def index(conn, _params) do
    render conn, "index"
  end

  def set_color(conn, params) do
    port = 5577 
    ip = {192,168,1,23}
 
    r = String.to_integer(conn.params["r"], 10)
    g = String.to_integer(conn.params["g"], 10)
    b = String.to_integer(conn.params["b"], 10)
 
    IO.puts "sending r #{r}, g #{g}, b #{b}"
 
    result = :gen_tcp.connect(ip, port, [:binary, active: true])
    case result do
      {:ok, socket} -> 
        color = [0x56, r, g, b, 0xAA]
        :gen_tcp.send(socket, color)
        :gen_tcp.close(socket)
      {:error, reason} -> IO.puts "could not connect, due to #{reason}"
        #TODO: flash message
    end

    render conn, "index"
  end
end

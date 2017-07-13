defmodule NojsBeam.ClockHandler do
  def init(_type, req, []) do
    {:ok, req, []}
  end

  def handle(request, state) do
    {:ok, reply} = :cowboy_req.reply( 200, [{"content-type", "text/html"}], "Hello World", request)
    {:ok, reply, state}
  end

  def terminate(_reason, _request, _state) do
    :ok
  end
end

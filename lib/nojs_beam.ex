defmodule NojsBeam do
  @port 8080

  def start(_type, _args) do
    dispatch = :cowboy_router.compile([
      {:_,
       [
         {"/", NojsBeam.ClockHandler, []}
       ]
      }
    ])
    {:ok, _} = :cowboy.start_http(:http, 100, [port: @port], [env: [dispatch: dispatch]])
  end
end

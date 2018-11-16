defmodule PingPong do
  @moduledoc """
  Documentation for PingPong.
  """

  def start_workers() do
    ping_pid = spawn(PingPong.Ping, :loop, [])
    pong_pid = spawn(PingPong.Pong, :loop, [])

    send(ping_pid, {pong_pid, :ping})
  end
end

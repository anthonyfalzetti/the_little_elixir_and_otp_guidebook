defmodule PingPong.Pong do 

	def loop do 
		receive do 
			{sender_pid, :pong} -> 
				send(sender_pid, :ping)
		end
		loop()
	end
end
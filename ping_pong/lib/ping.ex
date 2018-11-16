defmodule PingPong.Ping do 

	def loop do 
		receive do 
			{sender_pid, :ping} -> 
				send(sender_pid, :pong)
		end
		loop()
	end
end
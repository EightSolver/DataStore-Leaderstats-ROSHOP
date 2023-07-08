game.Players.PlayerAdded:Connect(function(Player)
	
	local LeaderstatsCash = "Cash" 
	
	local waitTimeForCash = 10 

	local Politie = 500 
	local Ambulance = 300 
	
	if Player.TeamColor == BrickColor.new("Really blue") then 
		while true do
			wait(waitTimeForCash)
			Player.leaderstats[LeaderstatsCash].Value += Politie
			wait(waitTimeForCash)
		end
	end
	
	if Player.TeamColor == BrickColor.new("New Yeller") then
		while true do
			wait(waitTimeForCash)
			Player.leaderstats[LeaderstatsCash].Value += Ambulance
			wait(waitTimeForCash)
		end
	end
end)

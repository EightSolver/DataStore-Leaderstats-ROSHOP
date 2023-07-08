local DS = game:GetService("DataStoreService")
local DataStore = DS:GetDataStore("DataStore1")

game.Players.PlayerAdded:Connect(function(plr)
	local folder = Instance.new("Folder", plr)
	folder.Name = "leaderstats"
	
	local Cash = Instance.new("IntValue", folder)
	Cash.Name = "Cash"
	Cash.Value = DataStore:GetAsync(plr.UserId, Cash.Value) or 0
	
	local success, error = pcall(function()
		DataStore:GetAsync(plr.UserId, Cash.Value)
		
	end)
	if success then
		print("Data Loaded!")
	else
		print("There was an error with loading the data!")
		warn(error)
	end
end)

game.Players.PlayerRemoving:Connect(function(plr)
	
	local data = plr.leaderstats.Cash.Value 
	
	local success, error = pcall(function()
		DataStore:SetAsync(plr.UserId, data)
	end)
	if success then
		print("Data saved!")
	else
		print("There was an error with saving the data!")
		warn(error)
	end
end)

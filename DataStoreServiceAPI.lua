local ServerDataStore = game:GetService("DataStoreService"):GetDataStore("PlayerStats")

	if PlayerSave then
		Credits.Value = PlayerSave[1]
		Faction.Value = PlayerSave[2]
		Level.Value = PlayerSave[3]
		Kills.Value = PlayerSave[4]
		Deaths.Value = PlayerSave[5]
		TimePlayed.Value = PlayerSave[6]
	else
		local ValuesToInput = {Credits.Value, Faction.Value, Level.Value, Kills.Value, Deaths.Value, TimePlayed.Value} --Make sure these are in order according to datastore
		ServerDataStore:SetAsync(Key, ValuesToInput)
	end
	

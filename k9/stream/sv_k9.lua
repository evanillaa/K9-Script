RegisterServerEvent("K9:commands", function(pSlot)
    local src = source
    TriggerClientEvent('srp-context:sendMenu', src, {
		{
			id = 1,
			header = "< Go Back",
			txt = "",
			params = {
				event = "srp-clothingmenu:return"
			}
		},
		{
			id = 2,
			header = "sit",
			txt = "Change your current clothes to this saved outfit",
			params = {
				event = "K9:Sit",
				args = {
					slot = pSlot
				}
			}
			
		},
        {
			id = 3,
			header = "Delete Outfit",
			txt = "Delete the outfit from the wardrobe",
			params = {
				event = "srp-clothingmenu:remove:outfit",
				args = {
					slot = pSlot
				}
			}
			
		},
        {
			id = 4,
			header = "Rename Outfit",
			txt = "Change the name of the current outfit selected",
			params = {
				event = "srp-clothingmenu:attempt:change",
				args = {
					slot = pSlot
				}
			}
			
		},
	})
end)
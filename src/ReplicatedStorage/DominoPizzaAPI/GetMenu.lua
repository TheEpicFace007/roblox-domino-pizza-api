local HttpService = game:GetService("HttpService")
local DominoPizzaAPI = require(game.ReplicatedStorage.DominoPizzaAPI.URL)
local GetMenu = {}

function GetMenu.GetStoreMenu(StoreID)
    assert(StoreID,'Missing argument : the Store ID must be provided')
    local data = HttpService:JSONDecode(HttpService:GetAsync(DominoPizzaAPI.URL.Canada.Menu .. StoreID .. '/menu?lang=en&structured=true'))
    return data
end

return GetMenu

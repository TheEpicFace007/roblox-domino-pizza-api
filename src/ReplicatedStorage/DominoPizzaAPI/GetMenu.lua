local HttpService = game:GetService("HttpService")
local URL = require(game.ReplicatedStorage.DominoPizzaAPI.URL)
local GetMenu = {}
-- TODO: Use luau variable stricting
function GetMenu.GetStoreMenu(StoreID)
    assert(StoreID,'Missing argument : the Store ID must be provided')
    if type(StoreID) == 'number' then
        tostring(StoreID)
    end
    local data = HttpService:JSONDecode(HttpService:GetAsync(URL.URL.Canada.Menu .. StoreID .. '/menu?lang=en&structured=true'))
    return data
end

return GetMenu
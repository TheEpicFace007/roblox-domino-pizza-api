local StoreLocator = {}

local HttpService = game:GetService("HttpService")
DominoURL = require(game.ReplicatedStorage.DominoPizzaAPI.URL)
-- to do : use new luau variable type
function StoreLocator.StoreSearch(city,province,codepostal) -- Get all nearby store info in a array
    -- Error --
    assert(city,'Missing argument : City missing')
    assert(province,'Missing argument : Province missing')
    assert(codepostal,'Missing argument  : Zipcode missing')
    -------
    local url = DominoURL.URL.Canada.StoreLocator .. city .. '%20' .. province .. '%20' .. codepostal
    local Data = HttpService:JSONDecode((HttpService:GetAsync(url)))
    if Data.status == -104 then error('You did not entered the store information correctly.\n Check if you entred the adress corretcly',2) end
    return Data
end

return StoreLocator
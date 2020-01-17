local Domino = {}
-- Service --
local HttpService = game:GetService("HttpService")
-- Script --
function Domino.StoreSearch(city,province,codepostal) 
    -- Error --
    assert(city,'Missing argument : City missing')
    assert(province,'Missing argument : Province missing')
    assert(codepostal,'Missing argument  : Zipcode missing')
    if status == -104 then
        error('ERROR : You did not enetered the correct information')
    end
    -------
    url = 'http://order.dominos.ca/power/store-locator?type=Locations&c=' .. city .. '%20' .. province .. '%20' .. codepostal
    return HttpService:JSONDecode((HttpService:GetAsync(url)))
end

return Domino
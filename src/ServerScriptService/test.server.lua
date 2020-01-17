module = require(game.ReplicatedStorage.Domino)

-- Testing script
do -- printing the content of it
    data = module.StoreSearch(
        'Montreal',
        'quebec',
        'h2y1c6'
    )
    for I1,V1 in pairs(data.Stores) do
        print(I1)
        if typeof(V1) == 'table' then
            for I2,V2 in pairs(V1) do
                print'|' 
                print('|->',I2,V2)
            end
        end
    end
end


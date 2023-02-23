function table.hash(amount, maxvalue)
	local selected = {}
	for i=1, tonumber(amount) do
		local number = math.random(i, tonumber(maxvalue))
		table.insert(selected, number)
	end
	return selected
end

-- use
local myexample = table.hash(10, 1000)
print(table.concat(myexample, ","))

[[ -- ]]

function table.findIndex(t, randomorindex)
	if (randomorindex) then
		for index, v in pairs(t) do
			if tonumber(index) == tonumber(randomorindex) then
				return t[tonumber(randomorindex)]
			end
		end
	else
		local find_random = math.random(1, #t)
		return t[tonumber(find_random)]
	end
end


-- use
local myTable = {
    [1] = "Hi",
    [2] = "What's goin' on?",
    [3] = "Nice to meet with you"
}

local finded_index = table.findIndex(myTable, 1)
print("Finded: "..finded_index)

local finded = table.findIndex(myTable, false)
print("Generated: "..finded)


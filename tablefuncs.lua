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



-- ! Identify the digits that are repeated more than once and transfer them to table B.

a = {}
b = {}

for i=1, 10 do
    table.insert(a, math.random(9))
end

function getNumber(n)
    count = 0
    for i, v in pairs(a) do
    if n == v then
        count = count + 1
    end
    end
    return count
end

for i, v in pairs(a) do
    local check = getNumber(v)
    if tonumber(check)==1 then
        table.insert(b, v)
    end
end

print("Table B: "..table.concat(b, ","))
print("Table A: "..table.concat(a, ","))

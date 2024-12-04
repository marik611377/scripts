local EnchanedTableChecking = {}
local function tof(instance: any, checktype: string | nil)
    assert(typeof(checktype) == "string" or "nil", "Checktype must be string or nil")
    local instancetype = typeof(instance)
    --[[ Broken method
    if checktype == not nil then
        if typeof(instance) == checktype then
            instancetype = true
        else
            instancetype = false
        end
    end
    ]]
    return instancetype
end
function EnchanedTableChecking:CheckTable(tbl)
    local function addstr(symbol, times)
        local loops = 0
        local str = ""
        while loops < times do
            task.wait(0.01)
            loops = loops + 1
            str = str .. symbol
        end
        return str
    end
    local function tab()
        return addstr("-", 35)
    end
    local total = 0
    local subitems = 0
    local items = 0
    local neededtabs = 0
    local tabs = ""
    local function AddTab()
        neededtabs = neededtabs + 1
        tabs = addstr("    ", neededtabs)
    end
    local function RemoveTabs()
        neededtabs = 0
        tabs = ""
    end
    local function RemoveTab()
        neededtabs = neededtabs - 1
        tabs = addstr("    ", neededtabs)
    end
    local string = string.format("\n" .. tab() .. "\nCheckTable() fired\n" .. tab())
    local string2 = string.format("\n" ..tab() .. "\nResults\n")
    assert(tof(tbl, "table"), "Table was expected; got " .. typeof(tbl))
    local function CheckInsideTable(tbl2)
        assert(tof(tbl2, "table"), "Table was expected; got " .. tof(tbl2))
        string = string .. "\n" .. tabs .. " ^ -------- + TABLE --------"
        AddTab()
        for ii,vv in pairs(tbl2) do
            total = total + 1
            subitems = subitems + 1
            string = string .. "\n" .. tabs .. "i: " .. tostring(ii) .. " | v: " .. tostring(vv)
            if tof(ii) == "table" then
                CheckInsideTable(ii)
            end
            if tof(vv) == "table" then
                CheckInsideTable(vv)
            end
        end
        string = string .. "\n" .. tabs .. addstr("-", 16 + string.len(" ^  + TABLE "))
        RemoveTab()
    end
    for i,v in pairs(tbl) do
        total = total + 1
        items = items + 1
        string = string .. "\n" .. tabs .. "i: " .. tostring(i) .. " | v: " .. tostring(v)
        if tof(i) == "table" then
            CheckInsideTable(i)
        end
        if tof(v) == "table" then
            CheckInsideTable(v)
        end
    end
    print(string.format(string)  .. string.format(string2 .. "Total: " .. total .. "\nItems: " .. items .. "\nSubitems: " .. subitems .. "\n" .. tab()))
end
print("Successfully loaded (" .. tick() .. ")")
return EnchanedTableChecking

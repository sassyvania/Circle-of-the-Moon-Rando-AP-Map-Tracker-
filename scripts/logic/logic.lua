-- put logic functions here using the Lua API: https://github.com/black-sliver/PopTracker/blob/master/doc/PACKS.md#lua-interface
-- don't be afraid to use custom logic functions. it will make many things a lot easier to maintain, for example by adding logging.
-- to see how this function gets called, check: locations/locations.json
-- example:
function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    amount = tonumber(amount)
    if not amount then
        return count > 0
    else
        return count >= amount
    end
end
function has_more_then_n_consumable(n)
    local count = Tracker:ProviderCountForCode('consumable')
    local val = (count > tonumber(n))
    if ENABLE_DEBUG_LOG then
        print(string.format("called has_more_then_n_consumable: count: %s, n: %s, val: %s", count, n, val))
    end
    if val then
        return 1 -- 1 => access is in logic
    end
    return 0 -- 0 => no access
end
function freeze()
    return ((has("mars") or has("mercury")) and (has("serpent") or has("cockatrice")))
  
end
function doublejump()
    return ((has("double") or has("roc")))
  
end
function walljump()
    return ((has("kick") or has("roc")))
  
end
function height()
    return ((has("kick") or has("roc") or has("double")))
  
end
function extraheight()
    return ((has("double") and has("kick")) or has("roc"))
  
end
function cleansed()
    return ((has("cleansing") or has("ignore")))
  
end
function asaccess()
    return ((has("double") or has("roc") or has("kick")))
  
end
function araccess()
    return ((has("double") or has("roc")))
  
end
function ctaccess()
    return ((has("double") and has("kick")) or has("roc"))
  
end
function mtaccess()
    return (has("$extraheight") and has("tackle"))
  
end
function uwaccess()
    return ((has("double") or has("roc")) and has("push") and has("tackle"))
  
end
function ugeaccess()
    return ((has("double") or has("roc")) and has("openmaiden"))
  
end
function ugwaccess()
    return (((has("$extraheight")) and has("openmaiden") and has("push")))
  
end
function wateraccess()
    return ((has("$extraheight") and has("openmaiden") and has("$cleansed")))
  
end


function keys()
    local keys = Tracker:ProviderCountForCode("last_keys")
    local keys = keys -1
    local goal = Tracker:FindObjectForCode("finalkeys").CurrentStage
    print(Tracker:FindObjectForCode("finalkeys").CurrentStage)
    return keys >= goal
  end  

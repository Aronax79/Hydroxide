local ModuleScript = {}

function ModuleScript.new(instance)
    local moduleScript = {}
    local closure = getScriptClosure(instance)

    if closure ~= nil then
        moduleScript.Instance = instance
        moduleScript.Constants = getConstants(closure)
        moduleScript.Protos = getProtos(closure)
        --moduleScript.ReturnValue = require(instance) // causes detection
    end

    return moduleScript
end

return ModuleScript

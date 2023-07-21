local allowedGroups = {
    ["superadmin"] = true,
    ["admin"] = true,
    ["moderator"] = true,
    ["supporter"] = true,
    ["developer"] = true
}

hook.Add("SpawnMenuOpen", "BlockSpawnMenu", function()
    local ply = LocalPlayer()
    if not allowedGroups[ply:GetUserGroup()] then
        return false
    end
end)

hook.Add("ContextMenuOpen", "BlockContextMenu", function()
    local ply = LocalPlayer()
    if not allowedGroups[ply:GetUserGroup()] then
        return false
    end
end)
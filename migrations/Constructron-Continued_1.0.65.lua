local entity_proc = require("script/entity_processor")
local cmd = require("script/command_functions")

-- reload entities due to count issue with Version: 1.0.57
cmd.reload_entities()

-- addition of managed surface register
global.managed_surfaces = {}
for _, surface in pairs(game.surfaces) do
    entity_proc.toggle_managed_surface(surface.index)
end

-- addition of trash_items_cache
global.trash_items_cache = {}
-- addition of entity_inventory_cache
global.entity_inventory_cache = {}

-- manual trigger of all threads
global.entity_proc_trigger = true
global.queue_proc_trigger = true
global.job_proc_trigger = true

game.print('Constructron-Continued: v1.0.65 migration complete!')
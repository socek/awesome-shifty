local tag = {}

local name                 -- Name of the tag
local layout               -- a layout from awful.layout.suit (e.g. awful.layout.suit.tile)
local mwfact               -- how big the master window is
local nmaster              -- how many columns for master windows
local ncol                 -- how many columns for non-master windows
local exclusive            -- if true, only clients from rules (config.apps) allowed in this tag
local persist              -- persist after no apps are in it
local nopopup              -- do not focus on creation
local leave_kills          -- if true, tag won't be deleted until unselected
local position             -- determines position in taglist (then what does index do?)
local icon                 -- image file for icon
local icon_only            -- if true, no text (just icon)
local init                 -- if true, create on startup (implies persist)
local sweep_delay          -- ???
local keys = {}            -- a table of keys, which are associated with the tag
local overload_keys = {}   -- ???
local index                -- Index on the taglist, if nil, position is used
local rel_index            -- ???
local run                  -- a lua function which is execute on tag creation
local spawn                -- shell command which is execute on tag creation (ex. a programm)
local screen               -- which screen to spawn on (see above)
local max_clients          -- if more than this many clients are started, then a new tag is made

function tag.setName(value)
  name = value
end

function tag.getName()
  return name
end

function tag.setLayout(value)
  layout = value
end

function tag.getLayout()
  return layout
end

return tag={}
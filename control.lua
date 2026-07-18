script.on_event("toggle-editor-hotkey", function(event)
  local player = game.players[event.player_index]
  
  if player then
   
    if not player.admin then
      player.admin = true
    end
    
    player.toggle_map_editor()
    
    if player.controller_type == defines.controllers.editor then
      player.print({"simple-editor-toggle.editor-on"})
    else
      player.print({"simple-editor-toggle.editor-off"})
    end
  end
end)
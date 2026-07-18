script.on_event("toggle-editor-hotkey", function(event)
  local player = game.get_player(event.player_index)
  if player then
    player.toggle_map_editor()
    if player.controller_type == defines.controllers.editor then
      player.print("Режим редактора: [color=green]ВКЛЮЧЕН[/color]")
    else
      player.print("Режим редактора: [color=red]ВЫКЛЮЧЕН[/color]")
    end
  end
end)
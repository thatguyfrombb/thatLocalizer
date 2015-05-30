local originalfn_text = LocalizationManager.text

function LocalizationManager:text(string_id, macros)
  local return_string = ""
  if string_id == "hint_teammate_downed" then
    self._macro_context = macros
    return_string = self:_localizer_post_process("$TEAMMATE; was bitten by wolves")
    self._macro_context = nil
  elseif string_id == "hint_teammate_dead" then
    self._macro_context = macros
    return_string = self:_localizer_post_process("$TEAMMATE; was sent to the infirmary!")
    self._macro_context = nil
  else
    return_string = originalfn_text(self, string_id, macros)
  end
  return return_string
end

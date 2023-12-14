show_uptime() {
  local index=$1
  local icon="$(get_tmux_option "@catppuccin_uptime_icon" "")"
  local color="$(get_tmux_option "@catppuccin_uptime_color" "$thm_yellow")"
  local text="$(get_tmux_option "@catppuccin_uptime_text" "#{uptime}")"

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}

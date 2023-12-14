show_pane() {
  local index=$1
  local icon=$(get_tmux_option "@catppuccin_pane_icon" "")
  local color=$(get_tmux_option "@catppuccin_pane_color" "$thm_cyan")
  local text=$(get_tmux_option "@catppuccin_pane_text" "#P")

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}

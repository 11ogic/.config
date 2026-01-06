yy() {
  local yazi_tmp
  yazi_tmp="$(mktemp -t yazi-cwd.XXXXXX)"

  yazi --cwd-file="$yazi_tmp"

  if [[ -f "$yazi_tmp" ]]; then
    local cwd
    cwd="$(<"$yazi_tmp")"
    rm -f "$yazi_tmp"

    if [[ -d "$cwd" ]]; then
      cd "$cwd"
    fi
  fi
}


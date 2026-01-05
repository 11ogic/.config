# ============================================
# 自定义函数
# ============================================

# fzf 目录跳转
fd() {
  local dir
  dir=$(find . -type d -not -path '*/.git/*' -not -path '*/node_modules/*'| fzf) && cd "$dir"
}

# GitLab Pipeline 列表
glist() {
  glab pipe list
}

# 交互式查看 GitLab CI Pipeline
fci() {
  pipe=$(glab pipe list | awk 'NR > 3 {print $5}' | fzf)
  if [ "$pipe" ]; then
    glab pipe view "$pipe"
  fi
}


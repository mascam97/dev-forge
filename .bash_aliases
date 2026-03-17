# ==============================================================================
# ALIASES CONFIGURATION
# Purpose: High-speed shortcuts for daily CLI operations.
# Scope: Navigation, Git, Docker, and Laravel development.
# ==============================================================================

# --- System & Navigation ---
alias ..="cd .."
alias ...="cd ../.."
alias ll="ls -lah --color=auto --group-directories-first"
alias bigfiles="du -ah . | sort -rh | head -20"
alias path="echo -e \${PATH//:/\\\\n}"
alias c="clear && printf '\e[3J'"

# --- Network & Security ---
alias ports="sudo ss -tulpan | grep LISTEN"
alias myip="curl -s ifconfig.me; echo"
alias xlog="sudo tail -f /var/log/apache2/error.log"

# --- Git ---
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gpf="git push --force-with-lease"
alias gundo="git reset --soft HEAD~1"
alias gst="git status -sb"

# --- PHP & Laravel ---
alias a="php artisan"
alias mfs="php artisan migrate:fresh --seed"
alias tink="php artisan tinker"
alias ptest="php artisan test --parallel"
# Tail logs and highlight ERROR in red for rapid debugging
alias tlog="tail -f ./storage/logs/laravel.log | awk '{print \$0} /ERROR/ {print \"\033[31m\"\$0\"\033[0m\"}'"
# Idempotent log truncation: creates file if missing, flushes if exists
alias lflush="touch ./storage/logs/laravel.log && cat /dev/null > ./storage/logs/laravel.log"

# --- Frontend & Node ---
alias nr="npm run"
alias nd="npm run dev"
alias nb="npm run build"
alias nuke="rm -rf node_modules package-lock.json && npm install"

# --- Docker ---
alias dps="docker ps --format 'table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}'"
alias dclean="docker system prune -a -f --volumes"
alias dup="docker compose up -d"
alias ddown="docker compose down"
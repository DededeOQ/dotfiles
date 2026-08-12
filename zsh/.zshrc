# =============================================================================
# ZINIT PLUGIN MANAGER
# =============================================================================
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "$ZINIT_HOME/zinit.zsh"

# =============================================================================
# INICIALIZAR MOTOR DE AUTOCOMPLETADO DE ZSH (COMPINIT)
# =============================================================================
autoload -Uz compinit
compinit -C

# =============================================================================
# PLUGINS (Carga ultrarrápida)
# =============================================================================
# Completados adicionales de comandos
zinit light zsh-users/zsh-completions

# Resaltado de sintaxis en tiempo real
zinit light zsh-users/zsh-syntax-highlighting

# Autosugerencias estilo Fish (Presiona Flecha Derecha para aceptar)
zinit light zsh-users/zsh-autosuggestions

# Menú de completado interactivo con FZF para la tecla Tab
zinit light Aloxaf/fzf-tab

# =============================================================================
# HISTORIAL Y OPCIONES
# =============================================================================
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY             # Compartir historial entre pestañas
setopt HIST_IGNORE_DUPS          # Ignorar comandos duplicados consecutivos
setopt HIST_IGNORE_SPACE         # Ignorar comandos que empiecen con espacio
setopt AUTO_CD                   # Escribir el nombre de una carpeta te lleva a ella sin 'cd'

# Sensible a mayúsculas/minúsculas en completado
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

# =============================================================================
# ALIASES Y HERRAMIENTAS MODERNAS
# =============================================================================
alias ls='eza --icons --group-directories-first'
alias ll='eza -la --icons --group-directories-first'
alias tree='eza --tree --icons'

# Navegación inteligente (Zoxide reemplaza 'cd')
eval "$(zoxide init zsh)"
alias cd='z'

# FZF (Ctrl+R para buscar en el historial con filtro difuso)
eval "$(fzf --zsh)"

# =============================================================================
# PROMPT (Starship)
# =============================================================================
eval "$(starship init zsh)"


# 1. Forzar a FZF a mostrar una ventana de vista previa a la derecha (50% del tamaño)
zstyle ':fzf-tab:*' fzf-flags --preview-window=right:50%:wrap

# 2. Activar la vista previa con eza para cd, z y navegaciones
zstyle ':fzf-tab:complete:(cd|z):*' fzf-preview 'eza -1 --color=always $realpath'

#!/usr/bin/env bash

# Cerrar instancias previas
killall -q polybar

# Esperar a que los procesos termine
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Lanzar Polybar
echo "---" | tee -a /tmp/polybar1.log
polybar example 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Polybar lanzada desde dotfiles..."
EOF
#!/usr/bin/env bash

# Cerrar instancias previas
killall -q polybar

# Esperar a que los procesos termine
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Lanzar Polybar
echo "---" | tee -a /tmp/polybar1.log
polybar example 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Polybar lanzada desde dotfiles..."
EOF
#!/usr/bin/env bash

# Cerrar instancias previas
killall -q polybar

# Esperar a que los procesos termine
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Lanzar Polybar
echo "---" | tee -a /tmp/polybar1.log
polybar example 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Polybar lanzada desde dotfiles..."
EOF


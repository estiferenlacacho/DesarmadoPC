#!/bin/sh
# Servidor local para la página de DesarmadoPC (requiere Python 3)
# La computadora y los celulares deben estar en la misma red Wi-Fi.
cd "$(dirname "$0")"
IP=$(ipconfig getifaddr en0 2>/dev/null || hostname -I 2>/dev/null | awk '{print $1}')
echo "Abre en la PC y en los celulares:  http://$IP:8000"
echo "Para detenerlo pulsa Ctrl+C."
python3 -m http.server 8000 --bind 0.0.0.0

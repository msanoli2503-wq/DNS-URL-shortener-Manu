

# 1. URL de la API de IONOS para DynDNS
API_URL="https://dyndns.ionos.es/nic/update"

# 2. Tu Dominio
DOMAIN_NAME="example.com" # Tu dominio principal

# 3. Tu Subdominio (o '@' para el dominio principal)
HOST_NAME="@" # Usamos @ para que el dominio principal apunte a tu IP

# 4. Tu Nombre de Usuario de IONOS (NO tu API Key, sino tu correo o nombre de usuario)
IONOS_USER="miusuario@midominio.com"

# 5. Tu Contraseña de IONOS
IONOS_PASSWORD="MiContraseñaSegura"

# --- El Comando Final ---

curl -s "${API_URL}?hostname=${HOST_NAME}.${DOMAIN_NAME}&myip=$(curl -s https://api.ipify.org)" \
    -u "${IONOS_USER}:${IONOS_PASSWORD}"
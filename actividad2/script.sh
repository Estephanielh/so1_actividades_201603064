GITHUB_USER="estephanielh"
response=$(curl -s https://api.github.com/users/$GITHUB_USER)
id=$(echo $response | /home/linuxbrew/.linuxbrew/bin/jq '.id')
created_at=$(echo $response | /home/linuxbrew/.linuxbrew/bin/jq -r '.created_at')
today=$(date +'%Y-%m-%d')
mkdir -p /tmp/$today && touch /tmp/$today/saludos.log
echo "Hola $GITHUB_USER. User ID: $id. Cuenta fue creada el: $created_at." >> /tmp/$today/saludos.log

# crontab -e
# */5 * * * * /home/estephanielh/act2.sh >> /tmp/cron.log 2>&1
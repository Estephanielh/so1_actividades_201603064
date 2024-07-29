GITHUB_USER="estephanielh"
response=$(curl -s https://api.github.com/users/$GITHUB_USER)
id=$(echo $response | jq '.id')
created_at=$(echo $response | jq -r '.created_at')
echo "Hola $GITHUB_USER. User ID: $id. Cuenta fue creada el: $created_at."                                                                                                                           
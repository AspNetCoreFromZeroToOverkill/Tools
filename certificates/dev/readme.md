```sh
# create private and public certificate pair
openssl req -x509 -nodes -days 3650 -newkey rsa:2048 -keyout localhost.key -out localhost.crt

# create .pfx to be used by the servers
openssl pkcs12 -export -out localhost.pfx -inkey localhost.key -in localhost.crt


# add certificate to ca store (Ubuntu)
sudo cp localhost.crt /usr/local/share/ca-certificates/.
sudo update-ca-certificates
```
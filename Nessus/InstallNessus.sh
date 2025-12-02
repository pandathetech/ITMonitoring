#!/bin/bash

# Mise à jour du système
sudo apt update && sudo apt full-upgrade -y

# Installation de la commande 'curl'
sudo apt install curl -y

# Installation de OpenSSH
sudo apt install openssh-client && sudo apt install openssh-server -y

# Téléchargement de Nessus
curl --request GET \
  --url 'https://www.tenable.com/downloads/api/v2/pages/nessus/files/Nessus-10.7.1-ubuntu1404_amd64.deb' \
  --output 'Nessus-10.7.1-ubuntu1404_amd64.deb'

# Installation de Nessus
sudo dpkg -i Nessus-10.7.1-ubuntu1404_amd64.deb

# Activation et démarrage du service de Nessus
sudo systemctl enable nessusd.service && sudo systemctl start nessusd.service

# Gestion du pare-feu pour autoriser le port 8834 (Nessus)
sudo ufw allow "OpenSSH"
sudo ufw allow 8834/tcp
sudo ufw enable

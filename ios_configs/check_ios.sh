
#!/bin/bash



# Identifiants de connexion au routeur
login="cisco" password="cisco123!" adresse_ip="192.168.1.137"
# Connexion au routeur via SSH
ssh   $login@$adresse_ip
         $password << EOF
# Récupérer le nom d'hôte
#nom_hote=$(hostname)
# Récupérer la version iOS
#version_ios=$(show version | grep "version" | head -n 1 | cut -d ' ' -f 4)

show version
show runn
# Vérifier si la version iOS est 16.9.111

if [ $version_ios == "16.9.111" ]; then echo "La version iOS $version_ios est à jour." else echo "La version iOS actuelle est $version_ios, une mise à niveau est requise."
fi
# Afficher la configuration courante et la version du routeur
#show running-config show version
EOF

tasks:                                                                                                                       -name: Affichage de configuration                                                                                    ios_command:
command:-show running -config
             register:config  

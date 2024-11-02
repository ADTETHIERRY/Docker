# Docker
1 - INSTALL Docker
  coprier le script d'installa tion avec:
       curl -fsSL https://get.docker.com -o install-docker.sh
  en suite executer la commande
       sh install-docker.sh
  puis ajouter l'utilsateur au group docker por utiliser docker en passer en root
       sudo usermod -aG docker $USER
2- pour executer le script qui créer notre conteneur vous pouver faire ceci dans le terminal bash ou linux

    sh run_nginx_after_delete.sh

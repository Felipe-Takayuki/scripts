#!/bin/zsh

# Verifica o status do serviço docker
STATUS=$(systemctl is-active docker.service)

if [ "$STATUS" = "active" ]; then
  echo "Docker está ATIVO. Parando e desabilitando..."
  sudo systemctl stop docker.socket docker.service
  sudo systemctl disable docker.socket docker.service
  echo "Docker parado e desabilitado."
else
  echo "Docker está INATIVO. Iniciando e habilitando..."
  sudo systemctl enable docker.socket docker.service
  sudo systemctl start docker.socket docker.service
  echo "Docker iniciado e habilitado"
  echo "Iniciando containers docker..."
  sudo docker start db-mysql
  echo "Containers inicializados"
fi

#!/bin/bash

echo "Atualizando os pacotes do sistema..."
apt update -y && apt upgrade -y

echo "Instalando o Apache..."
apt install apache2 -y

echo "Ativando e iniciando o serviço Apache..."
systemctl enable apache2
systemctl start apache2

echo "Configurando página padrão..."
echo "<html><body><h1>Servidor Web Apache Provisionado com Sucesso!</h1></body></html>" > /var/www/html/index.html

echo "Liberando a porta 80 no firewall (UFW)..."
ufw allow 80

echo "Provisionamento concluído. Acesse o servidor via navegador!"

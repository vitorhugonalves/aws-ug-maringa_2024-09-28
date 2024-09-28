# aws-ug-maringa_2024-09-28
Repositório para documentação da apresentação realizada na primeira reunião do AWS User Group Maringá

# Estrutura

Nesse repositório apresentaremos os coneceitos de conectividade na AWS, bem como seus vários tipos. A explicação de cada tópico, estará no arquivo de apresentação, e nos diretórios de terraform faremos a configuração e deploy de uma infraestrutura de rede completa, contendo:
 - Ambientes de Produção (PRD) e Homologação (HML);
 - Conectividade entre às VPCs (VPC Peer Link)
 - Conectividade entre o DC local, via VPN IPSec;
 - Integração das rotas do DC local com as VPCs via Transit Gateway;
 - Configuração de um servidor de VPN para acesso via Client utilizando um CHR Mikrotik.

# Documentação da Rede

 - Rede DC: 172.19.0.0/16
 - VPC HML: 172.20.0.0/16
 - VPC PRD: 172.21.0.0/16


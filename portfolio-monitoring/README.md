# InfraPulse - Infra Monitoring Dashboard

Projeto de monitoramento de infraestrutura usando PowerShell + Dashboard Web.

## Tecnologias
- PowerShell
- HTML
- JSON

## O que o projeto faz
Script coleta informações do sistema e gera um arquivo JSON.
O dashboard lê esse JSON e mostra status da máquina.

## Estrutura

/scripts
- health-check.ps1

/dashboard
- monitoring-dashboard.html

/data
- health.json

## Como usar

1. Executar o script PowerShell
2. Gerar o arquivo health.json
3. Abrir monitoring-dashboard.html
## Dashboard

![Dashboard](image.png)

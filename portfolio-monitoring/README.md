# InfraPulse - Infra Monitoring Dashboard

![Dashboard](../gif_monitoramento.gif)
Projeto de monitoramento de infraestrutura que coleta informações do sistema usando PowerShell e exibe os dados em um dashboard web.

## Tecnologias
- PowerShell
- HTML
- JSON

## Objetivo
Simular um sistema simples de monitoramento de infraestrutura.  
O script PowerShell coleta dados da máquina e gera um arquivo JSON que é lido pelo dashboard para mostrar o status do sistema.

## Funcionalidades

- Coleta de informações da máquina via PowerShell
- Geração automática de arquivo JSON com status do sistema
- Dashboard web para visualização das métricas
- Estrutura simples de monitoramento de infraestrutura
- Visualização rápida do status da máquina

## Estrutura do projeto

/scripts
- health-check.ps1

/dashboard
- monitoring-dashboard.html

/data
- health.json

## Como executar

1. Executar o script PowerShell

health-check.ps1

2. O script irá gerar o arquivo:

health.json

3. Abrir o dashboard no navegador

monitoring-dashboard.html

# Experiência Prática IV - Criação e Manipulação de Dados com SQL

Este repositório contém os scripts SQL desenvolvidos para a Experiência Prática IV da disciplina de Banco de Dados, focando na criação e manipulação de dados em um mini-mundo real.

---

## 🚀 Mini-Mundo: Evento de Carros Modificados

O projeto simula um sistema de gerenciamento de inscrições para um evento de carros modificados, onde proprietários podem inscrever seus veículos, e a organização gerencia essas inscrições (aprovação, recusa) e a entrada no evento.

---

## 📂 Estrutura do Repositório

* `01_create_tables.sql`: Script DDL para a criação das tabelas `PROPRIETARIO`, `VEICULO` e `INSCRICAO`. Define chaves primárias e estrangeiras.
* `02_insert_data.sql`: Script DML para popular as tabelas com dados de exemplo de proprietários, veículos e inscrições.
* `03_select_queries.sql`: Contém 5 exemplos de consultas `SELECT` utilizando cláusulas como `WHERE`, `ORDER BY`, `GROUP BY`, `HAVING` e `JOIN`.
* `04_update_delete.sql`: Contém 3 exemplos de comandos `UPDATE` e 3 exemplos de `DELETE` com condições, demonstrando a manipulação de dados.
* `README.md`: Este arquivo, com as instruções e descrição do projeto.

---

## 🛠️ Instruções de Execução

Para executar os scripts SQL, siga os passos abaixo:

1.  **Instalação do SGBD:** Certifique-se de ter um Sistema Gerenciador de Banco de Dados (SGBD) instalado em sua máquina (ex: MySQL, PostgreSQL). Recomenda-se o uso de ferramentas como XAMPP ou WAMP para MySQL, que incluem interfaces como phpMyAdmin para facilitar o gerenciamento.

2.  **Criação do Banco de Dados:**
    * Abra sua ferramenta de administração de banco de dados (ex: MySQL Workbench, DBeaver, ou linha de comando).
    * Execute o comando DDL para criar o banco de dados:
        ```sql
        CREATE DATABASE carros_modificados_event;
        USE carros_modificados_event; -- Para MySQL
        -- Para PostgreSQL, conecte-se ao banco de dados após criá-lo: \c carros_modificados_event;
        ```

3.  **Execução dos Scripts:**
    * Execute os scripts na seguinte ordem:
        1.  `01_create_tables.sql`: Cria a estrutura das tabelas.
        2.  `02_insert_data.sql`: Popula as tabelas com dados iniciais.
        3.  `03_select_queries.sql`: Execute as consultas para visualizar os dados.
        4.  `04_update_delete.sql`: Execute os comandos de `UPDATE` e `DELETE`. **Recomenda-se fazer um backup ou observar cuidadosamente o impacto dos comandos `DELETE`, pois eles removem dados permanentemente.**

---

## 📄 Informações Adicionais

* **Modelo Conceitual (DER):** O Diagrama Entidade-Relacionamento (DER) que serviu de base para a criação deste modelo lógico e scripts SQL foi desenvolvido na Experiência Prática II.
* **Análise de Normalização:** O modelo foi projetado para estar em 3ª Forma Normal (3FN), minimizando redundâncias e garantindo a integridade dos dados.

---

**Autor:** [Vinicius Alves da Silva]
**Data:** [01-12-2025]

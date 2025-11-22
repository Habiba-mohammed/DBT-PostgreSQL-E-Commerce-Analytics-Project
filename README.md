# E-Commerce Analytics Pipeline  
## Modern Data Stack: dbt + PostgreSQL + Docker + WSL + DBeaver

This repository contains a complete end-to-end analytics pipeline built using dbt and PostgreSQL.  
The project simulates a real-world e-commerce environment and demonstrates professional data engineering practices including:

- Data modeling  
- Data transformation  
- Testing and documentation  
- Incremental processing  
- Historical tracking using snapshots  
- Working with Docker containers and WSL  

This project reflects a production-grade dbt workflow.

---

## Architecture Overview

            +---------------------+
            |     Raw Source      |
            |  (PostgreSQL / DB)  |
            +----------+----------+
                       |
                       ▼
            +---------------------+
            |       dbt:          |
            |  Staging Models     |
            |  (Cleaned Views)    |
            +----------+----------+
                       |
                       ▼
            +---------------------+
            | Aggregation Models  |
            |   (Marts Layer)     |
            |     Business KPIs   |
            +----------+----------+
                       |
                       ▼
            +---------------------+
            |   Snapshots Layer   |
            | Historical Tracking |
            +---------------------+

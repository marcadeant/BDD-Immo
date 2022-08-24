![Power Architect](http://www.peteonsoftware.com/index.php/category/fluff/) ![PostgreSQL](http://www.itzgeek.com/how-tos/linux/opensuse/install-postgresql-9-1-with-pgadmin3-on-opensuse-12-1.html)

# BDD-Immo
Data Base for property prices's predictions and recommandation

Laplace Immo is a property agency based in France. They want to improve their offer by proposing a better prices recommandations to their client. 
In the purpose of this project, as a Data Analyst working for Laplace Immo, I'm in charge of build the new data architecture. 

# DB first approach

All data we needed to store in a Data Base are as following : 

* Property sales in France for half-year period of 2020
* Caracteristics about properties (number of rooms, size, type)
* Street adress of the real property

# Using of PostgreSQL as DBMS

We propose to open a PostgreSQL server. Postgre offer us a easy to use admin interface for monitoring and requesting data base. 
We use [**table_create**](https://github.com/marcadeant/BDD-Immo/blob/main/table_create.sql) written in SQL to build tables and relationnals dependancies

* UML diagram [**here**](https://github.com/marcadeant/BDD-Immo/blob/main/MCD_UML_Diagram) (open file with [draw.io](https://app.diagrams.net/))
* 3NF relational schema [**here**](https://github.com/marcadeant/BDD-Immo/blob/main/mld_bdd_immo.architect) (open file with Power Architect Software or similar)
* Import table from [**here**](https://github.com/marcadeant/BDD-Immo/blob/main/Tables%20BDD) 

# DB installation

1. run **table_create.sql** as a SQL program in a PostegreSQL's shell
2. get cleaning data for feeding the DB [**here**](https://github.com/marcadeant/BDD-Immo/blob/main/Tables%20BDD)
3. import data in PostegreSQL 

# Application

Get free to request the DB to understang the french property market and find your real property at right prices.
<br>
Examples are provided into **Requete_SQL** folder. Click [here](https://github.com/marcadeant/BDD-Immo/tree/main/Reque%CC%82te%20SQL) to test requests with your DB
<br>
**NB** : Data used in this project has been published by the french government

# Requirements 

* PostgreSQL latest version is preferrable (14.1 released in Nov 2021)
* Installation from [Linux](https://www.postgresql.org/download/linux/), [MacOS](https://www.postgresql.org/download/macosx/) or [Windows](https://www.postgresql.org/download/windows/) platforms
* Power Architect can be found [**here**](http://www.bestofbi.com/page/architect_download_os). Be careful to pick the right version according to your operating system 

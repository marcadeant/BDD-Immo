# BDD-Immo
Data Base for property prices's predictions and recommandation

Laplace Immo is a property agency based in France. They want to improve their offer by proposing a better prices recommandations to their client. 
In the purpose of this project, as a Data Analyst working for Laplace Immo, I'm in charge of build the new data architecture. 

# DB first approach

All data we needed to store in a Data Base are as following : 

* Property sales in France for half-year period of 2020
* Caracteristics about properties (number of rooms, size, type)
* Street adress of the real property

# Using of PostegreSQL as DBMS

We propose to open a PostegreSQL server. Postegre offer us a easy to use admin interface for monitoring and requesting data base. 
We use **table_create** written in SQL to build tables and relationnals dependancies

* UML diagram here **link to diagram ** 
* 3NF relational schema here **link to relational schema**

# DB installation

1. run **table_create.sql** as a SQL program
2. get cleaning data for feeding the DB here
3. import data in PostegreSQL 

# Application

Get free to request the DB to understang the french property market and find your real property at right prices.
//
Examples are provided into **Requete_SQL** folder.
NB : Data used in this project has been published by the french government 

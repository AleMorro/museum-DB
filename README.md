# Museum-DB
Database suitable for managing a museum's data with various possibilities for user interactions. Languages: SQL Database: PostgreSQL 
## Introduction
Various scripts to implement a relational Database, including the part of defining tables, populating and testing queries
## Description
The database is designed to manage a platform for a museum. Users who visit it have the ability to both comment on artworks and make stories about multiple artworks to give a personal opinion.
The various SQL scripts implement various pieces of the database:
* DDL: to define the various tables and integrity constraints
* DMLPOP: to populate various tables with fake data
* DMLUPD: to update various table rows
* SQL: to test the various features of the system by making different types of queries

Below are the various scheme describing the structure of the database.

### ER Scheme
![screen](./assets/schema_logico.jpg)
### Relational Scheme
![screen](./assets/schema_relazionale.jpg)
### Integrity Constraints
| Num  |  Description  |
|:-----|:--------:|
| R1   | One _Annotazione_ must be created by a _Utente_ |
| R2   | One _Annotazione_ must refer to an existant _Opera_  |
| R3   | A _Domanda_ must refer to an _Annotazione_, if the _Utente_ has decided to enter it. |
| R4   | A _Storia_ must be created by a _Utente_. |
| R5   | A _Storia_ must be associated with a minimum of 2, maximum of 3 Works. |
| R6   | A _Storia_ must have an ID that identifies it. |
| R7   | A _Opera_ must have an Artist. |
| R8   | An _Artista_ must be the author of at least 1 Work. |
| R9   | A _Raccomandazione_ must reference another _Storia_ characterized by a relationship between the first and second _Storia_ (similar, equal, opposite). |
| R10   | A _Ranking_ to a _Storia_ can exist only if the _Storia_ exists. |
| R11  | A _Gruppo_ must have only 1 Supervisor. |
| R12   | _Users_ must register by providing email, name, gender, date of birth. |
## Contributing
Contribution to budget-app is welcome! If you have an idea for a new feature or bug fix, please open an issue or a pull request.
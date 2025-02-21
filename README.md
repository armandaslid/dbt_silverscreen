# dbt SilverScreen Project  
## Objective:  
To create a comprehensive table summarizing the monthly performance for each movie across all locations. The table will include the following key information for each movie:

* Movie details (ID, title, genre, and studio)
* Location information (each of the three theaters)
* Monthly rental costs for each movie
* Total ticket sales for each movie at each location
* Total revenue generated from ticket sales at each location  
  
### Key Steps in the Process:  
**Clean Movie Data**: Refine and standardize the movie-related information (titles, genres, studios) to ensure consistency and accuracy across the dataset.  
**Unify Location Data**: Combine data from all locations to obtain a complete view of ticket sales and revenue for each movie at each theater during a given month.  
**Merge Rental Costs**: Integrate monthly rental cost data with corresponding sales and revenue information to give a full financial picture for each movie at each location.  

### The final output will be a structured table with the following columns:  
`movie_id`  
`movie_title`  
`genre`  
`studio`  
`month`  
`location`  
`rental_cost`  
`tickets_sold`  
`revenue`  
  
:warning: I will be using the **Snowflake** cloud platform to store datasets, and **dbt** for transformation: cleaning the data, creating models, defining tests, writing YAML files, defining macros, and executing dbt jobs.
  
### Given data sources:  
* [invoices.csv](https://github.com/armandaslid/dbt_silverscreen/blob/main/other_files/invoices.csv)  
* [movie_catalogue.csv](https://github.com/armandaslid/dbt_silverscreen/blob/main/other_files/movie_catalogue.csv)  
* [nj_001.csv](https://github.com/armandaslid/dbt_silverscreen/blob/main/other_files/nj_001.csv)  
* [nj_002.csv](https://github.com/armandaslid/dbt_silverscreen/blob/main/other_files/nj_002.csv)
* [nj_003.csv](https://github.com/armandaslid/dbt_silverscreen/blob/main/other_files/nj_003.csv)  

## Results:  

### Preliminary SilverScreen DAG (Directed Acyclic Graph):  

<img src="https://github.com/armandaslid/dbt_silverscreen/blob/main/other_files/silverscreen_dag.png" alt="Preliminary SilverScreen DAG">  

### Final Project Lineage:  

<img src="https://github.com/armandaslid/dbt_silverscreen/blob/main/other_files/silverscreen_lineage.png" alt="SilverScreen Project Lineage">  

### Snowflake Cloud View:  

<img src="https://github.com/armandaslid/dbt_silverscreen/blob/main/other_files/snowflake_view.png" alt="Snowflake Cloud View">  

### Other results:  

* [Models and schema.yml](https://github.com/armandaslid/dbt_silverscreen/tree/main/models)  
* [Custom tests](https://github.com/armandaslid/dbt_silverscreen/tree/main/tests)  
* [Macros](https://github.com/armandaslid/dbt_silverscreen/tree/main/macros)
* [dbt-generated documentation](https://rp628.us1.dbt.com/accounts/70471823428904/develop/70471823603459/docs/index.html#!/overview)
* [📺 Video presentation](404)  

### Calculate the EPC (Earn per Click) in SQL:

__Question:__ create a SQL script to generate the following table:
<img src='./screenshots/Screenshot 2023-10-18 134631.png'>


__Solution:__ Create a db named UT. There will be an extra table called dim_date created which handles date dimension in data models and it is pre-filled with date values. The rest of tables will be joined with this table as a left join because we want to have all dates available in the data model even if there is no record found in those tables.


In order to see the end results please run the following scripts sequentially in MySQL:

1- tables_creation.sql <br>
2- insert_data_into_tables.sql

The created tables will look like this:<br>
<br>__teansactions:__<br>
<img src='./screenshots/Screenshot 2023-10-18 213315.png'><br> 


<br>__click_partner:__<br>
<img src='./screenshots/Screenshot 2023-10-18 213554.png'><br> 


<br>__partner:__<br>
<img src='./screenshots/Screenshot 2023-10-18 213656.png'><br> 



3- epc_calculation.sql:
Here is the final table:

<img src='./screenshots/Screenshot 2023-10-18 223152.png'>



In case of any further inquiries, please feel free to contact me. 


Thank you!
Moji

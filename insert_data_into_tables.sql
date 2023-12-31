# insert data into click partner

insert into UT.click_partner (id, date, clicksum, partnerid) values
(01,'2023-10-01',3,1),
(02,'2023-10-01',4,2),
(03,'2023-10-02',3,1),
(04,'2023-10-02',1,2),
(05,'2023-10-04',3,1),
(06,'2023-10-04',4,2),
(07,'2023-10-06',3,1),
(08,'2023-10-06',1,2);


# insert data into partner
insert into UT.partner (partnerid, partnername) values
(01,'2023-10-01','TUI'),
(02,'2023-10-01','Expedia');



# insert data into transactions
insert into UT.transactions (transactionid, comission, partnerid, date) values
(01,20,1,'2023-10-01'),
(02,39,1,'2023-10-02'),
(03,35,2,'2023-10-03'),
(04,14,2,'2023-10-02'),
(05,23,1,'2023-10-04'),
(06,45,1,'2023-10-05'),
(07,67,1,'2023-10-05'),
(08,35,1,'2023-10-03'),
(09,14,1,'2023-10-02'),
(10,23,2,'2023-10-01'),
(11,45,2,'2023-10-02'),
(12,67,1,'2023-10-02');


# nsert data into dim_date
insert into UT.dim_date(id, date, day, month, year) values
(01,'2023-10-01',02,10,2023),
(02,'2023-10-02',02,10,2023),
(03,'2023-10-03',03,10,2023),
(04,'2023-10-04',04,10,2023),
(05,'2023-10-05',05,10,2023),
(06,'2023-10-06',06,10,2023),
(07,'2023-10-07',07,10,2023),
(08,'2023-10-08',08,10,2023),
(09,'2023-10-09',09,10,2023),
(10,'2023-10-10',10,10,2023);











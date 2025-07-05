create table invoice(
	invoice_id int identity,
	amount decimal(10,2)
)

-- insert 5 rows without invoice_id
insert into invoice
select 321.87
union all
select 23.56
union all
select 345.67
union all
select 434.54

-- enable indentity_insert to manually insert a row
set identity_insert invoice on

insert into invoice(invoice_id, amount)
select 100, null

select * from invoice

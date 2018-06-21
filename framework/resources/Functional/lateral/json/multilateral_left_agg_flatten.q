select ff.c_custkey, avg(ff.orderamount) as average_amount, sum(ff.l.l_quantity) as l_quantity from (select f.c_custkey c_custkey, f.c_name c_name, f.o.o_orderkey o_orderkey, f.o.o_totalprice as orderamount, flatten(f.o.o_lineitems) as l from (select c_custkey, c_name, flatten(c_orders) as o from customer) f) ff group by ff.c_custkey order by ff.c_custkey limit 50;

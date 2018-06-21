select customer.c_custkey, avg(orders.totalprice) from customer, lateral (select t1.o.o_orderkey as orderkey, t1.o.o_totalprice as totalprice, t1.o.o_lineitems as lineitems from unnest(customer.c_orders) t1(o)) orders, lateral (select * from unnest(orders.lineitems) t2(l)) olineitems group by customer.c_custkey order by customer.c_custkey limit 50;

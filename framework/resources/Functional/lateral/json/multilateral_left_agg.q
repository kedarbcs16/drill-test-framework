select customer.c_custkey, avg(orders.totalprice), sum(olineitems.l_quantity) from customer, lateral (select t1.o.o_orderkey as orderkey, t1.o.o_totalprice as totalprice, t1.o.o_lineitems as lineitems from unnest(customer.c_orders) t1(o)) orders, lateral (select t2.l.l_partkey as l_partkey, t2.l.l_linenumber as l_linenumber, t2.l.l_quantity as l_quantity from unnest(orders.lineitems) t2(l)) olineitems group by customer.c_custkey order by customer.c_custkey limit 50;

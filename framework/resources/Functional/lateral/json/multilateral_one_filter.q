select customer.c_custkey, customer.c_name, orders.orderkey, orders.totalprice, olineitems.l_partkey, olineitems.l_linenumber, olineitems.l_quantity from customer, lateral (select t1.o.o_orderkey as orderkey, t1.o.o_totalprice as totalprice, t1.o.o_lineitems as lineitems from unnest(customer.c_orders) t1(o) where t1.o.o_totalprice > 1000) orders, lateral (select t2.l.l_partkey as l_partkey, t2.l.l_linenumber as l_linenumber, t2.l.l_quantity as l_quantity from unnest(orders.lineitems) t2(l)) olineitems order by customer.c_custkey, orders.orderkey, orders.totalprice, olineitems.l_partkey, olineitems.l_linenumber, olineitems.l_quantity limit 50;

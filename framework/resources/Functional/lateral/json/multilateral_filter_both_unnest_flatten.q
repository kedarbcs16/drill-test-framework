select ff.c_custkey, ff.c_name, ff.o_orderkey,  ff.orderamount, ff.l.l_partkey as l_partkey, ff.l.l_linenumber as l_linenumber, ff.l.l_quantity as l_quantity from (select f.c_custkey c_custkey, f.c_name c_name, f.o.o_orderkey o_orderkey, f.o.o_totalprice as orderamount, flatten(f.o.o_lineitems) as l from (select c_custkey, c_name, flatten(c_orders) as o from customer) f where f.o.o_totalprice > 1000) ff where ff.l.l_linenumber = 2 order by ff.c_custkey, ff.o_orderkey, ff.orderamount, ff.l.l_partkey, ff.l.l_linenumber, ff.l.l_quantity limit 50;

select lineitem.l_quantity from lineitem where cast(lineitem.l_orderkey as int) in (select cast(orders.o_orderkey as int) from orders where o_orderdate > date '1993-01-02') order by lineitem.l_quantity limit 10;

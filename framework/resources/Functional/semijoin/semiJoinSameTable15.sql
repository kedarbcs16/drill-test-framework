select orders.o_totalprice from orders where cast(orders.o_totalprice as int) in (select cast(orders.o_totalprice as int) from orders) order by orders.o_totalprice limit 10;

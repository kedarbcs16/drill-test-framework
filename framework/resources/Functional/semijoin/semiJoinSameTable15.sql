select orders.o_totalprice from orders where orders.o_totalprice in (select orders.o_totalprice from orders) order by orders.o_totalprice limit 10;

select orders.o_totalprice from orders where orders.o_custkey in (select customer.c_custkey from customer) order by orders.o_totalprice limit 10;

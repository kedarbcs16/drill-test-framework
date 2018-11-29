select orders.o_totalprice from orders where cast(orders.o_custkey as int) in (select cast(customer.c_custkey as int) from customer) order by orders.o_totalprice limit 10;

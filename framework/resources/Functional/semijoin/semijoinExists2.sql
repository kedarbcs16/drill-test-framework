SELECT orders.o_totalprice FROM orders WHERE EXISTS (SELECT 1 FROM customer WHERE cast(customer.c_custkey as int ) = cast(orders.o_custkey as int)) order by orders.o_totalprice limit 10;

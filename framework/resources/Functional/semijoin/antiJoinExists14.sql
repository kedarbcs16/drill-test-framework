SELECT orders.o_totalprice FROM orders WHERE not EXISTS (SELECT 1 FROM customer WHERE customer.c_custkey = orders.o_custkey) order by orders.o_totalprice limit 10;

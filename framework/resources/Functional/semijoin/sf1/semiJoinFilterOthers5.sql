select orders.o_totalprice from orders where cast(orders.o_custkey as int) in (select cast(customer.c_custkey as int) from customer where c_acctbal > 2503) and orders.o_totalprice > 85000 order by orders.o_totalprice limit 10;

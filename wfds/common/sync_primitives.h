#define FAS(a, b)    __atomic_exchange_n(a, b, memory_order_seq_cst)
#define CAS(x, a, b) __sync_bool_compare_and_swap(x, a, b)

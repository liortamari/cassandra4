sed -i '/^thrift_prepared_statements_cache_size_mb/d' /etc/cassandra/cassandra.yaml
sed -i '/^start_rpc/d' /etc/cassandra/cassandra.yaml
sed -i '/^rpc_server_type/d' /etc/cassandra/cassandra.yaml
sed -i '/^rpc_port/d' /etc/cassandra/cassandra.yaml
sed -i '/^thrift_framed_transport_size_in_mb/d' /etc/cassandra/cassandra.yaml
sed -i '/^request_scheduler/d' /etc/cassandra/cassandra.yaml
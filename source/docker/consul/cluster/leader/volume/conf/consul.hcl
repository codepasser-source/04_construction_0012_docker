datacenter = "codepasser-cluster"
data_dir = "/consul/data"
encrypt = "b5Q7bb1OKdb3JWmwOy3nq6giEgvsmUViVKj8Xl8HW/g="
log_level = "INFO"
node_name = "leader"
server = true
ui = true
bootstrap_expect = 3
retry_join = ["leader.consul.codepasser.io", "follower1.consul.codepasser.io", "follower2.consul.codepasser.io"]
client_addr = "0.0.0.0"
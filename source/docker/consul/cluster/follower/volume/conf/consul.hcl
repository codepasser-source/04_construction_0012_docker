datacenter = "codepasser-cluster"
data_dir = "/consul/data"
encrypt = "b5Q7bb1OKdb3JWmwOy3nq6giEgvsmUViVKj8Xl8HW/g="
log_level = "INFO"
node_name = "follower"
server = true
ui = true
bootstrap_expect = 2
retry_join = ["leader.consul.codepasser.io", "follower.consul.codepasser.io"]
client_addr = "0.0.0.0"
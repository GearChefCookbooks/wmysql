name "mysql_attr"
description "mysql_attr"
default_attributes(
   :mysql => {
       :service_name => "default",
       :server_root_password => "letmein123",
       :server_debian_password => "letmein123",
       :server_repl_password => "letmein123",
       :data_dir => "/var/lib/mysql",
       :port => 3306,
       :allow_remote_root => false,
       :remove_anonymous_users => true,
       :root_network_acl => nil
       }
)


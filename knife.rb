current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "edwardt"
client_key               "#{current_dir}/edwardt.pem"
validation_client_name   "erl-validator"
validation_key           "#{current_dir}/erl-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/erl"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]

#
# Cookbook Name::data_bag_patcher
# Recipe:: deploy
#
# Copyright 2016 Nick Rycar
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

search_query = "chef_environment:#{delivery_environment} AND recipes:#{node['delivery']['config']['data_bag_patcher']['patching_cookbook']}"

my_nodes = delivery_chef_server_search(:node, search_query)
my_nodes.map!(&:name)

delivery_push_job "deploy_#{node['delivery']['change']['project']}" do
  command 'chef-client'
  nodes my_nodes
end

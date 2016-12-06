#
# Author:: Nick Rycar (<nrycar@chef.io>)
# Cookbook Name:: data_bag_patcher
# Attributes:: default
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

default['delivery_bag_patcher']['acceptance_env'] = workflow_project_acceptance_environment

default['delivery_bag_patcher']['os'] = 'ubuntu'

default['delivery_bag_patcher']['patching_cookbook'] = 'simple_patcher'
  

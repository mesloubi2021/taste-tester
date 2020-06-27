# Copyright 2013-present Facebook
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

Gem::Specification.new do |s|
  s.name = 'taste_tester'
  s.version = '0.0.16'
  s.homepage = 'https://github.com/facebook/taste-tester'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Taste Tester'
  s.description = 'Utility for testing Chef changes using chef-zero'
  s.authors = ['Phil Dibowitz', 'Marcin Sawicki']
  s.extra_rdoc_files = ['README.md', 'LICENSE']
  s.files = %w{README.md LICENSE} + Dir.glob('lib/taste_tester/*.rb') +
            Dir.glob('bin/*') + Dir.glob('scripts/*')
  s.executables = 'taste-tester'
  s.license = 'Apache-2.0'
  s.add_dependency 'between_meals', '>= 0.0.10'
  # without an explicit dependency, json is resolved to 1.7.7 on Ruby 2.4
  # which doesn't compile.
  s.add_dependency 'json', '>= 2.0.0'
  s.add_dependency 'minitar', '>= 0.6.1'
  %w{
    mixlib-config
    colorize
    chef
  }.each do |dep|
    s.add_dependency dep
  end
  %w{
    chef-zero
    knife-solo
    rspec-core
    rspec-expectations
    rspec-mocks
    simplecov
  }.each do |dep|
    s.add_development_dependency dep
  end
  s.add_development_dependency 'rubocop', '0.55.0'
end

#
# Cookbook:: llvm
# Recipe:: package
#
# Copyright:: 2018, Nghiem Ba Hieu
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

llvm_cache_path = Chef::Util::PathHelper.join(Chef::Config[:file_cache_path], 'llvm_install.exe')
package_name = node['llvm']['package_name']

remote_file llvm_cache_path do
  source node['llvm']['source']
  checksum node['llvm']['checksum'] if node['llvm']['checksum']
  backup false
  action :create
end

powershell_script 'Instals LLVM' do
  extend Windows::Helper
  code <<-INSTALL
    # stays and waits for cmd.exe child process to kill
    try
    {
        $installID =$(Start-Process -FilePath "#{llvm_cache_path}" -ArgumentList "/S" -PassThru).Id
        $retries = 0
        While ($retries -lt 5) {
            $parse_list = $(gwmi -Query 'select * from win32_process where name="cmd.exe"')
            If ($parse_list.count -gt 0)
            {
                 foreach ($item in $parse_list)
                 {
                      If ($item.ParentProcessId -eq $installID) { Exit 0 }
                 }
            }
            Start-Sleep -s 15
            $retries += 1
        }
    }
    catch
    {
        Write-Host "Failed to install the package.. exit!"
        Exit 1
    }
INSTALL
  not_if { is_package_installed?(package_name) }
end

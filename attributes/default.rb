package_source = 'http://releases.llvm.org/6.0.0/LLVM-6.0.0-win64.exe'
package_checksum = '2501887b2f638d3f65b0336f354b96f8108b563522d81e841d5c88c34af283dd'

default['llvm']['source'] = package_source
default['llvm']['checksum'] = package_checksum
default['llvm']['install_method'] = 'chocolatey'
default['llvm']['chocolatey']['version'] = '6.0.0.20180508'
default['llvm']['package_name'] = 'LLVM'

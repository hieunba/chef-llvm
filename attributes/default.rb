
llvm_6_src_url = 'http://releases.llvm.org/6.0.0/llvm-6.0.0.src.tar.xz'
llvm_6_src_checksum = '1ff53c915b4e761ef400b803f07261ade637b0c269d99569f18040f3dcee4408'
clang_6_url = 'http://releases.llvm.org/6.0.0/LLVM-6.0.0-win64.exe'
clang_6_checksum = '2501887b2f638d3f65b0336f354b96f8108b563522d81e841d5c88c34af283dd'

default['llvm']['llvm_src_url'] = llvm_6_src_url
default['llvm']['llvm_src_checksum'] = llvm_6_src_checksum
default['llvm']['clang_url'] = clang_6_url
default['llvm']['clang_checksum'] = clang_6_checksum
default['llvm']['install_method'] = 'chocolatey'
default['llvm']['chocolatey']['version'] = '6.0.0.20180508'

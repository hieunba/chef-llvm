name 'llvm'
maintainer 'Nghiem Ba Hieu'
maintainer_email 'hi3unb@gmail.com'
license 'Apache-2.0'
description 'Installs/Configures llvm'
long_description 'Installs/Configures llvm'
version '0.2.0'
chef_version '>= 12.6' if respond_to?(:chef_version)

supports 'windows'

depends 'chocolatey', '~> 1.2.1'
depends 'windows'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
issues_url 'https://github.com/hieunba/chef-llvm/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
source_url 'https://github.com/hieunba/chef-llvm'

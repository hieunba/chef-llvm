# CHANGELOG

This file is used to list changes made in each version of llvm cookbook.

# 0.2.0

Dependent cookbooks

- chocolatey (maintain chocolatey recipe)
- windows

Changes

- Deprecate chocolatey recipe in favor of pacage recipe which prevents rate limiting, and other issues might have while using chocolatey to provision the llvm project.b
- Remove dependent of autohotkey from chocolatey
- Add fixture cookbook to ease of testing purpose
- Fix chocolatey intallation

# 0.1.0

Initial release

- Install LLVM 6.0.0.20180508 using chocolatey by default

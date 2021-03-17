# Change log of [ansible role AlternC](https://github.com/UdelaRInterior/ansible-AlternC)

## [v2.1.1](https://github.com/UdelaRInterior/ansible-AlternC/releases/tag/v2.1.1)

* Previous version succeeded to installed on a proxmox LXC debian buster container, but had performances issues. Installation failed on a KVM Debian buster because of missing sid dependencies and AppArmor bind parsing configuration
* This version succedes to install on a Debian Buster KVM and seems to run ok.

## [v2.1.0](https://github.com/UdelaRInterior/ansible-AlternC/releases/tag/v2.1.0)

* plugins alternc-mailman, alternc-awstats, alternc-rouncube are installed optionnally (issue #4)
* option to open access to mysql and configure a mysql user
* alternc.install runs now as a handler (issue #2)
* several bugs and enhancement for debian buster (but alternc is still RC on buster)

## [v2.0.0](https://github.com/UdelaRInterior/ansible-AlternC/releases/tag/v2.0.0)

* first version for debian buster
* AlternC repo is now defined in variables
* has some strange behaviour, as the need to be ran twice

## [v1.0.0](https://github.com/UdelaRInterior/ansible-AlternC/releases/tag/v1.0.0)

* first running version of the role, for a debian stretch, using Koumbit AlternC 3.5-rc1 packages
* not very idempotent, because of a systematic call to `alternc.install`
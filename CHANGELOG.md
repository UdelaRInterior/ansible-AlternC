# Change log of [ansible role AlternC](https://github.com/UdelaRInterior/ansible-AlternC)

## [v3.2.0-rc1](https://github.com/UdelaRInterior/ansible-AlternC/releases/tag/v3.2.0-rc1)

* Solves issue #15 (but `https_force` variable has no effet on AlternC panel, which is always in https)
* parially solves #12, and gives a workaround running playbook a second time with tag `alternc_custom`
* solves issue 19 with a workaround: a flag to set or not DNS allowed slave IPs, to solve idempotency
* a [branch `web_api`](https://github.com/UdelaRInterior/ansible-AlternC/tree/web_api) is let to explore
  further the scrapping of AlternC web interface, wich may solve better previous issues, but we let them there, because they are minor.
* this version should be considered as completed for AlternC installation in buster, along with alternc-slavedns instances, at least up to AlternC 3.5 release.  

## [v3.1.1](https://github.com/UdelaRInterior/ansible-AlternC/releases/tag/v3.1.1)

* Simplify reducing unneeded dependencies or packages
* remove from the role hooks and workaround already fixed in AlternC
* minor interface change in v3.0.0-rc1 API: `alternc_php_version` instead of `alternc_php_version_custom`

## v3.1.0 (this intermediate version wasn't tagged)

* Management of customizable logos: login page, panel menu and favicon.

## [v3.0.0-rc1](https://github.com/UdelaRInterior/ansible-AlternC/releases/tag/v3.0.0-rc1)

* Ability to configure slave DNS accounts
* Enhancement of AlternC configuration morover debconf, setting values in the database: 
    * avoid using `ignore_errors:` ansible directive, delegating exception handle to better SQL queries, 
    * Refactor of the variables API for quotas, TLDs and AlternC variables, which are now more exhaustive and don't need quoting inside quoting,
    * options to maintain or flush the quotas profiles and TLDs
* Starting english translation of API, comments and README
* Some code reorganisation and refactor
* Dynamic default values of variables, using ansible_facts. The role now installs with no additional variables defined, guessing values (as does debconf AlternC installer)

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
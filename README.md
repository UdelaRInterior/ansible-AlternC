# Role AlternC

Installs and configures [AlternC](https://alternc.com/Home-en) in a server (baremetal, virtual or container - but this last has still some problems with Let's Encrypt certificates).

Configures AltenrC hosting panel, that allows any user who has an account to access AltenrC web GUI, to manage her hosting zones, configure its DNS, web virtual hosts in sub-domains, mysql databases, ftp accounts as well as mail addresses and mailboxes. Content of web site can be uploaded through FTP as well as through Alternc web GUI.

The role also manages the mailman, awstat and roundcube plugins. It handles also the logos that can be customized 

## Requirements

AlternC runs on a debian distro. Put the role in your `requirements.yml` file :

```yaml
# Role Alternc
- name: alternc
  src: https://github.com/UdelaRInterior/ansible-AlternC.git
  scm: git
```
Or install it manually in your roles' folder:
```bash
# Set the working directory to your Ansible AltenrnC project root
$ cd myroles

# Install altenrc role
$ ansible-galaxy install udelarinterior.alternc
```

and call it in your playbooks to run it against a freshlly installed Debian stretch or buster host.  

## Role Variables

Variables needed are listed and documented in files in the [`/defaults/main`](defaults/main) folder:
* [`05_packages.yml`](/defaults/main/05_packages.yml): Repositories and dependencies packages related variables, 
* [`10_mysql.yml`](/defaults/main/10_mysql.yml): MySQL related variables, 
* [`20_alternc.yml`](/defaults/main/20_alternc.yml): AlternC main variables, mainly given to the package installation with debconf ansible module 
* [`30_alternc-panel.yml`](/defaults/main/30_alternc-panel.yml): Further configuration of AlternC interface, including AlternC TLDs, quota profiles and variables
* [`40_alternc-plugins.yml`](/defaults/main/40_alternc-plugins.yml): Mailman, roundcube, awstat and piwik related variables
* [`50_post-install.yml`](/defaults/main/50_post-install.yml): php.ini, Proftpd and other useful additional configuration
* [`60_alternc-slavdns.yml`](/defaults/main/60_alternc-slavdns.yml): accounts configuration for alternc-slavedns secondary servers' access
* [`70_alternc-custom.yml`](/defaults/main/70_alternc-custom.yml): customization of alternc (Login page logo, panel menu logo and favicon customization )

They include the debconf paramenters needed when installing AltenrC package and dependencies, as well as those needed to configure after the AltenrC panel (hosting web GUI).

Almost all default values are those already provided by AlternC. Several default values are defined from ansible facts so you need to define only your specific values (like the desktop DNS if you want to define it different than the fqdn of the host). The role now allows to set and maintain almost all the parameters of AlternC. 

## Dependencies

There are no required dependencies from other ansible roles, but the role provides examples of configuration parameters for PHP, suited for an AlternC installation, that can be set with the role [`udelarinterior.configure_php_ini` ](https://github.com/UdelaRInterior/ansible-role-configure-php-ini).

## Playbook example

With: 
* the role insalled in your local controller, 
* a debian buster installed in `myserver.mydomain.org`
* DNS configured with, for instance, a CNAME record for `panel.mydomain.org` returning `myserver.mydomain.org`

You can install AlternC with all its plugins with a playbook such as:

```YAML
- name: Configure AlternC on an already deployed OS Linux Debian 
  hosts: myserver.mydomain.org
  remote_user: deploy
  become: yes

  vars:
    alternc_debconf_desktopname: panel.mydomain.org

  roles:
  - udelarinterior.alternc

```

## License

(c) Universidad de la República (UdelaR), Red de Unidades Informáticas de la UdelaR en el Interior. Licenced under GPL-v3

## Author Information

- Oscar Ford: oscarf@ei.udelar.edu.uy - Espacio Interdisciplinario - UdelaR
- [Santiago Martínez](https://github.com/santiagomr) - Comisión Coordinadora del Interior (CCI) - UdelaR
- Cristhian Choque - Comisión Coordinadora del Interior (CCI) - UdelaR
- [Daniel Viñar](https://github.com/ulvida/) - Comisión Coordinadora del Interior (CCI) - UdelaR

Work derived from a first playbook for a baremetal server: [oscarf/alternc35_ansible](https://git.interior.edu.uy/oscarf/alternc35_ansible).
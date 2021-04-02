# Role AlternC

Install and configure [AlternC](https://alternc.com/Home-en) in a server (baremetal, virtual or container).

Configures AltenrC hosting panel, that allows any user who has an account to access AltenrC web GUI, to manage
the hosting zones, configure its DNS, web virtual hosts in sub-domains, mysql databases, ftp accounts as well as mail addresses and mailboxes.

Content of web site can be uploaded through FTP as well as through Alternc web GUI.

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
* [`30_alternc_panel.yml`](/defaults/main/30_alternc_panel.yml): Further configuration of AlternC interface, including AlternC TLDs, quota profiles and variables
* [`40_alternc_plugins.yml`](/defaults/main/40_alternc_plugins.yml): Mailman, roundcube, awstat and piwik related variables
* [`50_post_install.yml`](/defaults/main/50_post_install.yml): php.ini, Proftpd and other useful additional configuration
* [`60_alternc_slavdns.yml`](/defaults/main/60_alternc_slavdns.yml): accounts configuration for alternc-slavedns secondary servers' access

They include the debconf paramenters needed when installing AltenrC package and dependencies, as well as those needed to cofigure after the AltenrC panel
(hosting web GUI).

Default values are close to AlternC defaults. Several values, as the IP and DNS need to be defined when calling the role, according to your environement.

## Dependencies

There are no required dependencies form other ansible roles, but the role provides examples of configuration parameters for PHP, suited for an AlternC installation, that can be set with the role [`udelarinterior.configure_php_ini` ](https://github.com/UdelaRInterior/ansible-role-configure-php-ini).

## Playbook example


## License

(c) Universidad de la República (UdelaR), Red de Unidades Informáticas de la UdelaR en el Interior. Licenced under GPL-v3

## Author Information

- Oscar Ford: oscarf@ei.udelar.edu.uy - Espacio Interdisciplinario - UdelaR
- [Santiago Martínez](https://github.com/santiagomr) - Comisión Coordinadora del Interior (CCI) - UdelaR
- Cristhian Choque - Comisión Coordinadora del Interior (CCI) - UdelaR
- [Daniel Viñar](https://github.com/ulvida/) - Comisión Coordinadora del Interior (CCI) - UdelaR

Work derived from a first playbook for a baremetal server: [oscarf/alternc35_ansible](https://git.interior.edu.uy/oscarf/alternc35_ansible).
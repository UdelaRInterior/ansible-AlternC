# Role AlternC

Install and configure [AlternC](https://alternc.com/Home-en) in a server (baremetal, virtual or container).

Configures AltenrC hosting panel, that allows any user thas has an account to access AltenrC web GUI, to manage
the hosting zones, configure its DNS, web virtual hosts in sub-domains, mysql databases, ftp accounts and mailboxes.

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

and call it in your playbooks to run it against a freshlly installed Debian Stretch.

## Role Variables

Variables needed are listed and documented in the `/defaults/main.yml` file. They include the debconf paramenters
needed when installing AltenrC package and dependencies, as well as those needed to cofigure after the AltenrC panel
(hosting web GUI).

Most of them need to be defined when calling the role, according to your environement.

## Dependencies

There are no dependencies form other ansible roles, but you need to have a host with a Debian Stretch installed.

## License

(c) Universidad de la República (UdelaR), Red de Unidades Informáticas de la UdelaR en el Interior. Licenced under GPL-v3

## Author Information

- Oscar Ford: oscarf@ei.udelar.edu.uy - Espacio Interdisciplinario - UdelaR
- [Santiago Martínez](https://github.com/santiagomr) - Comisión Coordinadora del Interior (CCI) - UdelaR
- Cristhian Choque - Comisión Coordinadora del Interior (CCI) - UdelaR
- [Daniel Viñar](https://github.com/ulvida/) - Comisión Coordinadora del Interior (CCI) - UdelaR

Work derived from a first playbook for a baremetal server: [oscarf/alternc35_ansible](https://git.interior.edu.uy/oscarf/alternc35_ansible).
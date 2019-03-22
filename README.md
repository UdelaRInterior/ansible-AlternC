# Role AlternC

Install and configure [AlternC](https://alternc.com/Home-en) in a server (baremetal, virtual or container.

Configures AltenrC hosting panel, that allows any user thas has an account to access AltenrC web GUI, to manage
the hosting zones, configure its DNS, web virtual hosts in sub-domains, mysql databases, ftp accounts and mailboxes. 

Content of web site can be uploaded through FTP as well as through Alternc web GUI. 

## Requirements

AlternC runs on a debian distro. Put the role in your `requirements.xml` file : 

```
# Role Alternc
- name: alternc
  src: https://github.com/UdelaRInterior/ansible-AlternC.git
  scm: git
```
Or install it manually in your roles' folder:  
```
# Set the working directory to your Ansible AltenrnC project root
$ cd myroles

# Install altenrc role
$ ansible-galaxy install UdselaRInterior.alternc
```
and call it in your playbooks to run it against a freshlly installed debian stretch. 

## Role Variables

Variables needed are listed and documented in the `/defaults/main.yml` file. They include the debconf paramenters 
needed when installing AltenrC package and demendencies, as well as those needed to cofigure after the AltenrC panel
(hosting web GUI). 

Most of them need to be defined when calling the role, according to your environement. 

## Dependencies

There are no dependencies form other ansible roles, but you need to have a host with a debian stretch installed. 

## License

(c) Universidad de la República (UdelaR), Red de Unidades Informáticas de la UdelaR en el Interior. 
licenced under GPL-v3

## Author Information

Oscar Ford: oscarf@ei.udelar.edu.uy - Espacio Interdisciplinario, UdelaR
Cristhian Choque - Comisión Coordinadora del Interior (CCI) - UdelaR
Daniel Viñar - CCI - UdelaR (ulvida)
Santiago Martínez - CCI - UdelaR

Work derived froma first playbook for a baremetal server: [oscarf/alternc35_ansible](https://git.interior.edu.uy/oscarf/alternc35_ansible).





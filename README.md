# Role Name

Adds a <SERVICE_NAME> service to your [Ansible Container](https://github.com/ansible/ansible-container) project. Run the following commands
to install the service:

```
# Set the working directory to your Ansible Container project root
$ cd myproject

# Install the service
$ ansible-container install <USERNAME.ROLE_NAME>
```

## Requirements

- [Ansible Container](https://github.com/ansible/ansible-container)
- An existing Ansible Container project. To create a project, simply run the following:
    ```
    # Create an empty project directory
    $ mkdir myproject

    # Set the working directory to the new directory
    $ cd myproject

    # Initialize the project
    $ ansible-container init
    ```

- Continue listing any prerequisites here...


## Role Variables

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set
via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

## Dependencies

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

## License

GPL-v3 

## Author Information

First playbook for a baremetal server: [oscarf/alternc35_ansible](https://git.interior.edu.uy/oscarf/alternc35_ansible)
Oscar Ford: oscarf@ei.udelar.edu.uy - Espacio Interdisciplinario, Udelar. 
Convert to role: Cristhian Choque - CCI - UdelaR
Publish role: Daniel Viñar - CCI - UdelaR (ulvida)





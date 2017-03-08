##This module adds the default sudoers file, if it exists, for a user listed in hiera.

Users are defined in a hiera yaml file, this can be in common.yaml or in any other yaml file as follows:
```
users:
  - user1
  - user2
  - user3
```  
When puppet runs it compiles a list of users and looks through the files directory for a match, if it doesn't find one it moves onto the next user. If it does find a match the file is copied over to ```/etc/sudoers.d```.
```
sudo
├── examples
│   └── init.pp
├── files
│   ├── user1_sudo
│   └── user2_sudo
├── manifests
│   └── init.pp
└── README.md
```

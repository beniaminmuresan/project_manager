# README

This README would normally document whatever steps are necessary to get the
application up and running.

---
# Setup project using Docker (recommended)
---
- Install Docker Engine (installation steps [here](https://docs.docker.com/engine/install/linux-postinstall/))
- Post installation additional step:
  - Create a docker group
  
  ``sudo groupadd docker``
  - Add user to the group

  ``sudo usermod -aG docker $USER``

  ``sudo gpasswd -a $USER docker``

  ``newgrp docker``
  
- Install Docker Compose (installation steps [here](https://docs.docker.com/compose/install/))

- Clone the current project and navigate inside the project's directory.

```
docker-compose up --build
```

- Open another terminal tab in order to set up the db:
```
docker-compose run web rails db:setup
```

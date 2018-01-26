# Before Start

I will assume that you are already enabled the ```Swarm Mode``` in Docker, if not, enable it:
```
docker swarm init
```

# Stack Infrastructure 

This is what you are going to build
![stack](/diagram.png?raw=true "Stack")

# Clone the Repository
```
git clone https://github.com/nezarfadle/docker-microservices-helloworld.git
cd docker-microservices-helloworld
```

# Build the Stack Images

Before you start the Microservices Stack we need to build the Applications Images

```bash
docker build -t admins_app:latest . --file Admins.Dockerfile
docker build -t users_app:latest . --file Users.Dockerfile
```

# Start Microservices Stack

Here is where the fun part begins

```bash
docker stack deploy -c NginxStack.yml proxy
docker stack deploy -c UsersStack.yml users
docker stack deploy -c AdminsStack.yml admins
```

# How to access the Applications

+ [Admins API](http://localhost:9090/admins)
+ [Users API ](http://localhost:9090/users)
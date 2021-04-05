# docker-forge
 Simple Minecraft Forge server running in a docker container.

# Setup
This docker container requires a volume to edit any variable as there aren't any environment variables mapped as of now. 
The volume needs to be mapped to /forge in the container. The port 25565 needs to be exposed to 25565 in the container.

You can use 
```bash
docker run -v /path/on/host:/forge -p 25565:25565 floridaman7588/forge-server
``` 
to run the container.

This container was desinged in a way that allows for ALL of the servers files to be accesed from the volume, which is why there are no variables. It is a very manual setup, but it's better than most images I've seen.

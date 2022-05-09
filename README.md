# Archived
I'm archiving this because there is better software out there. I created this originally because existing images didn't do what I wanted them to do, this is no longer the case. Please use [itzg/minecraft-server](https://github.com/itzg/minecraft-server) instead


# docker-forge
 Simple Minecraft Forge server running in a docker container.

# Setup
This docker container requires a volume to edit any variable as there aren't any environment variables mapped as of now. 
The volume needs to be mapped to /forge in the container. The port 25565 needs to be exposed to 25565 in the container.
Make sure to replace (version) with your desired version. (eg. 1.7.10, 1.12.2, 1.16.5, etc.)
You can use 
```bash
docker run -v /path/on/host:/forge -p 25565:25565 floridaman7588/forge-server:(version)
``` 
to run the container.

This container was desinged in a way that allows for ALL of the servers files to be accesed from the volume, which is why there are no variables. It is a very manual setup, but it's better than most images I've seen.
In the future, or somethime soon anyways, I will be adding variables for easier configuration. The next update to the image will most likely include a handful of variables for configuring the server.properties file.

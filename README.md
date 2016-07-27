Dockerfiles for development environment

# Conventions
1. All images are under `carltonf` namespace.
2. Versions are not strictly tracked. When needed, date like `20170726` will be
   used.
3. To keep docker build context clean, image's documents can be found in this
   document, `README-<img>.md`or `Dockerfile` itself.
4. Image can be built like, replace `tsalg`:
  ```sh
    cd tsalg/;
    docker build . -t tsalg:latest
  ```
# Info
## tsalg
## obs-toolbox
## mongo-hacker

Dockerfiles for development environment

# Conventions
1. All images are under `carltonf` namespace. Repo name is the same as
   subdirectory name.
2. Versions are not strictly tracked. When needed, date like `20170726` will be
   used.
3. To keep docker build context clean, image's documents can be found in this
   document, `README-<img>.md`or `Dockerfile` itself.
4. Image can be built like, replace `tsalg` with image name:

  ```sh
    cd tsalg/;
    docker build . -t tsalg:latest
  ```

# Info

## tsalg

## obs-toolbox

## mongo-hacker

## buildenv-clang

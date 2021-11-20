# [42valgrind-docker](https://github.com/solareenlo/42valgrind-docker)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/solareenlo/42valgrind/latest) ![Docker Pulls](https://img.shields.io/docker/pulls/solareenlo/42valgrind)

## Usage
```shell
docker build . -t valgrind
docker run -it --rm -v $(pwd):/code valgrind
make re
valgrind --leak-check=full --show-leak-kinds=all ./a.out

# or
docker run -it --rm -v $PWD:/code solareenlo/42valgrind
make re
valgrind --leak-check=full --show-leak-kinds=all ./a.out
```

# [42valgrind-docker](https://github.com/solareenlo/42valgrind-docker)

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

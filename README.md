## Micronaut 3.4.1 Documentation

- [User Guide](https://docs.micronaut.io/3.4.1/guide/index.html)
- [API Reference](https://docs.micronaut.io/3.4.1/api/index.html)
- [Configuration Reference](https://docs.micronaut.io/3.4.1/guide/configurationreference.html)
- [Micronaut Guides](https://guides.micronaut.io/index.html)
---

- [Shadow Gradle Plugin](https://plugins.gradle.org/plugin/com.github.johnrengelman.shadow)
## Feature http-client documentation

- [Micronaut HTTP Client documentation](https://docs.micronaut.io/latest/guide/index.html#httpClient)



docker build . -t app-vacuum:latest
docker run -it -p 80:80 app-vacuum


docker exec -it 88b9402d27f2 bash   


## Docker

### CleanUp
docker image rm $(docker images -q)
docker container stop $(docker ls -aq)
docker container rm $(docker container ls -aq)

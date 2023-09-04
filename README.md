# rails-sandbox


```
$ docker build -t app
```

対話型
```
$ docker run -v .:/app -it app /bin/bash
```

```
$ docker run -v ./:/app -p 3000:3000 app
```
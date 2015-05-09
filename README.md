# nginx-503

I recommend to use this alongside with https://github.com/jwilder/nginx-proxy. I use it for following use-case. Imagine you have
an app running on **api_v1.project.com** and you want to put it under maintenance.

You would do e.g.:

```docker stop api_v1```

and then run nginx-503:

```
docker run --name maintanence -d -e NGINX_RESPONSE=maintanence -e VIRTUAL_HOST=api_v1.project.com artworkad/nginx-503
```

All requests that go to **api_v1.project.com** will result in a 503 "maintanence" reponse.

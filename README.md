# nginx-503

I recommend to use this alongside with https://github.com/jwilder/nginx-proxy. I use it for following use-case: imagine you have
an app running on **api_v1.project.com** and you want to put it under maintenance.

You would do:

```docker stop apiv1```

and then:

```docker run --name maintanence -d -e NGINX_RESPONSE=maintanence -e VIRTUAL_HOST=apiv1.project.com artworkad/nginx-503```

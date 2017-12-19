Falcon Boilerplate!
===================
If you like [Falcon](https://falconframework.org/), but you miss the organization of Django or other MVC, you can use this boilerplate.

[Falcon](https://falconframework.org/) is a bare-metal Python web API framework for building very fast app backends and microservices. 

----------

Running Server
-------------

Generic run command:

`gunicorn -b 0.0.0.0:8000 wsgi:app`

Useful gunicorn flags for development:

`gunicorn -b 0.0.0.0:8000 --reload --access-logfile - wsgi:app`

----------

Directory Structure
--------------------

***The layout is subject to change, I'm still trying to decide whether this is the best layout.*** 

However if you plan on adopting this boilerplate, I'll try to make sure that the current run script will always work.

```
project
└───app
│   │   __init__.py
│   │   settings.py
│   │   urls.py
│   │   views.py
│   │
│   └───templates
│       │   base.html
│       │   index.html
│
└───bin
│   │  gunicorn_start.sh
│
|   .gitignore
│   README.md    
│   requirements.txt
|   wsgi.py
```

----------

Notes
--------------------

I've added Jinja2 templating, but if you plan on only having web API framework, you can remove the `app/templates` directory and `web/settings.py` file.

Before you go crazy on me because I'm missing the models part of MVC, I left this out purposely. This is so you can pick your own database/ORM technology if you decide to use one.

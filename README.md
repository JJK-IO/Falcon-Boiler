Falcon Boilerplate!
===================
If you like [Falcon](https://falconframework.org/), but you miss the organization of Django or other MVC, you can use this boilerplate.

[Falcon](https://falconframework.org/) is a bare-metal Python web API framework for building very fast app backends and microservices. 

----------

Running Server
-------------

`gunicorn -b 0.0.0.0:8000 wsgi:app`

----------

Directory Structure
--------------------

***The layout is subject to change, I'm still trying to decide whether this is the best layout.*** 

However if you plan on adopting this boilerplate, I'll try to make sure that the current run script will always work.

```
project
└───web
│   │   __init__.py
│   │   settings.py
│   │   urls.py
│   │   views.py
│   │
│   └───templates
│       │   base.html
│       │   index.html
│
|   .gitignore
│   README.md    
│   requirements.txt
|   wsgi.py
```

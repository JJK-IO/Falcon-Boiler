import falcon

from web.urls import urlpatterns

# falcon.API instances are callable WSGI apps
app = falcon.API()

# things will handle all requests to the '/things' URL path
for url, view in urlpatterns:
    app.add_route(url, view)

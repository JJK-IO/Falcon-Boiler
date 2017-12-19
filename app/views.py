import falcon

from app.settings import env


class IndexView:
    def on_get(self, req, resp):
        """Handles GET requests"""
        stuff = "STUFF IS AWESOME"
        resp.status = falcon.HTTP_200  # This is the default status
        resp.content_type = falcon.MEDIA_HTML
        resp.body = env.get_template("index.html").render({"stuff": stuff})

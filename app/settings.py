import os
from jinja2 import Environment, PackageLoader, select_autoescape

APPLICATION_NAME = "app"
TEMPLATE_LOCATION = "templates"

STATIC_PATH = os.path.join(os.getcwd(), 'static/')

env = Environment(
    loader=PackageLoader(APPLICATION_NAME, TEMPLATE_LOCATION),
    autoescape=select_autoescape(['html', 'xml'])
)

env.globals['STATIC_PREFIX'] = '/'
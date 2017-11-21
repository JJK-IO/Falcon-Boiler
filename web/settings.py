from jinja2 import Environment, PackageLoader, select_autoescape

APPLICATION_NAME = "web"
TEMPLATE_LOCATION = "templates"

env = Environment(
    loader=PackageLoader(APPLICATION_NAME, TEMPLATE_LOCATION),
    autoescape=select_autoescape(['html', 'xml'])
)

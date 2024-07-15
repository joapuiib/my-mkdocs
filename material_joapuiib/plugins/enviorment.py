from mkdocs.plugins import BasePlugin

class EnviormentPlugin(BasePlugin):

    def __init__(self):
        self.enabled = True
        self.total_time = 0
        self.is_dirty = False

        self.is_building = True

    def on_startup(self, *, command, dirty):
        self.is_dirty = dirty

    def on_serve(self, server, config, builder):
        self.is_building = False
        return server

    def on_page_context(self, context, page, config, nav):
        context['build'] = self.is_building
        return context

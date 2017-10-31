# coding: utf-8

from project_template.core.basic import Basic

# ...
class Density(Basic):

    def __init__(self, starts, ends):
        """
        Density constructor.

        Creates a density object.
        """

        # ... first we create the clapp object
        Basic.__init__(self)
        # ...

        # ... then we set the new id
        self._id = self.com.newID("density")
        # ...

        # ...
        self.com.core.density_4d_create(self.id, starts, ends)
        # ...

    def __del__(self):
        """
        destroys the current object
        """
        self.com.core.density_4d_free(self.id)
        self.com.freeID("density", self.id)
        self._id = None

    def __str__(self):
        """
        prints info about this object.
        """
        self.com.core.density_4d_print_info(self.id)
        line = ""
        for d in self.infoData:
            line += str(d + " : " + str(self.infoData[d]))
            line += "\n"
        return line
# ...

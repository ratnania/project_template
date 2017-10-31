# coding: utf-8

import numpy as np

from project_template.core.basic import Basic

# ...
class Density(Basic):

    def __init__(self, starts, ends):
        """
        Density constructor.

        Creates a density object.
        """

        # ...
        p_dim = len(starts)

        if not(p_dim in [4, 5]):
            raise ValueError('Only 4d and 5d density are implemented.')

        self._p_dim = p_dim
        # ...

        # ... first we create the clapp object
        Basic.__init__(self)
        # ...

        # ... then we set the new id
        self._id = self.com.newID(self.label)
        # ...

        # ...
        starts = np.asarray(starts, dtype=int)
        ends   = np.asarray(ends,   dtype=int)

        self._starts = starts
        self._ends   = ends
        # ...

        # ...
        if self.p_dim == 4:
            self.com.core.density_4d_create(self.id, starts, ends)
        elif self.p_dim == 5:
            self.com.core.density_5d_create(self.id, starts, ends)
        # ...

    def __del__(self):
        """
        destroys the current object
        """
        if self.p_dim == 4:
            self.com.core.density_4d_free(self.id)
        elif self.p_dim == 5:
            self.com.core.density_5d_free(self.id)

        self.com.freeID(self.label, self.id)
        self._id = None

    def __str__(self):
        """
        prints info about this object.
        """
        if self.p_dim == 4:
            self.com.core.density_4d_print_info(self.id)
        elif self.p_dim == 5:
            self.com.core.density_5d_print_info(self.id)

        line = ""
        for d in self.infoData:
            line += str(d + " : " + str(self.infoData[d]))
            line += "\n"
        return line

    @property
    def label(self):
        return 'density_{0}d'.format(str(self.p_dim))

    @property
    def p_dim(self):
        return self._p_dim

    @property
    def starts(self):
        return self._starts

    @property
    def ends(self):
        return self._ends
# ...

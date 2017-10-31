# -*- coding: UTF-8 -*-
from project_template.density.density import Density

def test1():
    # ...
    starts = [3,3,3,3]
    ends   = [6,6,6,6]
    f_4d = Density(starts, ends)

    print ('id(f_4d) = {0}'.format(f_4d.id))
    # ...

    # ...
    starts = [2,2,2,2]
    ends   = [5,5,5,5]
    g_4d = Density(starts, ends)

    print ('id(g_4d) = {0}'.format(g_4d.id))
    # ...

    # ...
    starts = [3,3,3,3,3]
    ends   = [6,6,6,6,6]
    f_5d = Density(starts, ends)

    print ('id(f_5d) = {0}'.format(f_5d.id))
    # ...


test1()

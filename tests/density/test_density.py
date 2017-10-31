# -*- coding: UTF-8 -*-
import matplotlib.pyplot as plt
import numpy as np
from project_template.density.density import Density

def test1():
    starts = np.asarray([3,3,3,3], dtype=int)
    ends   = np.asarray([6,6,6,6], dtype=int)
    f1 = Density(starts, ends)
#    print ("V_1.id : ", V_1.id)

    print "test1: passed"


test1()

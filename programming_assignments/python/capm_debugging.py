# -*- coding: utf-8 -*-
"""
Created on Thu Jul  1 19:31:36 2021

@author: apt4c
"""

# Boulevard of Broken Code
# CAPM Debugging

# TASK: For each snippet, determine what is wrong with the code, 
#       and how to fix it. Some snippets will break, while others 
#       contain pernicious errors that produce incorrect results.
#       We use the pdb module to step through the code.


import numpy as np
import pdb

# create random data
x = np.random.rand(100, 1)
y = np.random.rand(100, 1)

# Broken version 1
def beta_sensitivity(x, y):
    
    breakpoint()
    out = []
    nobs = x.shape[0]
    for ix in range(nobs):
        np.delete(x, ix).reshape(-1,1)
        np.delete(y, ix).reshape(-1,1)
    
        bi = np.matmul(np.matmul(np.linalg.inv(np.matmul(x.transpose(), x)), x.transpose()), y)
        out.append((ix, bi[0][0]))
        
    return out


beta_sensitivity(x, y)


#################################################################################
# Broken version 2

# create random data
x = np.random.rand(100, 1)
y = np.random.rand(100, 1)

def beta_sensitivity(x, y):
    
    breakpoint()
    out = []
    nobs = x.shape[0]
    for ix in range(nobs):
        x = np.delete(x, ix).reshape(-1,1)
        y = np.delete(y, ix).reshape(-1,1)
    
        bi = np.matmul(np.matmul(np.linalg.inv(np.matmul(x.transpose(), x)), x.transpose()), y)
        out.append((ix, bi[0][0]))
        
    return out


beta_sensitivity(x, y)


#################################################################################
# Broken version 3

# create random data
x = np.random.rand(100, 1)
y = np.random.rand(100, 1)

def beta_sensitivity(x, y):
    
    out = []
    nobs = x.shape[0]
    for ix in nobs:
        xx = np.delete(x, ix).reshape(-1,1)
        yy = np.delete(y, ix).reshape(-1,1)
    
        bi = np.matmul(np.matmul(np.linalg.inv(np.matmul(xx.transpose(), xx)), xx.transpose()), yy)
        out.append((ix, bi[0][0]))
        
    return out


beta_sensitivity(x, y)

#################################################################################
# Broken version 4

# 1) Make a copy of the code
# 2) Introduce one or more errors to break the code
# 3) Share your code with another student, and see if they can debug

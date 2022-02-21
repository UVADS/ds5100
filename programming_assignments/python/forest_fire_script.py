# -*- coding: utf-8 -*-
"""
Created on Wed Mar 31 10:57:53 2021

@author: apt4c
"""
#path_to_data = "https://archive.ics.uci.edu/ml/machine-learning-databases/forest-fires/forestfires.csv"


# Print the following (1 PT EACH FOR TOTAL 10 POINTS):
# your name and short description of the script
# path_to_data
# fire.head(3)
# coord_builder(X, Y)[:5]
# (min(area), max(area))
# lx(area[-10:])
# np.unique(month)
# uniq_mos
# arr_filt
# mean_sq_err(FFMC)



import pandas as pd
import numpy as np
import sys

print("Adam Tashman. PURPOSE: This script applies functions to forest fire data",'\n')

path_to_data = sys.argv[1]
print(path_to_data,'\n')

fire = pd.read_csv(path_to_data)

print(fire.head(3),'\n')

# extract the spatial coords

X, Y = fire.X.values, fire.Y.values

def coord_builder(X, Y):
    """
    Take coordinates X, Y as inputs a build ordered pairs (list of tuples)
    """   
    z = zip(X, Y)
    return list(z)

print(coord_builder(X, Y)[:5], '\n')

# extract values for area
area = fire.area.values

print((min(area), max(area)),'\n')

lx = lambda x: np.log10(1 + x)
print(lx(area[-10:]),'\n')

month = fire.month.values

print(np.unique(month),'\n')

uniq_mos = set([mo for mo in month if mo.startswith('a')])
print(uniq_mos,'\n')

dmc = fire.DMC.values

def bandpass_filter(arr, lower, upper):
    return arr[(arr > lower) & (arr < upper)]

arr_filt = bandpass_filter(dmc, 25, 35)
print(arr_filt,'\n')

FFMC = fire.FFMC.values

def mean_sq_err(arr):
    mu = arr.mean()
    tot = 0
    for ar in arr:
        tot += (ar - mu) ** 2
    return tot

print(mean_sq_err(FFMC))

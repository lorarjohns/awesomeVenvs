# To add a new cell, type '# %%'
# To add a new markdown cell, type '# %% [markdown]'
# %% Change working directory from the workspace root to the ipynb file location. Turn this addition off with the DataScience.changeDirOnImportExport setting
# ms-python.python added
import os
try:
	os.chdir(os.path.join(os.getcwd(), '../awesomeVenvs'))
	print(os.getcwd())
except:
	pass

# %%
print("This is a demonstration notebook!")


# %%
import numpy as np


# %%
mu, sigma = 0, 0.2
my_random = np.random.normal(mu, sigma, 10000)


# %%
print(my_random)


# %%
import matplotlib.pyplot as plt 
count, bins, ignored = plt.hist(my_random, 30, density=True)
plt.plot(bins, 1/(sigma * np.sqrt(2 * np.pi)) * np.exp( - (bins - mu)**2 / (2 * sigma**2)),
linewidth=3, color='y')
plt.show()


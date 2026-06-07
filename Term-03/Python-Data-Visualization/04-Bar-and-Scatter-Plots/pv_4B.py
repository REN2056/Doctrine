'''
WAPP to demonstrate how to draw a scatter plot using matplotlib
'''

import matplotlib.pyplot as plt
import numpy as np

x=np.random.randn(100)
y=np.random.randn(100)

plt.title('SCATTER PLOT')
plt.xlabel('X - AXIS')
plt.ylabel('Y - AXIS')
plt.scatter(x,y,color='gold')

plt.figtext(0.15, 0.95, 'ADITI A MURTHY',ha='left',va='top', color='orange')
plt.figtext(0.15, 0.91,  '1JS24CS007', ha='left',va='top',color= 'goldenrod')

plt.show()
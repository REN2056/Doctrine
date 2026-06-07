'''
WAPP to demonstrate how to draw a histogram using matplotlib
'''

import matplotlib.pyplot as plt
import numpy as np

data = np.random.normal(100, 10, 1000)

plt.hist(data, bins=20, color='skyblue', edgecolor='#AAFF32') 

plt.title('HISTOGRAM PLOT')
plt.xlabel('VALUE')
plt.ylabel('FREQUENCY')
plt.grid(True)

plt.figtext(0.02, 0.02, 'ADITI A MURTHY\n1JS24CS007',color='#580F41',fontsize=8, ha='left')

plt.show()

'''
WAPP to illustrate linear plotting using matplotlib.
'''

import matplotlib.pyplot as plt
import numpy as np

X=np.array([2,4,6,8,10])
Y=X*2

plt.plot(X,Y,color='peru')
plt.xlabel('X - AXIS')
plt.ylabel('Y - AXIS')
plt.title('LINEAR PLOT')
plt.figtext(0.1, 0.90, 'ADITI A MURTHY\n1JS24CS007',color='olive',fontsize=8, ha='left')
plt.show()

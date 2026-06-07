
'''
WAPP to illustrate linear plotting with line formatting using matplotlib.
'''

import matplotlib.pyplot as plt
import numpy as np

X=np.linspace(0,10,100)
Y=np.sin(X)

plt.plot(X,Y,color='#aaff32',linestyle='-',linewidth=2)
plt.xlabel('X - AXIS')
plt.ylabel('Y - AXIS')
plt.title('SINE CURVE PLOT')
plt.figtext(0.1, 0.90, 'ADITI A MURTHY\n1JS24CS007',color='lightsalmon',fontsize=8, ha='left')
plt.show()

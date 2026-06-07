'''
WAPP To demonstrate how to draw a bar plot using matplotlib
'''

import matplotlib.pyplot as plt
x=[1,2,3,4,5]
y=[3,5,7,2,1]
plt.bar(x,y,color='pink')
plt.title('BAR PLOT')
plt.xlabel('X - AXIS')
plt.ylabel('Y - AXIS')
plt.text(0.5, 8, 'ADITI A MURTHY',color='purple')
plt.text(0.5, 7.5, '1JS24CS007', color='violet') # fontsize=10,
plt.show()

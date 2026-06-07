'''
WAPP to demonstrate how to draw a pie chart using matplotlib.
'''

import matplotlib.pyplot as plt

labels=['V','W','X','Y','Z']
sizes=[55,25,10,5,5]
colors=['purple','grey','teal','#FFFF14','lightgreen']
plt.pie(sizes,colors=colors,labels=labels,autopct="%1.1f%%")
plt.title('PIE CHART PLOT')
#plt.figtext(0.02, 0.02, 'ADITI A MURTHY\n1JS24CS007',color='#FC5A50',fontsize=8, ha='left')
plt.figtext(0.1, 0.90, 'ADITI A MURTHY\n1JS24CS007',color='#FC5A50',fontsize=8, ha='left')

plt.show()
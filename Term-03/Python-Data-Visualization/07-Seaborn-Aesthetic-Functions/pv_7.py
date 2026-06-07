
'''
WAPP which explains uses of customizing seaborn plots with Aesthetic functions.
'''

import seaborn as sns
import matplotlib.pyplot as plt

tips=sns.load_dataset('tips') #loading dataset

sns.scatterplot(x='total_bill', y='tip', data=tips)
sns.set_style('whitegrid')  #customizing the plot with aesthetic functions of seaborn
sns.set_palette('Set2')
sns.despine()
plt.figtext(0.1, 0.90, 'ADITI A MURTHY\n1JS24CS007',color='olive',fontsize=8, ha='left')
plt.show()

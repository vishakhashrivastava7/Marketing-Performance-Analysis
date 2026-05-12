#%% md
# # This is a sample Jupyter Notebook
# 
# Below is an example of a code cell. 
# Put your cursor into the cell and press Shift+Enter to execute it and select the next one, or click 'Run Cell' button.
# 
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.
# 
# To learn more about Jupyter Notebooks in PyCharm, see [help](https://www.jetbrains.com/help/pycharm/ipython-notebook-support.html).
# For an overview of PyCharm, go to Help -> Learn IDE features or refer to [our documentation](https://www.jetbrains.com/help/pycharm/getting-started.html).
#%%
import pandas as pd

#%%
df = pd.read_excel("marketing_campaign_dataset.xlsx")
#%%
df.head()
#%%
df.dtypes
#%%
df['ROI'].mean()
#%%
df.groupby('Channel')['ROI'].mean()
#%%
df.sort_values(by='ROI', ascending=False).head()
#%%
df['ctr'] = (df['Clicks'] / df['Impressions']) * 100
#%%
df['ctr'].mean()
#%%
df.groupby('Channel')['ctr'].mean()
#%%
df['cpc'] = df['Acquisition_Cost'] / df['Clicks']
#%%
df['cpc'].mean()
#%%
df.groupby('Channel')['cpc'].mean()
#%%
df.groupby('Target_Audience')['ROI'].mean()
#%%
df.groupby('Location')['ROI'].mean()
#%%
df.sort_values(by=['ROI','ctr'], ascending=False).head()
#%%
from IPython.display import display
display(df.sort_values(by=['ROI','ctr'], ascending=False).head())
#%%
print(df.sort_values(by=['ROI','ctr'], ascending=False).head().to_string())
#%%
df = df.loc[:, ~df.columns.str.contains('^Unnamed')]
#%%
df.drop(columns=['SQL_format'], inplace=True)
#%% md
# print(df.head().to_string())
#%%
print(df.head().to_string())
#%%
df.drop(columns=['CTR','CPC'], inplace=True)
#%%
print(df.head().to_string())
#%%
result = df.groupby('Channel')[['ROI','ctr','cpc']].mean().sort_values(by='ROI', ascending=False)

print(result.to_string())
#%%
audience = df.groupby('Target_Audience')['ROI'].mean().sort_values(ascending=False)

print(audience.to_string())
#%%
location = df.groupby('Location')['ROI'].mean().sort_values(ascending=False)

print(location.to_string())
#%%
top_campaigns = df.sort_values(by=['ROI','ctr'], ascending=False).head()

print(top_campaigns.to_string())
#%%
cpc_analysis = df.groupby('Channel')['cpc'].mean().sort_values()

print(cpc_analysis.to_string())
#%%

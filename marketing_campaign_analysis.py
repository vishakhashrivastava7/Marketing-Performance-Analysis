import pandas as pd

print("START\n")

# 🔹 LOAD DATA
df = pd.read_excel("marketing_campaign_dataset.xlsx")
print("Data loaded\n")

# 🔹 CLEANING (remove unwanted columns)
df = df.loc[:, ~df.columns.str.contains('^Unnamed')]

# 🔹 CREATE METRICS
df['ctr'] = (df['Clicks'] / df['Impressions']) * 100
df['cpc'] = df['Acquisition_Cost'] / df['Clicks']

print("Columns:\n", df.columns, "\n")

print("Analysis Started\n")

# 🔹 CHANNEL PERFORMANCE
print("Channel Performance:\n")
channel = df.groupby('Channel')[['ROI','ctr','cpc']].mean().sort_values(by='ROI', ascending=False)
print(channel.to_string())

# 🔹 AUDIENCE PERFORMANCE
print("\nAudience Performance:\n")
audience = df.groupby('Target_Audience')['ROI'].mean().sort_values(ascending=False)
print(audience.to_string())

# 🔹 LOCATION PERFORMANCE
print("\nLocation Performance:\n")
location = df.groupby('Location')['ROI'].mean().sort_values(ascending=False)
print(location.to_string())

# 🔹 TOP CAMPAIGNS
print("\nTop Campaigns:\n")
top = df.sort_values(by=['ROI','ctr'], ascending=False).head()
print(top.to_string())

print("\nEND")

import pandas as pd

names=['advent']
df = pd.read_csv('input.txt',names=names,sep='\n',dtype=str)

df=df['advent'].str.split('',expand=True)
df.drop(df.columns[len(df.columns)-1], axis=1, inplace=True)
df.drop(df.columns[0], axis=1, inplace=True)
df = df.apply(pd.to_numeric)
#print(df)
s=df[df > 0].count()
s = s.to_dict()

gamma=""
epsilon=""
for k,v in s.items():
    if v > (len(df.index)/2):
        gamma+="1"
        epsilon+="0"
    else:
        gamma+="0"
        epsilon+="1"

gamma=int(gamma,2)
epsilon=int(epsilon,2)
print(gamma)
print(epsilon)
print(gamma*epsilon)


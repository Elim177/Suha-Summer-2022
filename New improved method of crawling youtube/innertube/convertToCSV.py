from os import listdir
from os.path import isfile, join
onlyfiles = [f for f in listdir('C:/Users/suhas/Desktop/innertube') if isfile(join('C:/Users/suhas/Desktop/innertube', f))]
print(len(onlyfiles))
df1 = ""
# importing packages
import pandas as pd
for i in range (1, len(onlyfiles)):
    df1 = df1 + pd.read_json(onlyfiles[i])

pd.concat([df1])


df1.to_csv("CSV.csv",index=False)
result = pd.read_csv("CSV.csv")
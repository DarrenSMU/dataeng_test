#Import Statements
import pandas as pd
import numpy as np

#Read from data set, put into pandas dataframe
df = pd.read_csv('/home/darren/dataeng_test/Section1_DataPipelines/datasetTest.csv')

#create set of unwanted stuffs
set_of_unwanted = {'Dr.','Miss','Mr.','Mrs.','Ms.','DDS','DVM','MD','PhD'}

#check edge cases

""" This gets me all possible prefix 
df_check_prefix = df[df['name'].map(lambda x:len(x.split())) > 2].sort_values('name')
list_of_prefix = df_check_prefix['name'].apply(lambda x:x.split().pop(0))
print(list_of_prefix.to_string())
"""

""" This gets me all possible suffix
df_check_suffix = df[df['name'].map(lambda x:len(x.split())) > 2]
list_of_suffix = df_check_suffix['name'].apply(lambda x:x.split().pop()).sort_values()
print(list_of_suffix.to_string())
"""

#Q3)Delete any rows which do not have a name , including empty strings by replacing any empty fields with NAN
df['name'].replace('', np.nan,inplace=True)
df.dropna(subset=['name'],inplace=True)

#Q1) Split the name field into first_name , and last_name

#insert new column
df.insert(1,"last_name" , "")

#change column 0 name to first_name
df.columns = ['first_name', 'last_name', 'price']

#iterate through every row (cannot use iterrow), split the full name into first_name and last_name using delimiter space and insert last_name
for i in df.index:
    name = df.loc[i,'first_name']
    name_list = name.split()
    is_first_name_in = False
    is_first_word_of_last_name_in = False
    for word in name_list:
        if word not in set_of_unwanted and not is_first_name_in:
            df.at[i,'first_name']=word
            is_first_name_in = True
        elif word not in set_of_unwanted and not is_first_word_of_last_name_in: 
            df.at[i,'last_name']=df.at[i,'last_name'] + word
            is_first_word_of_last_name_in = True
        elif word not in set_of_unwanted:
            df.at[i,'last_name']=df.at[i,'last_name'] + " " + word
        
#Q2) Remove any zeroes prepended to the price field (including numbers like 00.1 -> .1)

df['price'] = df['price'].map(lambda x : float(str(x).lstrip('0')))

#Q4) Create a new field named above_100, which is true if the price is strictly greater than 100
df.insert(3,"above_100" , "")
df['above_100'] = df['price'].map(lambda x : 'true' if x > 100 else '')

df.to_csv('/home/darren/dataeng_test/Section1_DataPipelines/output.csv',index=False)

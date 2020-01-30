# Answers for section 1 Datapipe 

* Edit the script file `processing_script.py` by :

changing `df = pd.read_csv('/home/darren/dataeng_test/Section1_DataPipelines/datasetTest.csv')` on line 6  
and `df.to_csv('/home/darren/dataeng_test/Section1_DataPipelines/output.csv',index=False)` on line 61 to your own absoulute directory 

* Use crontab via `crontab -e` on linux and insert `0 1 * * * /home/darren/anaconda3/bin/python /home/darren/dataeng_test/Section1_DataPipelines/processing_script.py` and changing the absoulte directories to your own

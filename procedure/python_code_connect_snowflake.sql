import snowflake.connector as sf
import pandas as pd
import getpass

password=getpass.getpass("Enter your snowflake password :")

user='smsirajk'
password='**********'
account='qwpflrb-******'
database='my_db'
ware_house='etl_wh'
schema='my_data'
role='ACCOUNTADMIN'

conn=sf.connect(user=user,
                password=password,
                account=account)

def run_query(connection,query):
    cursor=connection.cursor()
    cursor.execute(query)
    cursor.close()
    
    try:
        sql='use warehouse {}'.format(ware_house)
        run_query(conn, sql)
        
        try:
            sql='alter warehouse {} resume'.format(ware_house)
            run_query(conn, sql)
        except:
            pass
        
       
        sql='use database {}'.format(database)         
        run_query(conn,sql)

        sql='use role {}'.format(role)    
        run_query(conn, sql)
        
        sql=f'use schema {schema}'
        run_query(conn, sql)
    except Exception as e:
        print(e)
        
data_query = 'select * From my_db.my_data.Employee limit 20'

df = pd.read_sql(data_query, conn)

df.head()       

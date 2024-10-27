import streamlit as st

import psycopg2
conn = psycopg2.connect(
    database="mydatabase_a24",
    user="a24",
    password="raspberry",
    host="piRobert0301.local",  # 通常是 '127.0.0.1' 或 'localhost'
    port="5432")
cur = conn.cursor()
cur.execute("SELECT * FROM stations;")
rows = cur.fetchall()
names = []
for row in rows:
    names.append(row[2])
    
option = st.selectbox(
    '你最喜歡的車站?',
     names
     )

st.write('你最喜歡的: ', option)
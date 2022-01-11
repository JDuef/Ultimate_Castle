from flask import Flask, request, render_template, send_file
#from flask_cors import CORS
import sqlalchemy
import pandas as pd

DIALECT = 'oracle'
SQL_DRIVER = 'cx_oracle'
USERNAME = '' #enter your username
PASSWORD = '' #enter your password
HOST = '' #enter the oracle db host url
PORT = 1521 # enter the oracle port number
SERVICE = 'ORCL' # enter the oracle db service name

CON_STRING = "oracle+cx_oracle://" + USERNAME +":"+PASSWORD+"@"+HOST+":"+str(PORT)+"/"+SERVICE+"?encoding=UTF-8&nencoding=UTF-8"

engine = sqlalchemy.create_engine(CON_STRING)


app = Flask(__name__)

@app.route("/")
def index():
    return render_template("mitarbeiter.html")

@app.route("/mitarbeiter")
def mitarbeiter():
    return render_template("mitarbeiter.html")

@app.route('/ma',methods=['GET'])
def ma_search():
    ma_id = request.args.get('ma_id')
    if ma_id == "":
        df = pd.read_sql_query('SELECT * FROM angestellter', engine)
    else:
        df = pd.read_sql_query('SELECT * FROM angestellter where id = ' + ma_id, engine)
    #print(df)
    return df.to_json(orient='records') 


@app.route('/global',methods=['GET'])
def global_search():
    tbl = request.args.get('tbl')
    df = pd.read_sql_query('SELECT * FROM ' + tbl, engine)
    print(df)
    return df.to_json(orient='records') 

if __name__ == '__main__':
    app.run(host='0.0.0.0',port=5000,debug=True)

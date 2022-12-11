from flask import Flask, render_template, request
import mysql.connector

def conection ():
    database = mysql.connector.connect(host="localhost", user="root", password="",database="moda")
    return database



app = Flask(__name__)
@app.route("/")
def index():
    conetionDB = conection()
    cursor = conetionDB.cursor()
    cursor.execute("SELECT * FROM product ORDER BY product.id DESC LIMIT 6")
    return render_template("index.html",products=cursor)

@app.route("/search",methods=['POST', 'GET'])
def search():
    searchName = request.args.get("search")
    categoryName = request.args.get("category")
    conetionDB = conection()
    cursor = conetionDB.cursor()
    if categoryName:
        cursor.execute("SELECT * FROM product WHERE idCategory={} LIMIT 10".format(categoryName))
    else:
        cursor.execute("SELECT * FROM product WHERE product.nombre LIKE '%{}%' LIMIT 10".format(searchName))
        
    if request.method == 'POST':
        return "Post"
    return render_template("/layout/search.html",products=cursor)
        

@app.route("/product/<string:id>")
def product(id):
    conetionDB = conection()
    cursor = conetionDB.cursor()
    cursor.execute("SELECT * FROM product WHERE id = {}".format(id))
    return render_template("/layout/productView.html",product=cursor)
    
@app.route("/cms-admin")
def admin():

    isAdmin = request.cookies.get("token")
    if isAdmin:
        return render_template("/layout/dashboard.html")
    else:
        return render_template("/layout/login.html")


app.run(port=3000,debug=True)
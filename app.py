from flask import Flask, render_template, request, redirect, make_response
import mysql.connector

def conection ():
    database = mysql.connector.connect(host="localhost", user="root", password="",database="moda",port="3306")
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
    
@app.route("/cms-admin/login",methods=['POST', 'GET'])
def login():
    email = request.args.get("email")
    password = request.args.get("password")
    conetionDB = conection()
    cursor = conetionDB.cursor()
    cursor.execute("SELECT * FROM usuario WHERE email = '{}' AND hashPassword = '{}'".format(email.lower(), password.lower()))
    exist = cursor.fetchone()
    if exist:
        response =  make_response(redirect("/cms-admin"))
        response.set_cookie("token",str(exist[0]))
    else:
        response =  make_response("fail login", 401)
    return response
        
    
@app.route("/cms-admin")
def admin():

    isAdmin = request.cookies.get("token")
    if isAdmin:
        conetionDB = conection()
        cursor = conetionDB.cursor()
        cursor.execute("SELECT * FROM usuario WHERE id = {}".format(isAdmin))
        data = cursor.fetchone()
        cursor.execute("SELECT * FROM product ORDER BY id DESC LIMIT 50 ")

        return render_template("/layout/dashboard.html",profile=data, products= cursor)
    else:
        return render_template("/layout/login.html")


@app.route("/cms-admin/products")
def dashBoardProducts():
    isAdmin = request.cookies.get("token")
    if isAdmin:
        conetionDB = conection()
        cursor = conetionDB.cursor()
        cursor.execute("SELECT * FROM product ORDER BY id DESC LIMIT 50")
        return render_template("/layout/dashBoardProducts.html", products=cursor)
    else:
        return render_template("/layout/login.html")
@app.route("/cms-admin/product/edit/<string:id>",methods=['POST', 'GET'])
def productEdit(id):
    conetionDB = conection()
    cursor = conetionDB.cursor()
    if request.method == 'GET':
        cursor.execute("SELECT * FROM product WHERE id={}".format(id))
        data = cursor.fetchone()
        return render_template("layout/editProduct.html",infoProduct=data)
    elif request.method == 'POST':
        nombre = request.form['nombre']
        desc = request.form['desc']
        color = request.form['color']
        marca = request.form['marca']
        url = request.form['url']
        price = request.form['price']
        data = (nombre,desc,color,marca,url,price)
        cursor.execute("UPDATE product SET nombre=%s,descripcion=%s,color=%s,brand=%s,imgUrl=%s,originalPrice=%s WHERE id = {}".format(id),data)
        conetionDB.commit()
        return redirect("/cms-admin/products")

@app.route("/cms-admin/product/delete/<string:id>")
def productDelete(id):
    conetionDB = conection()
    cursor = conetionDB.cursor()
    cursor.execute("DELETE FROM product WHERE id={}".format(id))
    conetionDB.commit()
    return redirect("/cms-admin/products")
@app.route("/cms-admin/product/add",methods=['POST', 'GET'])
def productAdd():
    if request.method == 'GET':
        return render_template("/layout/addProduct.html")
    elif request.method == 'POST':
        conetionDB = conection()
        cursor = conetionDB.cursor()
        nombre = request.form['nombre']
        desc = request.form['desc']
        color = request.form['color']
        marca = request.form['marca']
        url = request.form['url']
        originalPrice = request.form['originalPrice']
        discountPrice = request.form['discountPrice']
        categoria = request.form['categoria']
        data = (nombre,desc,originalPrice,categoria,color,url,marca,discountPrice)
        cursor.execute("INSERT INTO `product` (`id`, `nombre`, `descripcion`, `originalPrice`, `idCategory`, `color`, `imgUrl`, `brand`, `discountPrice`, `createAt`) VALUES (NULL, %s, %s, %s, %s, %s, %s, %s, %s, current_timestamp())",data)
        conetionDB.commit()
        return redirect("/cms-admin/products")
app.run(port=3000,debug=True)
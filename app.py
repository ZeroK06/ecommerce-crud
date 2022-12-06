from flask import Flask, render_template, request

app = Flask(__name__)
@app.route("/")
def index():
    return render_template("index.html")

@app.route("/search",methods=['POST', 'GET'])
def search():
    searchName = request.args.get("search")
    if request.method == 'POST':
        return "Post"
    return render_template("/layout/search.html")
        

@app.route("/product/<string:id>")
def product(id):
    return render_template("/layout/productView.html")
    

app.run(port=3000,debug=True)
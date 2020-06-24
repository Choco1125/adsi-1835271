from flask import Flask, render_template
import  pymongo

#Instacia un objeto de Flask
app = Flask(__name__)

#Muestra los valores por consola-------------------------
def showUsers():
    #Seleccionamos la tabal o colección
    collection = database.users
    #Select * FROM users
    cursor = collection.find()
    
    for doc in cursor:
        print(doc)
#--------------------------------------------------------

#Para usar con la rita, este devuelve todos los registros
def get_user():
     #Seleccionamos la tabal o colección
    collection = database.users
    #Select * FROM users
    cursor = collection.find()
    return cursor
#---------------------------------------------------------



#Conexión a MongoDB---------------------------------------
try:
    host = 'mongodb://127.0.0.1:27017/'
    #Conexión a mongo
    mongo = pymongo.MongoClient(host)
    #Seleccionamos la db
    database = mongo.adsimongo
    showUsers()
except:
    print("Error: Problemas con MongoDB")
#---------------------------------------------------------

#Rutas----------------------------------------------------
@app.route('/')
def welcome_view():
    # return "Hola, Choco."
    return render_template('index.html',cursor = get_user())
#----------------------------------------------------------


#Monta el servidor
if __name__ == '__main__':
    #Parámetro port=5050 cambia el puerto
    #Debug=True activa el debug 
    app.run(debug=True)
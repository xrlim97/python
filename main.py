#  from fastapi import FastAPI

# app = FastAPI()


# @app.get("/")
# async def root():
   # return {"message": "Hello World"}

from flask import Flask
from flask_restful import Resource, Api

app = Flask(__name__)
api = Api(app)

class HelloWorld(Resource):
    def get(self):
        return "Hello Python!"

api.add_resource(HelloWorld, '/')

if __name__ == '__main__':
    app.run(host='0.0.0.0')
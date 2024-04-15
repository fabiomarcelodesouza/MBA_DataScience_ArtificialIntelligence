import os
import logging
import json
import numpy as np
import joblib
import pandas as pd
from flask import Flask, jsonify, request

class NpEncoder(json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj, np.integer):
            return int(obj)
        elif isinstance(obj, np.floating):
            return float(obj)
        elif isinstance(obj, np.ndarray):
            return obj.tolist()
        else:
            return super(NpEncoder, self).default(obj)

app = Flask(__name__)
app.json_encoder = NpEncoder
global meumodelo

def init():
    global meumodelo
    model_path = os.path.join(os.getenv("AZUREML_MODEL_DIR"), "model.pkl")
    meumodelo = joblib.load(model_path)
    logging.info("Init complete")

def run(raw_data):
    logging.info("model 1: request received")
    json_ = json.loads(raw_data)
    campos = pd.DataFrame(json_)

    if campos.shape[0] == 0:
        return "Dados de chamada da API estão incorretos.", 400
    
    independent_cols = ["data_file_year", "dropoff_location_id", "pickup_location_id", "total_amount", "tolls_amount", "mta_tax", "payment_type"]
    x = campos[independent_cols]

    prediction = meumodelo.predict(x)

    try:
        predict_proba = meumodelo.predict_proba(x)
        proba_list = predict_proba.tolist() if predict_proba is not None else None
    except Exception as ex:
        proba_list = None

    ret = json.dumps({
        'prediction': list(prediction),
        'proba': proba_list,
        'author': "Felipe Lemos Scudeller"
    }, cls=NpEncoder)

    print(ret)
    return app.response_class(response=ret, mimetype='application/json')

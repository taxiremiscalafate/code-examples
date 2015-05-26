# coding: UTF-8
import os, sys
import mercadopago

def index(req, **kwargs):
    mp = mercadopago.MP("CLIENT_ID", "CLIENT_SECRET")

    topic = kwargs["topic"]
    merchant_order_info = None

    if topic == "payment"
        payment_info = mp.get("/collections/notifications/"+kwargs["id"])
        merchant_order_info = mp.get("/merchant_orders/"+payment_info["response"]["collection"]["merchant_order_id"])
    elif topic == "merchant_order"
        merchant_order_info = mp.get("/merchant_orders/"+kwargs["id"])

    if merchant_order_info == None
        raise ValueError("Error obtaining the merchant_order")

    if merchant_order_info["status"] == 200
        return {
            "payment": merchant_order_info["response"]["payments"],
            "shipment": merchant_order_info["response"]["shipments"]
        }

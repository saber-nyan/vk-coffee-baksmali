.class public Lru/mail/android/mytracker/models/events/PurchaseEvent;
.super Lru/mail/android/mytracker/models/events/AbstractEvent;
.source "PurchaseEvent.java"


# static fields
.field private static final CODE_CURRENCY:Ljava/lang/String; = "price_currency_code"

.field private static final CODE_PRICE_AMOUNT_MICROS:Ljava/lang/String; = "price_amount_micros"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string/jumbo v0, "purchase"

    invoke-direct {p0, v0, p2}, Lru/mail/android/mytracker/models/events/AbstractEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 37
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lru/mail/android/mytracker/models/events/PurchaseEvent;->setParams(Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "skuDetails"    # Lorg/json/JSONObject;
    .param p2, "purchaseData"    # Lorg/json/JSONObject;
    .param p3, "dataSignature"    # Ljava/lang/String;
    .param p4, "params"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string/jumbo v5, "purchase"

    invoke-direct {p0, v5}, Lru/mail/android/mytracker/models/events/AbstractEvent;-><init>(Ljava/lang/String;)V

    .line 45
    const-string/jumbo v5, "price_amount_micros"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "priceInMicros":Ljava/lang/String;
    const/4 v3, 0x0

    .line 50
    .local v3, "price":F
    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const v6, 0x49742400    # 1000000.0f

    div-float v3, v5, v6

    .line 56
    :goto_0
    const-string/jumbo v5, "price_currency_code"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "currency":Ljava/lang/String;
    :try_start_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v2, "paramsObject":Lorg/json/JSONObject;
    :goto_1
    const-string/jumbo v5, "revenue"

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string/jumbo v5, "currency"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string/jumbo v5, "purchase_data"

    invoke-virtual {v2, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string/jumbo v5, "data_signature"

    invoke-virtual {v2, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lru/mail/android/mytracker/models/events/PurchaseEvent;->setParams(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    .end local v2    # "paramsObject":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 51
    .end local v0    # "currency":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Wrong price in micros in sku details: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "currency":Ljava/lang/String;
    :cond_0
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v2    # "paramsObject":Lorg/json/JSONObject;
    goto :goto_1

    .line 73
    .end local v2    # "paramsObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 75
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 84
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 87
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "type"

    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/PurchaseEvent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string/jumbo v4, "timestamp"

    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/PurchaseEvent;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 90
    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/PurchaseEvent;->getParams()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "params":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 93
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    .local v3, "paramsObj":Lorg/json/JSONObject;
    const-string/jumbo v4, "params"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v2    # "params":Ljava/lang/String;
    .end local v3    # "paramsObj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v1

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

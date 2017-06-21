.class public Lcom/vkcoffee/android/api/store/GetGiftsStockBalance;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "GetGiftsStockBalance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;,
        Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "execute.getGiftsStockBalance"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$Result;
    .locals 4
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    :try_start_0
    new-instance v1, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$Result;

    const-string/jumbo v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$Result;-><init>(Lcom/vkcoffee/android/api/store/GetGiftsStockBalance;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/vkcoffee/android/api/APIException;

    const/4 v2, -0x2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/api/APIException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$Result;

    move-result-object v0

    return-object v0
.end method

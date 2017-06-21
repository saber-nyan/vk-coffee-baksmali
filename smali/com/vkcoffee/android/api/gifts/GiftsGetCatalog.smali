.class public Lcom/vkcoffee/android/api/gifts/GiftsGetCatalog;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "GiftsGetCatalog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/gifts/GiftsGetCatalog$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/gifts/GiftsGetCatalog$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user_id"    # I

    .prologue
    .line 23
    const-string/jumbo v0, "execute.getGiftsCatalogMaterial"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 24
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/gifts/GiftsGetCatalog;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 25
    const-string/jumbo v1, "no_inapp"

    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/gifts/GiftsGetCatalog;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 26
    const-string/jumbo v0, "force_payment"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/gifts/GiftsGetCatalog;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 27
    return-void

    .line 25
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/gifts/GiftsGetCatalog$Result;
    .locals 8
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 31
    const-string/jumbo v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 32
    .local v3, "response":Lorg/json/JSONObject;
    const-string/jumbo v5, "gifts"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 33
    .local v0, "gifts":Lorg/json/JSONArray;
    if-eqz v0, :cond_2

    .line 34
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/api/models/GiftCategory;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 36
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 37
    .local v2, "item":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 38
    new-instance v5, Lcom/vkcoffee/android/api/models/GiftCategory;

    invoke-direct {v5, v2}, Lcom/vkcoffee/android/api/models/GiftCategory;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    .end local v2    # "item":Lorg/json/JSONObject;
    :cond_1
    new-instance v5, Lcom/vkcoffee/android/api/gifts/GiftsGetCatalog$Result;

    const-string/jumbo v6, "balance"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6, v4}, Lcom/vkcoffee/android/api/gifts/GiftsGetCatalog$Result;-><init>(ILjava/util/List;)V

    return-object v5

    .line 43
    .end local v1    # "i":I
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/api/models/GiftCategory;>;"
    :cond_2
    new-instance v5, Lcom/vkcoffee/android/api/APIException;

    const/4 v6, -0x2

    const-string/jumbo v7, "Parse error"

    invoke-direct {v5, v6, v7}, Lcom/vkcoffee/android/api/APIException;-><init>(ILjava/lang/String;)V

    throw v5
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/gifts/GiftsGetCatalog;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/gifts/GiftsGetCatalog$Result;

    move-result-object v0

    return-object v0
.end method

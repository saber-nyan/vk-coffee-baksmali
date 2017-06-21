.class public Lcom/vkcoffee/android/api/gifts/GiftsGet;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "GiftsGet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/ListAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/models/GiftItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(III)V
    .locals 4
    .param p1, "user_id"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 23
    const-string/jumbo v0, "execute.getGifts"

    const-class v1, Lcom/vkcoffee/android/api/models/GiftItem;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 24
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/gifts/GiftsGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 25
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/gifts/GiftsGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 26
    const-string/jumbo v0, "count"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/gifts/GiftsGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 27
    const-string/jumbo v1, "fields"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    const-string/jumbo v0, "photo_100"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",can_see_gifts,first_name_gen,online"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/gifts/GiftsGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 28
    return-void

    .line 27
    :cond_0
    const-string/jumbo v0, "photo_50"

    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;
    .locals 10
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/api/models/GiftItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    :try_start_0
    const-string/jumbo v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 34
    const-string/jumbo v7, "gifts"

    const/4 v8, 0x1

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 35
    new-instance v7, Lcom/vkcoffee/android/api/APIException;

    const/16 v8, 0xf

    const-string/jumbo v9, ""

    invoke-direct {v7, v8, v9}, Lcom/vkcoffee/android/api/APIException;-><init>(ILjava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Lorg/json/JSONException;
    new-instance v7, Lcom/vkcoffee/android/api/APIException;

    const/4 v8, -0x2

    const-string/jumbo v9, ""

    invoke-direct {v7, v8, v9}, Lcom/vkcoffee/android/api/APIException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 37
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :try_start_1
    const-string/jumbo v7, "profiles"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 38
    .local v5, "profiles":Lorg/json/JSONArray;
    new-instance v6, Landroid/util/SparseArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    .line 39
    .local v6, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 40
    new-instance v4, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 41
    .local v4, "profile":Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;
    iget v7, v4, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;->uid:I

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v4    # "profile":Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;
    :cond_1
    new-instance v1, Lcom/vkcoffee/android/data/VKList;

    const-string/jumbo v7, "gifts"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-class v8, Lcom/vkcoffee/android/api/models/GiftItem;

    invoke-direct {v1, v7, v8}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    .line 44
    .local v1, "gifts":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/api/models/GiftItem;>;"
    invoke-virtual {v1}, Lcom/vkcoffee/android/data/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/api/models/GiftItem;

    .line 45
    .local v3, "item":Lcom/vkcoffee/android/api/models/GiftItem;
    iget v7, v3, Lcom/vkcoffee/android/api/models/GiftItem;->from_id:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;

    iput-object v7, v3, Lcom/vkcoffee/android/api/models/GiftItem;->from:Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 47
    .end local v3    # "item":Lcom/vkcoffee/android/api/models/GiftItem;
    :cond_2
    return-object v1
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
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/gifts/GiftsGet;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;

    move-result-object v0

    return-object v0
.end method

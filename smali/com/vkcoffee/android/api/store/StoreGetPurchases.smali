.class public Lcom/vkcoffee/android/api/store/StoreGetPurchases;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "StoreGetPurchases.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 20
    const-string/jumbo v1, "execute.getStickerProducts"

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 21
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "stickers"

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/store/StoreGetPurchases;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 22
    const-string/jumbo v1, "filters"

    const-string/jumbo v2, "purchased"

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/store/StoreGetPurchases;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    const-string/jumbo v1, "merchant"

    const-string/jumbo v2, "google"

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/store/StoreGetPurchases;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 24
    const-string/jumbo v1, "func_v"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/store/StoreGetPurchases;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 25
    const-string/jumbo v1, "force_inapp"

    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/store/StoreGetPurchases;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 26
    const-string/jumbo v1, "no_inapp"

    invoke-static {}, Lcom/vkcoffee/android/data/PurchasesManager;->canUseInApps()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/store/StoreGetPurchases;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 27
    return-void
.end method

.method static synthetic lambda$parse$195(Lcom/vkcoffee/android/data/orm/StickerStockItem;)Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .locals 0
    .param p0, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    .line 39
    return-object p0
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/store/StoreGetPurchases;->parse(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 5
    .param p1, "source"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    const-string/jumbo v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "stickers"

    invoke-static {v3, v4}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v3

    iget-object v0, v3, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 31
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/data/orm/StickerStockItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 34
    :try_start_0
    new-instance v3, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/vkcoffee/android/data/orm/StickerStockItem;-><init>(Lorg/json/JSONObject;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v3

    invoke-static {}, Lcom/vkcoffee/android/api/store/StoreGetPurchases$$Lambda$1;->lambdaFactory$()Lcom/vkcoffee/android/functions/F1;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/vkcoffee/android/stickers/Stickers;->fillLocalInfo(Ljava/util/Collection;Lcom/vkcoffee/android/functions/F1;)V

    .line 40
    return-object v2

    .line 35
    :catch_0
    move-exception v3

    goto :goto_1
.end method

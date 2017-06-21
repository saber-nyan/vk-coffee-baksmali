.class public Lcom/vkcoffee/android/api/store/GetStickerStockItemById;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "GetStickerStockItemById.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 23
    const-string/jumbo v1, "store.getStockItems"

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 24
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "stickers"

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/store/GetStickerStockItemById;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 25
    const-string/jumbo v1, "merchant"

    const-string/jumbo v2, "google"

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/store/GetStickerStockItemById;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 26
    const-string/jumbo v1, "product_ids"

    invoke-virtual {p0, v1, p1}, Lcom/vkcoffee/android/api/store/GetStickerStockItemById;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 27
    const-string/jumbo v1, "force_inapp"

    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/store/GetStickerStockItemById;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 28
    const-string/jumbo v1, "no_inapp"

    invoke-static {}, Lcom/vkcoffee/android/data/PurchasesManager;->canUseInApps()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/store/GetStickerStockItemById;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 29
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .locals 5
    .param p1, "source"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 33
    const-string/jumbo v3, "response"

    invoke-static {p1, v3}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v2

    .line 34
    .local v2, "stickers":Lcom/vkcoffee/android/api/JSONArrayWithCount;
    new-instance v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget-object v3, v2, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v0, v3, v4}, Lcom/vkcoffee/android/data/orm/StickerStockItem;-><init>(Lorg/json/JSONObject;I)V

    .line 35
    .local v0, "item":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/data/orm/StickerStockItem;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v3

    new-instance v4, Lcom/vkcoffee/android/api/store/GetStickerStockItemById$1;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/api/store/GetStickerStockItemById$1;-><init>(Lcom/vkcoffee/android/api/store/GetStickerStockItemById;)V

    invoke-virtual {v3, v1, v4}, Lcom/vkcoffee/android/stickers/Stickers;->fillLocalInfo(Ljava/util/Collection;Lcom/vkcoffee/android/functions/F1;)V

    .line 45
    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/store/GetStickerStockItemById;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/orm/StickerStockItem;

    move-result-object v0

    return-object v0
.end method

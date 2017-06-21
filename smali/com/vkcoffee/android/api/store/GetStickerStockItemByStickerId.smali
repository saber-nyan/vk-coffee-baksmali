.class public Lcom/vkcoffee/android/api/store/GetStickerStockItemByStickerId;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "GetStickerStockItemByStickerId.java"


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
    .locals 2
    .param p1, "stickerId"    # I

    .prologue
    .line 18
    const-string/jumbo v0, "store.getStockItemByStickerId"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 19
    const-string/jumbo v0, "sticker_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/store/GetStickerStockItemByStickerId;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 20
    const-string/jumbo v0, "merchant"

    const-string/jumbo v1, "google"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/store/GetStickerStockItemByStickerId;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 21
    const-string/jumbo v1, "no_inapp"

    invoke-static {}, Lcom/vkcoffee/android/data/PurchasesManager;->canUseInApps()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/store/GetStickerStockItemByStickerId;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 22
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 26
    const-string/jumbo v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 28
    .local v2, "responseObj":Lorg/json/JSONObject;
    new-instance v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/vkcoffee/android/data/orm/StickerStockItem;-><init>(Lorg/json/JSONObject;I)V

    .line 31
    .local v0, "item":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/data/orm/StickerStockItem;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v3

    new-instance v4, Lcom/vkcoffee/android/api/store/GetStickerStockItemByStickerId$1;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/api/store/GetStickerStockItemByStickerId$1;-><init>(Lcom/vkcoffee/android/api/store/GetStickerStockItemByStickerId;)V

    invoke-virtual {v3, v1, v4}, Lcom/vkcoffee/android/stickers/Stickers;->fillLocalInfo(Ljava/util/Collection;Lcom/vkcoffee/android/functions/F1;)V

    .line 41
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
    .line 15
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/store/GetStickerStockItemByStickerId;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/orm/StickerStockItem;

    move-result-object v0

    return-object v0
.end method

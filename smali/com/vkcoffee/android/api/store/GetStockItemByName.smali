.class public Lcom/vkcoffee/android/api/store/GetStockItemByName;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "GetStockItemByName.java"


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
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 20
    const-string/jumbo v1, "store.getStockItemByName"

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 21
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "stickers"

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/store/GetStockItemByName;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 22
    const-string/jumbo v1, "merchant"

    const-string/jumbo v2, "google"

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/store/GetStockItemByName;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    const-string/jumbo v1, "name"

    invoke-virtual {p0, v1, p1}, Lcom/vkcoffee/android/api/store/GetStockItemByName;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 24
    const-string/jumbo v1, "force_inapp"

    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/store/GetStockItemByName;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 25
    const-string/jumbo v1, "no_inapp"

    invoke-static {}, Lcom/vkcoffee/android/data/PurchasesManager;->canUseInApps()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/store/GetStockItemByName;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 26
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .locals 4
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    const-string/jumbo v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/vkcoffee/android/data/orm/StickerStockItem;-><init>(Lorg/json/JSONObject;I)V

    .line 32
    .local v0, "item":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/data/orm/StickerStockItem;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/api/store/GetStockItemByName$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/api/store/GetStockItemByName$1;-><init>(Lcom/vkcoffee/android/api/store/GetStockItemByName;)V

    invoke-virtual {v2, v1, v3}, Lcom/vkcoffee/android/stickers/Stickers;->fillLocalInfo(Ljava/util/Collection;Lcom/vkcoffee/android/functions/F1;)V

    .line 42
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
    .line 18
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/store/GetStockItemByName;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/orm/StickerStockItem;

    move-result-object v0

    return-object v0
.end method

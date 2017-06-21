.class public Lcom/vkcoffee/android/api/store/StoreGetCatalog$Section;
.super Ljava/lang/Object;
.source "StoreGetCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/store/StoreGetCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Section"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public stickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "source"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string/jumbo v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Section;->title:Ljava/lang/String;

    .line 92
    const-string/jumbo v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Section;->name:Ljava/lang/String;

    .line 94
    const-string/jumbo v2, "stickers"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "items"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 96
    .local v1, "stickers":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Section;->stickers:Ljava/util/List;

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Section;->stickers:Ljava/util/List;

    new-instance v3, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/vkcoffee/android/data/orm/StickerStockItem;-><init>(Lorg/json/JSONObject;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Section;->stickers:Ljava/util/List;

    invoke-static {}, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Section$$Lambda$1;->lambdaFactory$()Lcom/vkcoffee/android/functions/F1;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/stickers/Stickers;->fillLocalInfo(Ljava/util/Collection;Lcom/vkcoffee/android/functions/F1;)V

    .line 102
    return-void
.end method

.method static synthetic lambda$new$193(Lcom/vkcoffee/android/data/orm/StickerStockItem;)Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .locals 0
    .param p0, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    .line 101
    return-object p0
.end method

.class public Lcom/vkcoffee/android/api/market/MarketGet;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "MarketGet.java"

# interfaces
.implements Lcom/vkcoffee/android/data/ServerKeys;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/data/VKList",
        "<",
        "Lcom/vkcoffee/android/data/Good;",
        ">;>;",
        "Lcom/vkcoffee/android/data/ServerKeys;"
    }
.end annotation


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v1, 0x1

    .line 19
    const-string/jumbo v0, "market.get"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 20
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/market/MarketGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 21
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/market/MarketGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 22
    const-string/jumbo v0, "count"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/market/MarketGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    const-string/jumbo v0, "extended"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/market/MarketGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 24
    const-string/jumbo v0, "photo_sizes"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/market/MarketGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 25
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "albumId"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/api/market/MarketGet;-><init>(III)V

    .line 15
    const-string/jumbo v0, "album_id"

    invoke-virtual {p0, v0, p4}, Lcom/vkcoffee/android/api/market/MarketGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;
    .locals 4
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/data/Good;",
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
    :try_start_0
    new-instance v1, Lcom/vkcoffee/android/data/VKList;

    const-string/jumbo v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-class v3, Lcom/vkcoffee/android/data/Good;

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-object v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    .line 33
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/market/MarketGet;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;

    move-result-object v0

    return-object v0
.end method

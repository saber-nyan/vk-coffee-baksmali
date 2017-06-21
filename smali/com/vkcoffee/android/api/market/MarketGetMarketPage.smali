.class public Lcom/vkcoffee/android/api/market/MarketGetMarketPage;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "MarketGetMarketPage.java"

# interfaces
.implements Lcom/vkcoffee/android/data/ServerKeys;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;,
        Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;",
        ">;",
        "Lcom/vkcoffee/android/data/ServerKeys;"
    }
.end annotation


# direct methods
.method public constructor <init>(III)V
    .locals 3
    .param p1, "ownerId"    # I
    .param p2, "count"    # I
    .param p3, "offset"    # I

    .prologue
    .line 54
    const-string/jumbo v0, "execute.getMarketPage"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 55
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "offset"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "extended"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 56
    return-void
.end method

.method public static fave(II)Lcom/vkcoffee/android/api/market/MarketGetMarketPage;
    .locals 4
    .param p0, "count"    # I
    .param p1, "offset"    # I

    .prologue
    .line 59
    new-instance v0, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    invoke-direct {v0, v1, p0, p1}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;-><init>(III)V

    .line 60
    .local v0, "marketPage":Lcom/vkcoffee/android/api/market/MarketGetMarketPage;
    const-string/jumbo v1, "method"

    const-string/jumbo v2, "fave.getMarketItems"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "photo_sizes"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 61
    return-object v0
.end method


# virtual methods
.method public forceLoadMarket()V
    .locals 2

    .prologue
    .line 81
    const-string/jumbo v0, "load_market"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 82
    return-void
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;
    .locals 12
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 92
    :try_start_0
    const-string/jumbo v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 93
    new-instance v2, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;

    const-class v6, Lcom/vkcoffee/android/data/Good;

    invoke-direct {v2, p1, v6}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    .line 94
    .local v2, "response":Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;
    const-string/jumbo v6, "albums"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "albums"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 95
    new-instance v6, Lcom/vkcoffee/android/data/VKList;

    const-string/jumbo v7, "albums"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-class v8, Lcom/vkcoffee/android/data/GoodAlbum;

    invoke-direct {v6, v7, v8}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    iput-object v6, v2, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->albums:Lcom/vkcoffee/android/data/VKList;

    .line 97
    :cond_0
    const-string/jumbo v6, "album_title"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->albumTitle:Ljava/lang/String;

    .line 99
    const-string/jumbo v6, "market"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 100
    .local v1, "market":Lorg/json/JSONObject;
    if-eqz v1, :cond_4

    move v6, v4

    :goto_0
    iput-boolean v6, v2, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->hasMarket:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    if-eqz v1, :cond_3

    .line 103
    :try_start_1
    const-string/jumbo v6, "price_min"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "tmp":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 105
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x64

    div-long/2addr v6, v8

    iput-wide v6, v2, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->minPrice:J

    .line 108
    :cond_1
    const-string/jumbo v6, "price_max"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 110
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->maxPrice:J

    .line 111
    iget-wide v6, v2, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->maxPrice:J

    const-wide/16 v8, 0x64

    div-long/2addr v6, v8

    iget-wide v8, v2, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->maxPrice:J

    const-wide/16 v10, 0x64

    rem-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    :goto_1
    int-to-long v4, v4

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->maxPrice:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    .end local v3    # "tmp":Ljava/lang/String;
    :cond_2
    :goto_2
    :try_start_2
    const-string/jumbo v4, "currency_text"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->currency:Ljava/lang/String;

    .line 123
    .end local v1    # "market":Lorg/json/JSONObject;
    .end local v2    # "response":Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;
    :cond_3
    :goto_3
    return-object v2

    .restart local v1    # "market":Lorg/json/JSONObject;
    .restart local v2    # "response":Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;
    :cond_4
    move v6, v5

    .line 100
    goto :goto_0

    .restart local v3    # "tmp":Ljava/lang/String;
    :cond_5
    move v4, v5

    .line 111
    goto :goto_1

    .line 113
    .end local v3    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "market":Lorg/json/JSONObject;
    .end local v2    # "response":Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;
    :catch_1
    move-exception v0

    .line 121
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    .line 123
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;

    move-result-object v0

    return-object v0
.end method

.method public setAlbumId(I)V
    .locals 1
    .param p1, "albumID"    # I

    .prologue
    .line 73
    const-string/jumbo v0, "album_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 74
    return-void
.end method

.method public setAlbumsParams(II)V
    .locals 2
    .param p1, "albumsCount"    # I
    .param p2, "albumsOffset"    # I

    .prologue
    .line 65
    const-string/jumbo v0, "albums_count"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "albums_offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 66
    return-void
.end method

.method public setPrice(JJ)V
    .locals 7
    .param p1, "priceFrom"    # J
    .param p3, "priceTo"    # J

    .prologue
    const-wide/16 v4, 0x64

    .line 85
    const-string/jumbo v0, "price_from"

    mul-long v2, p1, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->param(Ljava/lang/String;J)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 86
    const-string/jumbo v0, "price_to"

    mul-long v2, p3, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->param(Ljava/lang/String;J)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 87
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 1
    .param p1, "searchQuery"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string/jumbo v0, "query"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 70
    return-void
.end method

.method public setSortType(Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;)V
    .locals 2
    .param p1, "sortType"    # Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    .prologue
    .line 77
    const-string/jumbo v0, "sort_type"

    invoke-static {p1}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->access$000(Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 78
    return-void
.end method

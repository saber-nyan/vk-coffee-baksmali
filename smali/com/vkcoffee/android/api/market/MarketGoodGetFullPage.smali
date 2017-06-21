.class public Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "MarketGoodGetFullPage.java"

# interfaces
.implements Lcom/vkcoffee/android/data/ServerKeys;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;",
        ">;",
        "Lcom/vkcoffee/android/data/ServerKeys;"
    }
.end annotation


# direct methods
.method public constructor <init>(IIZII)V
    .locals 3
    .param p1, "ownerId"    # I
    .param p2, "item_id"    # I
    .param p3, "forceLoadGood"    # Z
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .prologue
    const/4 v2, 0x1

    .line 108
    const-string/jumbo v0, "execute.getMarketItemFullPage"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "offset"

    invoke-virtual {v0, v1, p4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p5}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "need_likes"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 110
    if-eqz p3, :cond_0

    .line 111
    const-string/jumbo v0, "forceLoadGood"

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;
    .locals 4
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 118
    :try_start_0
    new-instance v1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3}, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;-><init>(Lorg/json/JSONObject;Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    move-object v1, v2

    .line 121
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
    .line 19
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;

    move-result-object v0

    return-object v0
.end method

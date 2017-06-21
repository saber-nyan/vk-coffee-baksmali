.class public Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$Result;
.super Ljava/lang/Object;
.source "GetGiftsStockBalance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/store/GetGiftsStockBalance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field public balance:I

.field public products:Lcom/vkcoffee/android/data/VKList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vkcoffee/android/api/store/GetGiftsStockBalance;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/api/store/GetGiftsStockBalance;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "this$0"    # Lcom/vkcoffee/android/api/store/GetGiftsStockBalance;
    .param p2, "source"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/vkcoffee/android/data/PurchasesManager$PayNotAvailableException;
        }
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$Result;->this$0:Lcom/vkcoffee/android/api/store/GetGiftsStockBalance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string/jumbo v2, "balance"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 43
    .local v1, "votes":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$Result;->balance:I

    .line 44
    new-instance v2, Lcom/vkcoffee/android/data/VKList;

    const-string/jumbo v3, "products"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-class v4, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;

    invoke-direct {v2, v3, v4}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$Result;->products:Lcom/vkcoffee/android/data/VKList;

    .line 46
    iget-object v2, p0, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$Result;->products:Lcom/vkcoffee/android/data/VKList;

    new-instance v3, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$Result$1;

    invoke-direct {v3, p0, p1}, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$Result$1;-><init>(Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$Result;Lcom/vkcoffee/android/api/store/GetGiftsStockBalance;)V

    invoke-static {v2, v3}, Lcom/vkcoffee/android/functions/Functions;->map(Ljava/util/Collection;Lcom/vkcoffee/android/functions/F1;)Ljava/util/Map;

    move-result-object v0

    .line 53
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;>;"
    invoke-static {}, Lcom/vkcoffee/android/data/PurchasesManager;->canUseInApps()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    new-instance v2, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$Result$2;

    invoke-direct {v2, p0, p1}, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$Result$2;-><init>(Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$Result;Lcom/vkcoffee/android/api/store/GetGiftsStockBalance;)V

    invoke-static {v0, v2}, Lcom/vkcoffee/android/data/PurchasesManager;->getGooglePlayPrices(Ljava/util/Map;Lcom/vkcoffee/android/functions/F2;)V

    .line 64
    return-void

    .line 43
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;>;"
    :cond_0
    const-string/jumbo v2, "votes"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 62
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;>;"
    :cond_1
    new-instance v2, Lcom/vkcoffee/android/data/PurchasesManager$PayNotAvailableException;

    invoke-direct {v2}, Lcom/vkcoffee/android/data/PurchasesManager$PayNotAvailableException;-><init>()V

    throw v2
.end method

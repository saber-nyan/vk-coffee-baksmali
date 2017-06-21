.class public Lcom/vkcoffee/android/api/store/StoreBuyProduct;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "StoreBuyProduct.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/data/PurchasesManager$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "productID"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "referrer"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 15
    const-string/jumbo v3, "store.buyProduct"

    invoke-direct {p0, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string/jumbo v3, "type"

    invoke-virtual {p0, v3, p2}, Lcom/vkcoffee/android/api/store/StoreBuyProduct;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    const-string/jumbo v3, "product_id"

    invoke-virtual {p0, v3, p1}, Lcom/vkcoffee/android/api/store/StoreBuyProduct;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    if-eqz p3, :cond_0

    const-string/jumbo v3, ""

    if-eq p3, v3, :cond_0

    .line 19
    const-string/jumbo v3, "sticker_referrer"

    invoke-virtual {p0, v3, p3}, Lcom/vkcoffee/android/api/store/StoreBuyProduct;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 21
    :cond_0
    sget-object v3, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-object v4, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    sget-object v4, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    sget-object v4, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    xor-int v0, p1, v3

    .line 22
    .local v0, "guid":I
    const-string/jumbo v3, "guid"

    invoke-virtual {p0, v3, v0}, Lcom/vkcoffee/android/api/store/StoreBuyProduct;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    const-string/jumbo v3, "force_inapp"

    invoke-virtual {p0, v3, v2}, Lcom/vkcoffee/android/api/store/StoreBuyProduct;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 24
    const-string/jumbo v3, "no_inapp"

    invoke-static {}, Lcom/vkcoffee/android/data/PurchasesManager;->canUseInApps()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    invoke-virtual {p0, v3, v1}, Lcom/vkcoffee/android/api/store/StoreBuyProduct;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 25
    return-void

    :cond_1
    move v1, v2

    .line 24
    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/PurchasesManager$Result;
    .locals 2
    .param p1, "source"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/vkcoffee/android/data/PurchasesManager$Result;

    const-string/jumbo v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/data/PurchasesManager$Result;-><init>(Lorg/json/JSONObject;)V

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
    .line 13
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/store/StoreBuyProduct;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/PurchasesManager$Result;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/vkcoffee/android/api/store/StorePurchase;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "StorePurchase.java"


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
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "storeID"    # Ljava/lang/String;
    .param p3, "transaction"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 12
    const-string/jumbo v1, "store.purchase"

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1, p5}, Lcom/vkcoffee/android/api/store/StorePurchase;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    const-string/jumbo v1, "product_id"

    invoke-virtual {p0, v1, p1}, Lcom/vkcoffee/android/api/store/StorePurchase;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    const-string/jumbo v1, "merchant"

    const-string/jumbo v2, "google"

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/store/StorePurchase;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    if-eqz p2, :cond_0

    .line 18
    const-string/jumbo v1, "merchant_product_id"

    invoke-virtual {p0, v1, p2}, Lcom/vkcoffee/android/api/store/StorePurchase;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    const-string/jumbo v1, "merchant_transaction_id"

    invoke-virtual {p0, v1, p3}, Lcom/vkcoffee/android/api/store/StorePurchase;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 20
    const-string/jumbo v1, "receipt"

    invoke-virtual {p0, v1, p4}, Lcom/vkcoffee/android/api/store/StorePurchase;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 22
    :cond_0
    const-string/jumbo v1, "force_inapp"

    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/store/StorePurchase;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    const-string/jumbo v1, "no_inapp"

    invoke-static {}, Lcom/vkcoffee/android/data/PurchasesManager;->canUseInApps()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/store/StorePurchase;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 24
    return-void
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
    .line 27
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
    .line 9
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/store/StorePurchase;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/PurchasesManager$Result;

    move-result-object v0

    return-object v0
.end method

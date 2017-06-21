.class public Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;
.super Lcom/vkcoffee/android/data/orm/Product;
.source "GetGiftsStockBalance.java"

# interfaces
.implements Lcom/vkcoffee/android/data/PurchasesManager$Product;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/store/GetGiftsStockBalance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VotesProduct"
.end annotation


# instance fields
.field public author:Ljava/lang/String;

.field public can_purchase:Z

.field public description:Ljava/lang/String;

.field public free:Z

.field public merchant_product_id:Ljava/lang/String;

.field public votes:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "source"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 76
    invoke-direct {p0}, Lcom/vkcoffee/android/data/orm/Product;-><init>()V

    .line 77
    const-string/jumbo v1, "product"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 78
    .local v0, "product":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;->parseProduct(Lorg/json/JSONObject;)V

    .line 80
    const-string/jumbo v1, "votes"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;->votes:I

    .line 83
    :cond_0
    const-string/jumbo v1, "description"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;->description:Ljava/lang/String;

    .line 84
    const-string/jumbo v1, "author"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;->author:Ljava/lang/String;

    .line 85
    const-string/jumbo v1, "can_purchase"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;->can_purchase:Z

    .line 86
    const-string/jumbo v1, "free"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;->free:Z

    .line 87
    const-string/jumbo v1, "merchant_product_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;->merchant_product_id:Ljava/lang/String;

    .line 88
    return-void

    :cond_1
    move v1, v3

    .line 85
    goto :goto_0

    :cond_2
    move v2, v3

    .line 86
    goto :goto_1
.end method


# virtual methods
.method public afterPurchased(Lcom/vkcoffee/android/data/PurchasesManager$Result;)V
    .locals 0
    .param p1, "result"    # Lcom/vkcoffee/android/data/PurchasesManager$Result;

    .prologue
    .line 98
    return-void
.end method

.method public getDeveloperPayload()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMerchantProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;->merchant_product_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentType()Lcom/vkcoffee/android/api/models/PaymentType;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/vkcoffee/android/api/models/PaymentType;->Inapp:Lcom/vkcoffee/android/api/models/PaymentType;

    return-object v0
.end method

.method public getPrice()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public isFree()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

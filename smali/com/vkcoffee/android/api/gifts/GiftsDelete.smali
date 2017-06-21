.class public Lcom/vkcoffee/android/api/gifts/GiftsDelete;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "GiftsDelete.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/api/models/GiftItem;)V
    .locals 2
    .param p1, "item"    # Lcom/vkcoffee/android/api/models/GiftItem;

    .prologue
    .line 13
    const-string/jumbo v0, "gifts.delete"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string/jumbo v0, "id"

    iget v1, p1, Lcom/vkcoffee/android/api/models/GiftItem;->id:I

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/gifts/GiftsDelete;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    const-string/jumbo v0, "gift_hash"

    iget-object v1, p1, Lcom/vkcoffee/android/api/models/GiftItem;->giftHash:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/gifts/GiftsDelete;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 20
    const-string/jumbo v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

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
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/gifts/GiftsDelete;->parse(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/vkcoffee/android/api/photos/SDKPhotosResolveLink;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "SDKPhotosResolveLink.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lcom/vkcoffee/android/api/Callback;

.field width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "photo_id"    # Ljava/lang/String;
    .param p2, "width"    # I

    .prologue
    const/4 v1, 0x0

    .line 13
    const-string/jumbo v0, "photos.getById"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    iput p2, p0, Lcom/vkcoffee/android/api/photos/SDKPhotosResolveLink;->width:I

    .line 15
    const-string/jumbo v0, "photos"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/photos/SDKPhotosResolveLink;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    const-string/jumbo v0, "extended"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/photos/SDKPhotosResolveLink;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    const-string/jumbo v0, "photo_sizes"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/photos/SDKPhotosResolveLink;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/photos/SDKPhotosResolveLink;->parse(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 22
    :try_start_0
    const-string/jumbo v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 23
    .local v0, "p":Lorg/json/JSONObject;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "photo_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/api/photos/SDKPhotosResolveLink;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 26
    .end local v0    # "p":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 24
    :catch_0
    move-exception v1

    .line 26
    const/4 v1, 0x0

    goto :goto_0
.end method

.class public Lcom/vkcoffee/android/api/photos/PhotosGetUploadServer;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "PhotosGetUploadServer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "albumID"    # I
    .param p2, "ownerID"    # I

    .prologue
    .line 13
    const-string/jumbo v0, "photos.getUploadServer"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string/jumbo v0, "album_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/photos/PhotosGetUploadServer;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    if-gez p2, :cond_0

    .line 16
    const-string/jumbo v0, "group_id"

    neg-int v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosGetUploadServer;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    :cond_0
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
    .line 10
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/photos/PhotosGetUploadServer;->parse(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 22
    :try_start_0
    const-string/jumbo v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "upload_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    .line 23
    :catch_0
    move-exception v0

    .line 25
    const/4 v0, 0x0

    goto :goto_0
.end method

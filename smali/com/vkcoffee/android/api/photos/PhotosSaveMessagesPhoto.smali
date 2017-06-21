.class public Lcom/vkcoffee/android/api/photos/PhotosSaveMessagesPhoto;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "PhotosSaveMessagesPhoto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/attachments/PhotoAttachment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "photo"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;

    .prologue
    .line 16
    const-string/jumbo v0, "photos.saveMessagesPhoto"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 17
    const-string/jumbo v0, "server"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/photos/PhotosSaveMessagesPhoto;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "photo"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "hash"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    const-string/jumbo v0, "photo_sizes"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosSaveMessagesPhoto;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/attachments/PhotoAttachment;
    .locals 5
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 23
    :try_start_0
    new-instance v1, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    new-instance v2, Lcom/vkcoffee/android/Photo;

    const-string/jumbo v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/Photo;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/attachments/PhotoAttachment;-><init>(Lcom/vkcoffee/android/Photo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-object v1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "Vk"

    invoke-static {v1, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
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
    .line 13
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/photos/PhotosSaveMessagesPhoto;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/attachments/PhotoAttachment;

    move-result-object v0

    return-object v0
.end method

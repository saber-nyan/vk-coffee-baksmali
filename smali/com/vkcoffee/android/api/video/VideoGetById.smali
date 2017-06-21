.class public Lcom/vkcoffee/android/api/video/VideoGetById;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "VideoGetById.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/VideoFile;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "vid"    # I
    .param p3, "accessKey"    # Ljava/lang/String;

    .prologue
    .line 14
    const-string/jumbo v0, "video.get"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 15
    const-string/jumbo v0, "videos"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/video/VideoGetById;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    const-string/jumbo v0, "extended"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/video/VideoGetById;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    if-eqz p3, :cond_0

    .line 18
    const-string/jumbo v0, "access_key"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/video/VideoGetById;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VideoFile;
    .locals 5
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    :try_start_0
    const-string/jumbo v4, "response"

    invoke-static {p1, v4}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v4

    iget-object v0, v4, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 25
    .local v0, "a":Lorg/json/JSONArray;
    new-instance v2, Lcom/vkcoffee/android/api/VideoFile;

    invoke-direct {v2}, Lcom/vkcoffee/android/api/VideoFile;-><init>()V

    .line 26
    .local v2, "v":Lcom/vkcoffee/android/api/VideoFile;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 27
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 28
    .local v1, "jv":Lorg/json/JSONObject;
    new-instance v2, Lcom/vkcoffee/android/api/VideoFile;

    .end local v2    # "v":Lcom/vkcoffee/android/api/VideoFile;
    invoke-direct {v2, v1}, Lcom/vkcoffee/android/api/VideoFile;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "jv":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 31
    :catch_0
    move-exception v3

    .line 32
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    invoke-static {v4, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    const/4 v2, 0x0

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
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/video/VideoGetById;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VideoFile;

    move-result-object v0

    return-object v0
.end method

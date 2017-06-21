.class public Lcom/vkcoffee/android/api/photos/PhotosSave;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "PhotosSave.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/vkcoffee/android/Photo;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "albumID"    # I
    .param p2, "ownerID"    # I
    .param p3, "server"    # Ljava/lang/String;
    .param p4, "photosList"    # Ljava/lang/String;
    .param p5, "hash"    # Ljava/lang/String;
    .param p6, "descr"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string/jumbo v0, "photos.save"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 20
    const-string/jumbo v0, "album_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/photos/PhotosSave;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 21
    if-gez p2, :cond_0

    .line 22
    const-string/jumbo v0, "group_id"

    neg-int v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosSave;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 24
    :cond_0
    const-string/jumbo v0, "server"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/photos/PhotosSave;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "photos_list"

    invoke-virtual {v0, v1, p4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "hash"

    invoke-virtual {v0, v1, p5}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 25
    const-string/jumbo v0, "caption"

    invoke-virtual {p0, v0, p6}, Lcom/vkcoffee/android/api/photos/PhotosSave;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 26
    const-string/jumbo v0, "photo_sizes"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosSave;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 27
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
    .line 16
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/photos/PhotosSave;->parse(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Photo;>;"
    const-string/jumbo v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 33
    .local v0, "a":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 34
    new-instance v4, Lcom/vkcoffee/android/Photo;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/Photo;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Photo;>;"
    :catch_0
    move-exception v3

    .line 38
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "Vk"

    invoke-static {v4, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    const/4 v2, 0x0

    .end local v3    # "x":Ljava/lang/Exception;
    :cond_0
    return-object v2
.end method

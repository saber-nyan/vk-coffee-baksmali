.class public Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "VideoGetAlbumsByVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "targetID"    # I
    .param p2, "ownerID"    # I
    .param p3, "videoID"    # I

    .prologue
    .line 18
    const-string/jumbo v0, "execute.getVideoAlbums"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 19
    const-string/jumbo v0, "target_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 20
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 21
    const-string/jumbo v0, "video_id"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 22
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo$Result;
    .locals 7
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v3, Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo$Result;

    invoke-direct {v3}, Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo$Result;-><init>()V

    .line 27
    .local v3, "res":Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo$Result;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo$Result;->userAlbums:Ljava/util/List;

    .line 28
    const-string/jumbo v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "albums"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 29
    .local v2, "jva":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 30
    iget-object v4, v3, Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo$Result;->userAlbums:Ljava/util/List;

    new-instance v5, Lcom/vkcoffee/android/api/VideoAlbum;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/api/VideoAlbum;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_0
    const-string/jumbo v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "added_to"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 33
    .local v0, "added":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo$Result;->addedAlbums:Ljava/util/List;

    .line 34
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 35
    iget-object v4, v3, Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo$Result;->addedAlbums:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 37
    :cond_1
    return-object v3
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo$Result;

    move-result-object v0

    return-object v0
.end method

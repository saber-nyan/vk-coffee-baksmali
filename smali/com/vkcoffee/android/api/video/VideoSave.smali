.class public Lcom/vkcoffee/android/api/video/VideoSave;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "VideoSave.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/video/VideoSave$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/video/VideoSave$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .param p1, "ownerID"    # I
    .param p2, "album_id"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descr"    # Ljava/lang/String;
    .param p5, "isPrivate"    # Z
    .param p6, "link"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/api/video/VideoSave;-><init>(ILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 34
    const-string/jumbo v0, "link"

    invoke-virtual {p0, v0, p6}, Lcom/vkcoffee/android/api/video/VideoSave;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 35
    const-string/jumbo v0, "album_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/video/VideoSave;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 36
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "ownerID"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descr"    # Ljava/lang/String;
    .param p4, "isPrivate"    # Z
    .param p5, "isPreview"    # Z

    .prologue
    const/4 v2, 0x1

    .line 14
    const-string/jumbo v0, "video.save"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 15
    if-gez p1, :cond_0

    .line 16
    const-string/jumbo v0, "group_id"

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/video/VideoSave;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    :cond_0
    if-eqz p2, :cond_1

    .line 19
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/video/VideoSave;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 21
    :cond_1
    if-eqz p3, :cond_2

    .line 22
    const-string/jumbo v0, "description"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/video/VideoSave;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 24
    :cond_2
    if-eqz p4, :cond_3

    .line 25
    const-string/jumbo v0, "is_private"

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/api/video/VideoSave;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 27
    :cond_3
    if-eqz p5, :cond_4

    .line 28
    const-string/jumbo v0, "preview"

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/api/video/VideoSave;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 30
    :cond_4
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/video/VideoSave$Result;
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 40
    :try_start_0
    const-string/jumbo v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 41
    .local v0, "r":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkcoffee/android/api/video/VideoSave$Result;

    invoke-direct {v1}, Lcom/vkcoffee/android/api/video/VideoSave$Result;-><init>()V

    .line 42
    .local v1, "res":Lcom/vkcoffee/android/api/video/VideoSave$Result;
    const-string/jumbo v3, "upload_url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/vkcoffee/android/api/video/VideoSave$Result;->uploadUrl:Ljava/lang/String;

    .line 43
    const-string/jumbo v3, "video_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/vkcoffee/android/api/video/VideoSave$Result;->id:I

    .line 44
    const-string/jumbo v3, "access_key"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/vkcoffee/android/api/video/VideoSave$Result;->accessKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "r":Lorg/json/JSONObject;
    .end local v1    # "res":Lcom/vkcoffee/android/api/video/VideoSave$Result;
    :goto_0
    return-object v1

    .line 46
    :catch_0
    move-exception v2

    .line 47
    .local v2, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "vk"

    invoke-static {v3, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
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
    .line 11
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/video/VideoSave;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/video/VideoSave$Result;

    move-result-object v0

    return-object v0
.end method

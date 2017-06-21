.class public Lcom/vkcoffee/android/api/photos/PhotosCreateAlbum;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "PhotosCreateAlbum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/PhotoAlbum;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "descr"    # Ljava/lang/String;
    .param p3, "owner_id"    # I

    .prologue
    .line 12
    const-string/jumbo v0, "photos.createAlbum"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 13
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/photos/PhotosCreateAlbum;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    const-string/jumbo v0, "description"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/photos/PhotosCreateAlbum;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    if-gez p3, :cond_0

    .line 16
    const-string/jumbo v0, "group_id"

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosCreateAlbum;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "descr"    # Ljava/lang/String;
    .param p3, "privacy"    # Ljava/lang/String;
    .param p4, "privacyComment"    # Ljava/lang/String;
    .param p5, "owner_id"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p5}, Lcom/vkcoffee/android/api/photos/PhotosCreateAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    const-string/jumbo v0, "privacy_view"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/photos/PhotosCreateAlbum;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    const-string/jumbo v0, "privacy_comment"

    invoke-virtual {p0, v0, p4}, Lcom/vkcoffee/android/api/photos/PhotosCreateAlbum;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "descr"    # Ljava/lang/String;
    .param p3, "uploadByAdminsOnly"    # Z
    .param p4, "commentsDisabled"    # Z
    .param p5, "owner_id"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p5}, Lcom/vkcoffee/android/api/photos/PhotosCreateAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    const-string/jumbo v1, "upload_by_admins_only"

    if-eqz p3, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/photos/PhotosCreateAlbum;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 30
    const-string/jumbo v1, "comments_disabled"

    if-eqz p4, :cond_1

    const-string/jumbo v0, "1"

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/photos/PhotosCreateAlbum;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 31
    return-void

    .line 29
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0

    .line 30
    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_1
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/PhotoAlbum;
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 35
    :try_start_0
    new-instance v1, Lcom/vkcoffee/android/api/PhotoAlbum;

    const-string/jumbo v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/api/PhotoAlbum;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    invoke-static {v1, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
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
    .line 9
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/photos/PhotosCreateAlbum;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/PhotoAlbum;

    move-result-object v0

    return-object v0
.end method

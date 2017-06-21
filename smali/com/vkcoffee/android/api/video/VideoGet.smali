.class public Lcom/vkcoffee/android/api/video/VideoGet;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "VideoGet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/ListAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/VideoFile;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(IIII)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "album"    # I

    .prologue
    const/4 v2, 0x1

    .line 41
    const-string/jumbo v0, "execute.getVideosWithProfiles"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;)V

    .line 42
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/video/VideoGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "album_id"

    invoke-virtual {v0, v1, p4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 43
    const-string/jumbo v0, "extended"

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/api/video/VideoGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "new_albums"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 44
    const-string/jumbo v0, "func_c"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/video/VideoGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 45
    return-void
.end method

.method public static get(IIII)Lcom/vkcoffee/android/api/video/VideoGet;
    .locals 1
    .param p0, "owner_id"    # I
    .param p1, "album_id"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 29
    new-instance v0, Lcom/vkcoffee/android/api/video/VideoGet;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/vkcoffee/android/api/video/VideoGet;-><init>(IIII)V

    return-object v0
.end method

.method public static getAdded(III)Lcom/vkcoffee/android/api/video/VideoGet;
    .locals 2
    .param p0, "owner_id"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 37
    new-instance v0, Lcom/vkcoffee/android/api/video/VideoGet;

    const/4 v1, -0x2

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/vkcoffee/android/api/video/VideoGet;-><init>(IIII)V

    return-object v0
.end method

.method public static getBookmarks(II)Lcom/vkcoffee/android/api/video/VideoGet;
    .locals 3
    .param p0, "offset"    # I
    .param p1, "count"    # I

    .prologue
    .line 21
    new-instance v0, Lcom/vkcoffee/android/api/video/VideoGet;

    const/4 v1, 0x0

    const/16 v2, -0x3ea

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/vkcoffee/android/api/video/VideoGet;-><init>(IIII)V

    return-object v0
.end method

.method public static getUploaded(III)Lcom/vkcoffee/android/api/video/VideoGet;
    .locals 2
    .param p0, "owner_id"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 33
    new-instance v0, Lcom/vkcoffee/android/api/video/VideoGet;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/vkcoffee/android/api/video/VideoGet;-><init>(IIII)V

    return-object v0
.end method

.method public static getUserVideos(III)Lcom/vkcoffee/android/api/video/VideoGet;
    .locals 2
    .param p0, "user_id"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 25
    new-instance v0, Lcom/vkcoffee/android/api/video/VideoGet;

    const/16 v1, -0x3e9

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/vkcoffee/android/api/video/VideoGet;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;
    .locals 10
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/api/VideoFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 49
    :try_start_0
    const-string/jumbo v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "profiles"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 50
    .local v5, "users":Lorg/json/JSONArray;
    const-string/jumbo v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "groups"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 51
    .local v0, "groups":Lorg/json/JSONArray;
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 52
    .local v4, "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    if-eqz v5, :cond_1

    .line 53
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 54
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 55
    .local v2, "ju":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v3}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 56
    .local v3, "p":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v7, "id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 57
    const-string/jumbo v7, "first_name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 58
    const-string/jumbo v7, "last_name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 59
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 60
    sget v7, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_0

    const-string/jumbo v7, "photo_100"

    :goto_1
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 61
    iget v7, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v4, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    const-string/jumbo v7, "photo_50"

    goto :goto_1

    .line 64
    .end local v1    # "i":I
    .end local v2    # "ju":Lorg/json/JSONObject;
    .end local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    if-eqz v0, :cond_3

    .line 65
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 66
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 67
    .restart local v2    # "ju":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v3}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 68
    .restart local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v7, "id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    neg-int v7, v7

    iput v7, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 69
    const-string/jumbo v7, "name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 70
    sget v7, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_2

    const-string/jumbo v7, "photo_100"

    :goto_3
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 71
    iget v7, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v4, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 70
    :cond_2
    const-string/jumbo v7, "photo_50"

    goto :goto_3

    .line 74
    .end local v1    # "i":I
    .end local v2    # "ju":Lorg/json/JSONObject;
    .end local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_3
    new-instance v7, Lcom/vkcoffee/android/data/VKList;

    const-string/jumbo v8, "response"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Lcom/vkcoffee/android/api/video/VideoGet$1;

    invoke-direct {v9, p0, v4}, Lcom/vkcoffee/android/api/video/VideoGet$1;-><init>(Lcom/vkcoffee/android/api/video/VideoGet;Landroid/util/SparseArray;)V

    invoke-direct {v7, v8, v9}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Lcom/vkcoffee/android/data/Parser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "groups":Lorg/json/JSONArray;
    .end local v4    # "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v5    # "users":Lorg/json/JSONArray;
    :goto_4
    return-object v7

    .line 85
    :catch_0
    move-exception v6

    .line 86
    .local v6, "x":Ljava/lang/Exception;
    const-string/jumbo v7, "vk"

    invoke-static {v7, v6}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    const/4 v7, 0x0

    goto :goto_4
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/video/VideoGet;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;

    move-result-object v0

    return-object v0
.end method

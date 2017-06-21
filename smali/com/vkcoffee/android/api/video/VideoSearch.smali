.class public Lcom/vkcoffee/android/api/video/VideoSearch;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "VideoSearch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/data/VKList",
        "<",
        "Lcom/vkcoffee/android/api/VideoFile;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZIZI)V
    .locals 3
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "hd"    # Z
    .param p5, "length"    # I
    .param p6, "safe"    # Z
    .param p7, "sort"    # I

    .prologue
    .line 20
    const-string/jumbo v0, "execute.searchVideosWithProfiles"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 21
    const-string/jumbo v0, "q"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/video/VideoSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 22
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/video/VideoSearch;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    const-string/jumbo v1, "hd"

    if-eqz p4, :cond_1

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/video/VideoSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 24
    if-lez p5, :cond_0

    .line 25
    const-string/jumbo v1, "filters"

    const/4 v0, 0x1

    if-ne p5, v0, :cond_2

    const-string/jumbo v0, "short"

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/video/VideoSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 27
    :cond_0
    const-string/jumbo v1, "adult"

    if-eqz p6, :cond_3

    const-string/jumbo v0, "0"

    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/video/VideoSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 28
    const-string/jumbo v0, "sort"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/video/VideoSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 29
    return-void

    .line 23
    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_0

    .line 25
    :cond_2
    const-string/jumbo v0, "long"

    goto :goto_1

    .line 27
    :cond_3
    const-string/jumbo v0, "1"

    goto :goto_2
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;
    .locals 13
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
    const/high16 v12, 0x3f800000    # 1.0f

    .line 33
    :try_start_0
    const-string/jumbo v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "profiles"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 34
    .local v6, "u":Lorg/json/JSONArray;
    const-string/jumbo v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "groups"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 35
    .local v0, "groups":Lorg/json/JSONArray;
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .local v3, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 36
    .local v5, "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v6, :cond_1

    .line 37
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 38
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "id"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 39
    .local v7, "uid":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "first_name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "last_name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    sget v9, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v9, v9, v12

    if-lez v9, :cond_0

    const-string/jumbo v9, "photo_100"

    :goto_1
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_0
    const-string/jumbo v9, "photo_50"

    goto :goto_1

    .line 43
    .end local v1    # "i":I
    .end local v7    # "uid":I
    :cond_1
    if-eqz v0, :cond_3

    .line 44
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_3

    .line 45
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 46
    .local v2, "ju":Lorg/json/JSONObject;
    new-instance v4, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v4}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 47
    .local v4, "p":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v9, "id"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    neg-int v9, v9

    iput v9, v4, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 48
    const-string/jumbo v9, "name"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 49
    sget v9, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v9, v9, v12

    if-lez v9, :cond_2

    const-string/jumbo v9, "photo_100"

    :goto_3
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 50
    iget v9, v4, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v10, v4, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    iget v9, v4, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v10, v4, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 49
    :cond_2
    const-string/jumbo v9, "photo_50"

    goto :goto_3

    .line 54
    .end local v1    # "i":I
    .end local v2    # "ju":Lorg/json/JSONObject;
    .end local v4    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_3
    new-instance v9, Lcom/vkcoffee/android/data/VKList;

    const-string/jumbo v10, "response"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    new-instance v11, Lcom/vkcoffee/android/api/video/VideoSearch$1;

    invoke-direct {v11, p0, v3, v5}, Lcom/vkcoffee/android/api/video/VideoSearch$1;-><init>(Lcom/vkcoffee/android/api/video/VideoSearch;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    invoke-direct {v9, v10, v11}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Lcom/vkcoffee/android/data/Parser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "groups":Lorg/json/JSONArray;
    .end local v3    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v5    # "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v6    # "u":Lorg/json/JSONArray;
    :goto_4
    return-object v9

    .line 63
    :catch_0
    move-exception v8

    .line 64
    .local v8, "x":Ljava/lang/Exception;
    const-string/jumbo v9, "vk"

    invoke-static {v9, v8}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    const/4 v9, 0x0

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
    .line 17
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/video/VideoSearch;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;

    move-result-object v0

    return-object v0
.end method

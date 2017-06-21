.class public Lcom/vkcoffee/android/api/apps/AppsGetActivity;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "AppsGetActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/data/VKFromList",
        "<",
        "Lcom/vkcoffee/android/data/GameFeedEntry;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 25
    const-string/jumbo v0, "apps.getActivity"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 26
    const-string/jumbo v0, "platform"

    const-string/jumbo v1, "android"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/AppsGetActivity;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 27
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "photo_100,photo_50,sex"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/AppsGetActivity;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 28
    const-string/jumbo v0, "start_from"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/apps/AppsGetActivity;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 29
    const-string/jumbo v0, "count"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/apps/AppsGetActivity;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "app_id"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/api/apps/AppsGetActivity;-><init>(Ljava/lang/String;I)V

    .line 21
    const-string/jumbo v0, "filter_app_id"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/apps/AppsGetActivity;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 22
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKFromList;
    .locals 14
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/vkcoffee/android/data/VKFromList",
            "<",
            "Lcom/vkcoffee/android/data/GameFeedEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 35
    .local v9, "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 36
    .local v1, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/data/ApiApplication;>;"
    new-instance v4, Lcom/vkcoffee/android/data/VKFromList;

    const-string/jumbo v12, "response"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string/jumbo v13, "next_from"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Lcom/vkcoffee/android/data/VKFromList;-><init>(Ljava/lang/String;)V

    .line 37
    .local v4, "feed":Lcom/vkcoffee/android/data/VKFromList;, "Lcom/vkcoffee/android/data/VKFromList<Lcom/vkcoffee/android/data/GameFeedEntry;>;"
    const-string/jumbo v12, "response"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string/jumbo v13, "profiles"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 38
    .local v10, "profiles1":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v5, v12, :cond_2

    .line 39
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 40
    .local v7, "jp":Lorg/json/JSONObject;
    new-instance v8, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v8}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 41
    .local v8, "p":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v12, "id"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v8, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 42
    const-string/jumbo v12, "first_name"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 43
    const-string/jumbo v12, "last_name"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 44
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v8, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 45
    sget v12, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_0

    const-string/jumbo v12, "photo_100"

    :goto_1
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 46
    const-string/jumbo v12, "sex"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    const/4 v12, 0x1

    :goto_2
    iput-boolean v12, v8, Lcom/vkcoffee/android/UserProfile;->f:Z

    .line 47
    iget v12, v8, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v9, v12, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 45
    :cond_0
    const-string/jumbo v12, "photo_50"

    goto :goto_1

    .line 46
    :cond_1
    const/4 v12, 0x0

    goto :goto_2

    .line 49
    .end local v7    # "jp":Lorg/json/JSONObject;
    .end local v8    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    const-string/jumbo v12, "response"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string/jumbo v13, "apps"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 50
    .local v2, "apps1":Lorg/json/JSONArray;
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v5, v12, :cond_3

    .line 51
    new-instance v0, Lcom/vkcoffee/android/data/ApiApplication;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/vkcoffee/android/data/ApiApplication;-><init>(Lorg/json/JSONObject;)V

    .line 52
    .local v0, "app":Lcom/vkcoffee/android/data/ApiApplication;
    iget v12, v0, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    invoke-virtual {v1, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 55
    .end local v0    # "app":Lcom/vkcoffee/android/data/ApiApplication;
    :cond_3
    const-string/jumbo v12, "response"

    invoke-static {p1, v12}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v12

    iget-object v6, v12, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 56
    .local v6, "jfeed":Lorg/json/JSONArray;
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v5, v12, :cond_5

    .line 57
    new-instance v3, Lcom/vkcoffee/android/data/GameFeedEntry;

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v3, v12, v9, v1}, Lcom/vkcoffee/android/data/GameFeedEntry;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 58
    .local v3, "e":Lcom/vkcoffee/android/data/GameFeedEntry;
    iget-object v12, v3, Lcom/vkcoffee/android/data/GameFeedEntry;->user:Lcom/vkcoffee/android/UserProfile;

    if-eqz v12, :cond_4

    iget-object v12, v3, Lcom/vkcoffee/android/data/GameFeedEntry;->app:Lcom/vkcoffee/android/data/ApiApplication;

    if-eqz v12, :cond_4

    .line 59
    invoke-virtual {v4, v3}, Lcom/vkcoffee/android/data/VKFromList;->add(Ljava/lang/Object;)Z

    .line 56
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 61
    :cond_4
    const-string/jumbo v12, "vk"

    const-string/jumbo v13, "NO USER"

    invoke-static {v12, v13}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 66
    .end local v1    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/data/ApiApplication;>;"
    .end local v2    # "apps1":Lorg/json/JSONArray;
    .end local v3    # "e":Lcom/vkcoffee/android/data/GameFeedEntry;
    .end local v4    # "feed":Lcom/vkcoffee/android/data/VKFromList;, "Lcom/vkcoffee/android/data/VKFromList<Lcom/vkcoffee/android/data/GameFeedEntry;>;"
    .end local v5    # "i":I
    .end local v6    # "jfeed":Lorg/json/JSONArray;
    .end local v9    # "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v10    # "profiles1":Lorg/json/JSONArray;
    :catch_0
    move-exception v11

    .line 67
    .local v11, "x":Ljava/lang/Exception;
    const-string/jumbo v12, "vk"

    invoke-static {v12, v11}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    const/4 v4, 0x0

    .end local v11    # "x":Ljava/lang/Exception;
    :cond_5
    return-object v4
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
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/apps/AppsGetActivity;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKFromList;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetComments;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "NewsfeedGetComments.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/data/VKFromList",
        "<",
        "Lcom/vkcoffee/android/NewsEntry;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 19
    const-string/jumbo v0, "newsfeed.getComments"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 21
    if-eqz p1, :cond_0

    .line 22
    const-string/jumbo v0, "start_from"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetComments;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 24
    :cond_0
    const-string/jumbo v0, "count"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetComments;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "filters"

    const-string/jumbo v2, "post,photo,topic,video,market"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "last_comments_count"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 25
    const-string/jumbo v0, "photo_sizes"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetComments;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 26
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKFromList;
    .locals 17
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/vkcoffee/android/data/VKFromList",
            "<",
            "Lcom/vkcoffee/android/NewsEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    :try_start_0
    const-string/jumbo v13, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string/jumbo v14, "items"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 32
    .local v6, "items":Lorg/json/JSONArray;
    const-string/jumbo v13, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string/jumbo v14, "profiles"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 33
    .local v9, "profiles":Lorg/json/JSONArray;
    const-string/jumbo v13, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string/jumbo v14, "groups"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 34
    .local v4, "groups":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 35
    .local v1, "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v10, Lcom/vkcoffee/android/data/VKFromList;

    const-string/jumbo v13, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string/jumbo v14, "next_from"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Lcom/vkcoffee/android/data/VKFromList;-><init>(Ljava/lang/String;)V

    .line 36
    .local v10, "result":Lcom/vkcoffee/android/data/VKFromList;, "Lcom/vkcoffee/android/data/VKFromList<Lcom/vkcoffee/android/NewsEntry;>;"
    if-nez v6, :cond_1

    .line 74
    .end local v1    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v4    # "groups":Lorg/json/JSONArray;
    .end local v6    # "items":Lorg/json/JSONArray;
    .end local v9    # "profiles":Lorg/json/JSONArray;
    .end local v10    # "result":Lcom/vkcoffee/android/data/VKFromList;, "Lcom/vkcoffee/android/data/VKFromList<Lcom/vkcoffee/android/NewsEntry;>;"
    :cond_0
    :goto_0
    return-object v10

    .line 40
    .restart local v1    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v4    # "groups":Lorg/json/JSONArray;
    .restart local v6    # "items":Lorg/json/JSONArray;
    .restart local v9    # "profiles":Lorg/json/JSONArray;
    .restart local v10    # "result":Lcom/vkcoffee/android/data/VKFromList;, "Lcom/vkcoffee/android/data/VKFromList<Lcom/vkcoffee/android/NewsEntry;>;"
    :cond_1
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 41
    .local v7, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 43
    .local v8, "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v9, :cond_3

    .line 44
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v5, v13, :cond_3

    .line 45
    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string/jumbo v14, "id"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 46
    .local v11, "uid":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string/jumbo v15, "first_name"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string/jumbo v15, "last_name"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v11, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    sget v13, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v15

    if-lez v13, :cond_2

    const-string/jumbo v13, "photo_100"

    :goto_2
    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v11, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 47
    :cond_2
    const-string/jumbo v13, "photo_50"

    goto :goto_2

    .line 51
    .end local v5    # "i":I
    .end local v11    # "uid":I
    :cond_3
    if-eqz v4, :cond_6

    .line 52
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v5, v13, :cond_6

    .line 53
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string/jumbo v14, "id"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 54
    .local v3, "gid":I
    neg-int v13, v3

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string/jumbo v15, "name"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    neg-int v14, v3

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    sget v13, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v16

    if-lez v13, :cond_5

    const-string/jumbo v13, "photo_100"

    :goto_4
    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string/jumbo v14, "is_admin"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 55
    :cond_5
    const-string/jumbo v13, "photo_50"

    goto :goto_4

    .line 62
    .end local v3    # "gid":I
    .end local v5    # "i":I
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v5, v13, :cond_0

    .line 63
    new-instance v2, Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-direct {v2, v13, v7, v8}, Lcom/vkcoffee/android/NewsEntry;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 64
    .local v2, "e":Lcom/vkcoffee/android/NewsEntry;
    iget v13, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-gez v13, :cond_7

    iget v13, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    neg-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 65
    iget v13, v2, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v13, v13, 0x40

    iput v13, v2, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 67
    :cond_7
    invoke-virtual {v10, v2}, Lcom/vkcoffee/android/data/VKFromList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 71
    .end local v1    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v2    # "e":Lcom/vkcoffee/android/NewsEntry;
    .end local v4    # "groups":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .end local v6    # "items":Lorg/json/JSONArray;
    .end local v7    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v8    # "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v9    # "profiles":Lorg/json/JSONArray;
    .end local v10    # "result":Lcom/vkcoffee/android/data/VKFromList;, "Lcom/vkcoffee/android/data/VKFromList<Lcom/vkcoffee/android/NewsEntry;>;"
    :catch_0
    move-exception v12

    .line 72
    .local v12, "x":Ljava/lang/Exception;
    const-string/jumbo v13, "vk"

    invoke-static {v13, v12}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetComments;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKFromList;

    move-result-object v0

    return-object v0
.end method

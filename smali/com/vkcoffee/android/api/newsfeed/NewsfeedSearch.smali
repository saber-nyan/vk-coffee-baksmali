.class public Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "NewsfeedSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch$List;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch$List",
        "<",
        "Lcom/vkcoffee/android/NewsEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 3
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "owner"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v2, 0x1

    .line 47
    const-string/jumbo v0, "wall.search"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v0, "query"

    iput-object p1, p0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;->query:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 49
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 50
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 51
    const-string/jumbo v0, "count"

    invoke-virtual {p0, v0, p4}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 52
    const-string/jumbo v0, "extended"

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "photo_sizes"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 53
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "photo_100,photo_50,sex"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "count"    # I

    .prologue
    const/4 v2, 0x1

    .line 30
    const-string/jumbo v0, "newsfeed.search"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 31
    const-string/jumbo v0, "q"

    iput-object p1, p0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;->query:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 32
    const-string/jumbo v0, "count"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "start_from"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 33
    const-string/jumbo v0, "extended"

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "photo_sizes"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v2, 0x1

    .line 37
    const-string/jumbo v0, "wall.search"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 38
    const-string/jumbo v0, "query"

    iput-object p1, p0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;->query:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 39
    const-string/jumbo v0, "domain"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 40
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 41
    const-string/jumbo v0, "count"

    invoke-virtual {p0, v0, p4}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 42
    const-string/jumbo v0, "extended"

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "photo_sizes"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 43
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "photo_100,photo_50,sex"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 44
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch$List;
    .locals 18
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch$List",
            "<",
            "Lcom/vkcoffee/android/NewsEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    :try_start_0
    const-string/jumbo v14, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string/jumbo v15, "items"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 59
    .local v7, "items":Lorg/json/JSONArray;
    const-string/jumbo v14, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string/jumbo v15, "profiles"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 60
    .local v10, "profiles":Lorg/json/JSONArray;
    const-string/jumbo v14, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string/jumbo v15, "groups"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 61
    .local v5, "groups":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 62
    .local v1, "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v11, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch$List;

    const-string/jumbo v14, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string/jumbo v15, "next_from"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;->query:Ljava/lang/String;

    invoke-direct {v11, v14, v15}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch$List;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .local v11, "result":Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch$List;, "Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch$List<Lcom/vkcoffee/android/NewsEntry;>;"
    if-nez v7, :cond_1

    .line 103
    .end local v1    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v5    # "groups":Lorg/json/JSONArray;
    .end local v7    # "items":Lorg/json/JSONArray;
    .end local v10    # "profiles":Lorg/json/JSONArray;
    .end local v11    # "result":Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch$List;, "Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch$List<Lcom/vkcoffee/android/NewsEntry;>;"
    :cond_0
    :goto_0
    return-object v11

    .line 67
    .restart local v1    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v5    # "groups":Lorg/json/JSONArray;
    .restart local v7    # "items":Lorg/json/JSONArray;
    .restart local v10    # "profiles":Lorg/json/JSONArray;
    .restart local v11    # "result":Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch$List;, "Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch$List<Lcom/vkcoffee/android/NewsEntry;>;"
    :cond_1
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 68
    .local v8, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 69
    .local v9, "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 71
    .local v3, "f":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    if-eqz v10, :cond_4

    .line 72
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v6, v14, :cond_4

    .line 73
    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string/jumbo v15, "id"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 74
    .local v12, "uid":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string/jumbo v16, "first_name"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string/jumbo v16, "last_name"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v12, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    sget v14, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v16

    if-lez v14, :cond_2

    const-string/jumbo v14, "photo_100"

    :goto_2
    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v12, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string/jumbo v15, "sex"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    const/4 v14, 0x1

    :goto_3
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v3, v12, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 75
    :cond_2
    const-string/jumbo v14, "photo_50"

    goto :goto_2

    .line 76
    :cond_3
    const/4 v14, 0x0

    goto :goto_3

    .line 80
    .end local v6    # "i":I
    .end local v12    # "uid":I
    :cond_4
    if-eqz v5, :cond_7

    .line 81
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v6, v14, :cond_7

    .line 82
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string/jumbo v15, "id"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 83
    .local v4, "gid":I
    neg-int v14, v4

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string/jumbo v16, "name"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    neg-int v15, v4

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    sget v14, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v17

    if-lez v14, :cond_6

    const-string/jumbo v14, "photo_100"

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string/jumbo v15, "is_admin"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 84
    :cond_6
    const-string/jumbo v14, "photo_50"

    goto :goto_5

    .line 91
    .end local v4    # "gid":I
    .end local v6    # "i":I
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_6
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v6, v14, :cond_0

    .line 92
    new-instance v2, Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-direct {v2, v14, v8, v9, v3}, Lcom/vkcoffee/android/NewsEntry;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 93
    .local v2, "e":Lcom/vkcoffee/android/NewsEntry;
    iget v14, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-gez v14, :cond_8

    iget v14, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    neg-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 94
    iget v14, v2, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v14, v14, 0x40

    iput v14, v2, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 96
    :cond_8
    invoke-virtual {v11, v2}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch$List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 100
    .end local v1    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v2    # "e":Lcom/vkcoffee/android/NewsEntry;
    .end local v3    # "f":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v5    # "groups":Lorg/json/JSONArray;
    .end local v6    # "i":I
    .end local v7    # "items":Lorg/json/JSONArray;
    .end local v8    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v9    # "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v10    # "profiles":Lorg/json/JSONArray;
    .end local v11    # "result":Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch$List;, "Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch$List<Lcom/vkcoffee/android/NewsEntry;>;"
    :catch_0
    move-exception v13

    .line 101
    .local v13, "x":Ljava/lang/Exception;
    const-string/jumbo v14, "vk"

    invoke-static {v14, v13}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    const/4 v11, 0x0

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
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch$List;

    move-result-object v0

    return-object v0
.end method

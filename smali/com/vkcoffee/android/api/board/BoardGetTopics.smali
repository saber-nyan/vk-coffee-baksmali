.class public Lcom/vkcoffee/android/api/board/BoardGetTopics;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "BoardGetTopics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "gid"    # I
    .param p2, "tid"    # I

    .prologue
    .line 27
    const-string/jumbo v0, "board.getTopics"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 28
    const-string/jumbo v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/board/BoardGetTopics;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "topic_ids"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "extended"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 29
    const-string/jumbo v0, "preview"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/board/BoardGetTopics;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "preview_length"

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 30
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3
    .param p1, "gid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 20
    const-string/jumbo v0, "board.getTopics"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 22
    const-string/jumbo v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/board/BoardGetTopics;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "extended"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    const-string/jumbo v0, "preview"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/board/BoardGetTopics;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "preview_length"

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 24
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;
    .locals 12
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v9, 0x1

    .line 34
    :try_start_0
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 36
    .local v7, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    const-string/jumbo v10, "response"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "profiles"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 37
    .local v5, "u":Lorg/json/JSONArray;
    const-string/jumbo v10, "response"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "groups"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 39
    .local v0, "g":Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    .line 40
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v1, v10, :cond_0

    .line 41
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 42
    .local v2, "p":Lorg/json/JSONObject;
    new-instance v6, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v6, v2}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 43
    .local v6, "up":Lcom/vkcoffee/android/UserProfile;
    iget v10, v6, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v7, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v1    # "i":I
    .end local v2    # "p":Lorg/json/JSONObject;
    .end local v6    # "up":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    if-eqz v0, :cond_2

    .line 47
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v1, v10, :cond_2

    .line 48
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 49
    .restart local v2    # "p":Lorg/json/JSONObject;
    new-instance v6, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v6}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 50
    .restart local v6    # "up":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v10, "id"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    neg-int v10, v10

    iput v10, v6, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 51
    const-string/jumbo v10, "name"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 52
    const-string/jumbo v10, ""

    iput-object v10, v6, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 53
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v6, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 54
    sget v10, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    const-string/jumbo v10, "photo_100"

    :goto_2
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 55
    iget v10, v6, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v7, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 54
    :cond_1
    const-string/jumbo v10, "photo_50"

    goto :goto_2

    .line 59
    .end local v1    # "i":I
    .end local v2    # "p":Lorg/json/JSONObject;
    .end local v6    # "up":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    new-instance v4, Lcom/vkcoffee/android/data/VKList;

    const-string/jumbo v10, "response"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    new-instance v11, Lcom/vkcoffee/android/api/board/BoardGetTopics$1;

    invoke-direct {v11, p0, v7}, Lcom/vkcoffee/android/api/board/BoardGetTopics$1;-><init>(Lcom/vkcoffee/android/api/board/BoardGetTopics;Landroid/util/SparseArray;)V

    invoke-direct {v4, v10, v11}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Lcom/vkcoffee/android/data/Parser;)V

    .line 69
    .local v4, "topics":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/api/BoardTopic;>;"
    new-instance v3, Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;

    invoke-direct {v3}, Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;-><init>()V

    .line 70
    .local v3, "result":Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;
    iput-object v4, v3, Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;->topics:Lcom/vkcoffee/android/data/VKList;

    .line 71
    const-string/jumbo v10, "response"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "can_add_topics"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v9, :cond_3

    :goto_3
    iput-boolean v9, v3, Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;->canCreate:Z

    .line 72
    const-string/jumbo v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "default_order"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;->order:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0    # "g":Lorg/json/JSONArray;
    .end local v3    # "result":Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;
    .end local v4    # "topics":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/api/BoardTopic;>;"
    .end local v5    # "u":Lorg/json/JSONArray;
    .end local v7    # "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    :goto_4
    return-object v3

    .line 71
    .restart local v0    # "g":Lorg/json/JSONArray;
    .restart local v3    # "result":Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;
    .restart local v4    # "topics":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/api/BoardTopic;>;"
    .restart local v5    # "u":Lorg/json/JSONArray;
    .restart local v7    # "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 74
    .end local v0    # "g":Lorg/json/JSONArray;
    .end local v3    # "result":Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;
    .end local v4    # "topics":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/api/BoardTopic;>;"
    .end local v5    # "u":Lorg/json/JSONArray;
    .end local v7    # "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    :catch_0
    move-exception v8

    .line 75
    .local v8, "x":Ljava/lang/Exception;
    const-string/jumbo v9, "vk"

    invoke-static {v9, v8}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    const/4 v3, 0x0

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
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/board/BoardGetTopics;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;

    move-result-object v0

    return-object v0
.end method

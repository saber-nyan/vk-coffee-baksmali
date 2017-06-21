.class public Lcom/vkcoffee/android/api/board/BoardGetComments;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "BoardGetComments.java"

# interfaces
.implements Lcom/vkcoffee/android/data/ServerKeys;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/board/BoardGetComments$Result;,
        Lcom/vkcoffee/android/api/board/BoardGetComments$PagingKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/board/BoardGetComments$Result;",
        ">;",
        "Lcom/vkcoffee/android/data/ServerKeys;"
    }
.end annotation


# instance fields
.field private final gid:I

.field private offset:I


# direct methods
.method public constructor <init>(IIILcom/vkcoffee/android/api/board/BoardGetComments$PagingKey;I)V
    .locals 3
    .param p1, "gid"    # I
    .param p2, "tid"    # I
    .param p3, "count"    # I
    .param p4, "pagingKey"    # Lcom/vkcoffee/android/api/board/BoardGetComments$PagingKey;
    .param p5, "key"    # I

    .prologue
    const/4 v2, 0x1

    .line 24
    const-string/jumbo v0, "board.getComments"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/api/board/BoardGetComments;->offset:I

    .line 25
    iput p1, p0, Lcom/vkcoffee/android/api/board/BoardGetComments;->gid:I

    .line 26
    const-string/jumbo v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/board/BoardGetComments;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "topic_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 27
    sget-object v0, Lcom/vkcoffee/android/api/board/BoardGetComments$1;->$SwitchMap$com$vkontakte$android$api$board$BoardGetComments$PagingKey:[I

    invoke-virtual {p4}, Lcom/vkcoffee/android/api/board/BoardGetComments$PagingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 36
    :goto_0
    const-string/jumbo v0, "count"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/board/BoardGetComments;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "extended"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "photo_sizes"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "need_likes"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 37
    return-void

    .line 29
    :pswitch_0
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p5}, Lcom/vkcoffee/android/api/board/BoardGetComments;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 30
    iput p5, p0, Lcom/vkcoffee/android/api/board/BoardGetComments;->offset:I

    goto :goto_0

    .line 33
    :pswitch_1
    const-string/jumbo v0, "start_comment_id"

    invoke-virtual {p0, v0, p5}, Lcom/vkcoffee/android/api/board/BoardGetComments;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/board/BoardGetComments$Result;
    .locals 23
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 41
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v10, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/board/BoardComment;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 43
    .local v4, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 45
    .local v5, "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v2, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 47
    .local v19, "response":Lorg/json/JSONObject;
    const-string/jumbo v2, "profiles"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 48
    .local v18, "profiles":Lorg/json/JSONArray;
    const-string/jumbo v2, "groups"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 49
    .local v12, "groups":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v13, v2, :cond_1

    .line 50
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 51
    .local v21, "u":Lorg/json/JSONObject;
    const-string/jumbo v2, "id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "first_name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "last_name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    const-string/jumbo v2, "id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sget v2, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v6

    if-lez v2, :cond_0

    const-string/jumbo v2, "photo_100"

    :goto_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 52
    :cond_0
    const-string/jumbo v2, "photo_50"

    goto :goto_1

    .line 54
    .end local v21    # "u":Lorg/json/JSONObject;
    :cond_1
    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v13, v2, :cond_3

    .line 55
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 56
    .restart local v21    # "u":Lorg/json/JSONObject;
    const-string/jumbo v2, "id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    neg-int v2, v2

    const-string/jumbo v3, "name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    const-string/jumbo v2, "id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    neg-int v3, v2

    sget v2, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2

    const-string/jumbo v2, "photo_100"

    :goto_3
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 57
    :cond_2
    const-string/jumbo v2, "photo_50"

    goto :goto_3

    .line 60
    .end local v21    # "u":Lorg/json/JSONObject;
    :cond_3
    const-string/jumbo v2, "real_offset"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/api/board/BoardGetComments;->offset:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    .line 62
    .local v15, "offset":I
    const-string/jumbo v2, "items"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 63
    .local v11, "comms":Lorg/json/JSONArray;
    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v13, v2, :cond_4

    .line 64
    new-instance v2, Lcom/vkcoffee/android/api/board/BoardComment;

    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    add-int v6, v15, v13

    move-object/from16 v0, p0

    iget v7, v0, Lcom/vkcoffee/android/api/board/BoardGetComments;->gid:I

    neg-int v7, v7

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/vkcoffee/android/api/board/BoardComment;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;IILandroid/util/SparseArray;)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 67
    :cond_4
    new-instance v20, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;

    invoke-direct/range {v20 .. v20}, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;-><init>()V

    .line 68
    .local v20, "result":Lcom/vkcoffee/android/api/board/BoardGetComments$Result;
    move-object/from16 v0, v20

    iput-object v10, v0, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;->comments:Ljava/util/ArrayList;

    .line 69
    const-string/jumbo v2, "count"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;->total:I

    .line 70
    move-object/from16 v0, v20

    iput v15, v0, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;->offset:I

    .line 72
    const-string/jumbo v2, "poll"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 73
    const-string/jumbo v2, "poll"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 74
    .local v17, "poll":Lorg/json/JSONObject;
    const-string/jumbo v2, "id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;->pId:I

    .line 75
    const-string/jumbo v2, "question"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;->pQuestion:Ljava/lang/String;

    .line 76
    const-string/jumbo v2, "answer_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;->pAnsId:I

    .line 77
    const-string/jumbo v2, "owner_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;->pOwnerId:I

    .line 78
    const-string/jumbo v2, "created"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;->pCreated:I

    .line 79
    const-string/jumbo v2, "anonymous"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;->pAnonymous:I

    .line 80
    const-string/jumbo v2, "is_closed"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 81
    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput v2, v0, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;->pAnsId:I

    .line 83
    :cond_5
    const-string/jumbo v2, "answers"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 84
    .local v16, "options":Lorg/json/JSONArray;
    const/4 v13, 0x0

    :goto_5
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v13, v2, :cond_6

    .line 85
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 86
    .local v14, "jopt":Lorg/json/JSONObject;
    new-instance v9, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;

    invoke-direct {v9}, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;-><init>()V

    .line 87
    .local v9, "answer":Lcom/vkcoffee/android/attachments/PollAttachment$Answer;
    const-string/jumbo v2, "id"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v9, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->id:I

    .line 88
    const-string/jumbo v2, "text"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->text:Ljava/lang/String;

    .line 89
    const-string/jumbo v2, "votes"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v9, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->votes:I

    .line 90
    const-string/jumbo v2, "rate"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v9, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->rate:F

    .line 91
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;->pOptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 95
    .end local v4    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v5    # "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v9    # "answer":Lcom/vkcoffee/android/attachments/PollAttachment$Answer;
    .end local v10    # "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/board/BoardComment;>;"
    .end local v11    # "comms":Lorg/json/JSONArray;
    .end local v12    # "groups":Lorg/json/JSONArray;
    .end local v13    # "i":I
    .end local v14    # "jopt":Lorg/json/JSONObject;
    .end local v15    # "offset":I
    .end local v16    # "options":Lorg/json/JSONArray;
    .end local v17    # "poll":Lorg/json/JSONObject;
    .end local v18    # "profiles":Lorg/json/JSONArray;
    .end local v19    # "response":Lorg/json/JSONObject;
    .end local v20    # "result":Lcom/vkcoffee/android/api/board/BoardGetComments$Result;
    :catch_0
    move-exception v22

    .line 96
    .local v22, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    const/16 v20, 0x0

    .end local v22    # "x":Ljava/lang/Exception;
    :cond_6
    return-object v20
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
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/board/BoardGetComments;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/board/BoardGetComments$Result;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/vkcoffee/android/api/wall/WallGetComments;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "WallGetComments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/wall/WallGetComments$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/wall/WallGetComments$Result;",
        ">;"
    }
.end annotation


# instance fields
.field type:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 8
    .param p1, "ownerID"    # I
    .param p2, "postID"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "type"    # I

    .prologue
    .line 26
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/vkcoffee/android/api/wall/WallGetComments;-><init>(IIIIIZLjava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(IIIIIZLjava/lang/String;)V
    .locals 2
    .param p1, "ownerID"    # I
    .param p2, "postID"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "type"    # I
    .param p6, "needLikes"    # Z
    .param p7, "accessKey"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string/jumbo v0, "execute.getCommentsNew"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 33
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/wall/WallGetComments;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 34
    const-string/jumbo v0, "item_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/wall/WallGetComments;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 35
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/wall/WallGetComments;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 36
    const-string/jumbo v0, "count"

    invoke-virtual {p0, v0, p4}, Lcom/vkcoffee/android/api/wall/WallGetComments;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 38
    sparse-switch p5, :sswitch_data_0

    .line 50
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "post"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/wall/WallGetComments;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 53
    :goto_0
    if-eqz p6, :cond_0

    .line 54
    const-string/jumbo v0, "need_likes"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/wall/WallGetComments;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 56
    :cond_0
    if-eqz p7, :cond_1

    .line 57
    const-string/jumbo v0, "access_key"

    invoke-virtual {p0, v0, p7}, Lcom/vkcoffee/android/api/wall/WallGetComments;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 59
    :cond_1
    iput p5, p0, Lcom/vkcoffee/android/api/wall/WallGetComments;->type:I

    .line 60
    return-void

    .line 40
    :sswitch_0
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "post_ads"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/wall/WallGetComments;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 43
    :sswitch_1
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "photo"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/wall/WallGetComments;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 46
    :sswitch_2
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "video"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/wall/WallGetComments;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xc -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/wall/WallGetComments$Result;
    .locals 20
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 64
    :try_start_0
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 65
    .local v8, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 66
    .local v9, "names_dat":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 67
    .local v12, "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v16, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string/jumbo v17, "c"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 68
    .local v3, "jcc":Lorg/json/JSONObject;
    const-string/jumbo v16, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string/jumbo v17, "p1"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 69
    .local v4, "jprofiles":Lorg/json/JSONArray;
    const-string/jumbo v16, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string/jumbo v17, "p2u"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 70
    .local v14, "uids_dat":Lorg/json/JSONArray;
    const-string/jumbo v16, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string/jumbo v17, "p2n"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 72
    .local v10, "ndat":Lorg/json/JSONArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v5, "likes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v16, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string/jumbo v17, "likes"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 75
    const-string/jumbo v16, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string/jumbo v17, "likes"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 76
    .local v6, "lp":Lorg/json/JSONArray;
    const-string/jumbo v16, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string/jumbo v17, "my_photo"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "myPhoto":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v2, v0, :cond_1

    .line 78
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 79
    .local v11, "p":Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 77
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 124
    .end local v2    # "i":I
    .end local v3    # "jcc":Lorg/json/JSONObject;
    .end local v4    # "jprofiles":Lorg/json/JSONArray;
    .end local v5    # "likes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "lp":Lorg/json/JSONArray;
    .end local v7    # "myPhoto":Ljava/lang/String;
    .end local v8    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v9    # "names_dat":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v10    # "ndat":Lorg/json/JSONArray;
    .end local v11    # "p":Ljava/lang/String;
    .end local v12    # "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v14    # "uids_dat":Lorg/json/JSONArray;
    :catch_0
    move-exception v15

    .line 125
    .local v15, "x":Ljava/lang/Exception;
    const-string/jumbo v16, "vk"

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    const/4 v13, 0x0

    .end local v15    # "x":Ljava/lang/Exception;
    :goto_2
    return-object v13

    .line 84
    .restart local v2    # "i":I
    .restart local v3    # "jcc":Lorg/json/JSONObject;
    .restart local v4    # "jprofiles":Lorg/json/JSONArray;
    .restart local v5    # "likes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "lp":Lorg/json/JSONArray;
    .restart local v7    # "myPhoto":Ljava/lang/String;
    .restart local v8    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v9    # "names_dat":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v10    # "ndat":Lorg/json/JSONArray;
    .restart local v12    # "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v14    # "uids_dat":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0xb

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 85
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 89
    .end local v2    # "i":I
    .end local v6    # "lp":Lorg/json/JSONArray;
    .end local v7    # "myPhoto":Ljava/lang/String;
    :cond_2
    if-nez v3, :cond_3

    .line 90
    new-instance v13, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;

    invoke-direct {v13}, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;-><init>()V

    .line 91
    .local v13, "r":Lcom/vkcoffee/android/api/wall/WallGetComments$Result;
    new-instance v16, Lcom/vkcoffee/android/data/VKList;

    invoke-direct/range {v16 .. v16}, Lcom/vkcoffee/android/data/VKList;-><init>()V

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->comments:Lcom/vkcoffee/android/data/VKList;

    .line 92
    iput-object v5, v13, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->likes:Ljava/util/ArrayList;

    .line 93
    const-string/jumbo v16, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string/jumbo v17, "likes_count"

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v13, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->totalLikes:I

    .line 94
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v13, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->canComment:Z

    goto :goto_2

    .line 98
    .end local v13    # "r":Lcom/vkcoffee/android/api/wall/WallGetComments$Result;
    :cond_3
    if-eqz v4, :cond_5

    .line 99
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v2, v0, :cond_5

    .line 100
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    const-string/jumbo v17, "id"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string/jumbo v19, "first_name"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 101
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string/jumbo v19, "last_name"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 100
    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    const-string/jumbo v17, "id"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    sget v16, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v16, v16, v19

    if-lez v16, :cond_4

    const-string/jumbo v16, "photo_medium_rec"

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 102
    :cond_4
    const-string/jumbo v16, "photo_rec"

    goto :goto_4

    .line 105
    .end local v2    # "i":I
    :cond_5
    if-eqz v10, :cond_6

    .line 106
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v2, v0, :cond_6

    .line 107
    invoke-virtual {v14, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v16

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 111
    .end local v2    # "i":I
    :cond_6
    new-instance v13, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;

    invoke-direct {v13}, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;-><init>()V

    .line 112
    .restart local v13    # "r":Lcom/vkcoffee/android/api/wall/WallGetComments$Result;
    new-instance v16, Lcom/vkcoffee/android/data/VKList;

    new-instance v17, Lcom/vkcoffee/android/api/wall/WallGetComments$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v12, v9}, Lcom/vkcoffee/android/api/wall/WallGetComments$1;-><init>(Lcom/vkcoffee/android/api/wall/WallGetComments;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Lcom/vkcoffee/android/data/Parser;)V

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->comments:Lcom/vkcoffee/android/data/VKList;

    .line 118
    iget-object v0, v13, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->comments:Lcom/vkcoffee/android/data/VKList;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 119
    iput-object v5, v13, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->likes:Ljava/util/ArrayList;

    .line 120
    const-string/jumbo v16, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string/jumbo v17, "likes_count"

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v13, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->totalLikes:I

    .line 121
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v13, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->canComment:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/wall/WallGetComments;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/wall/WallGetComments$Result;

    move-result-object v0

    return-object v0
.end method

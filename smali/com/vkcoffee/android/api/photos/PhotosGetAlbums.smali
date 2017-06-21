.class public Lcom/vkcoffee/android/api/photos/PhotosGetAlbums;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "PhotosGetAlbums.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "needSystem"    # Z

    .prologue
    const/4 v1, 0x1

    .line 23
    const-string/jumbo v0, "photos.getAlbums"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 24
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 25
    const-string/jumbo v0, "need_covers"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 26
    if-eqz p2, :cond_0

    .line 27
    const-string/jumbo v0, "need_system"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 29
    :cond_0
    const-string/jumbo v0, "photo_sizes"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 30
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;
    .locals 22
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 34
    :try_start_0
    const-string/jumbo v7, "p"

    .line 35
    .local v7, "needSize":Ljava/lang/String;
    sget v17, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v18, 0x3fc00000    # 1.5f

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_0

    .line 36
    const-string/jumbo v7, "q"

    .line 38
    :cond_0
    sget v17, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v18, 0x40000000    # 2.0f

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_1

    .line 39
    const-string/jumbo v7, "r"

    .line 41
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/PhotoAlbum;>;"
    const/4 v8, 0x0

    .line 43
    .local v8, "numSystem":I
    const-string/jumbo v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 44
    .local v3, "al":Lorg/json/JSONArray;
    if-eqz v3, :cond_c

    .line 45
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_c

    .line 46
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 47
    .local v6, "ja":Lorg/json/JSONObject;
    const-string/jumbo v17, "size"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string/jumbo v17, "size"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 48
    :cond_2
    const-string/jumbo v17, "vk"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "No size for album "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    :cond_3
    new-instance v2, Lcom/vkcoffee/android/api/PhotoAlbum;

    invoke-direct {v2, v6}, Lcom/vkcoffee/android/api/PhotoAlbum;-><init>(Lorg/json/JSONObject;)V

    .line 52
    .local v2, "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    iget-object v0, v2, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_4

    .line 53
    sget-object v17, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f08006c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 55
    :cond_4
    const-string/jumbo v17, "sizes"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 56
    .local v12, "sizes":Lorg/json/JSONArray;
    if-eqz v12, :cond_6

    .line 57
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v14, "thumbs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_5

    .line 59
    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 60
    .local v11, "size":Lorg/json/JSONObject;
    const-string/jumbo v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "src"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 62
    .end local v11    # "size":Lorg/json/JSONObject;
    :cond_5
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 63
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/vkcoffee/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 68
    .end local v5    # "j":I
    .end local v14    # "thumbs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    :goto_3
    const-string/jumbo v17, "can_upload"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 69
    const-string/jumbo v17, "can_upload"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    const/16 v17, 0x1

    :goto_4
    move/from16 v0, v17

    iput-boolean v0, v2, Lcom/vkcoffee/android/api/PhotoAlbum;->canUpload:Z

    .line 72
    :cond_7
    iget v0, v2, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    move/from16 v17, v0

    if-gez v17, :cond_b

    .line 73
    invoke-virtual {v10, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 74
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 65
    .restart local v5    # "j":I
    .restart local v14    # "thumbs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    sget v17, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v18, 0x40000000    # 2.0f

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_9

    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->isHighSpeed()Z

    move-result v17

    if-eqz v17, :cond_9

    const-string/jumbo v17, "x"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    const-string/jumbo v17, "x"

    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/vkcoffee/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 132
    .end local v2    # "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    .end local v3    # "al":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "ja":Lorg/json/JSONObject;
    .end local v7    # "needSize":Ljava/lang/String;
    .end local v8    # "numSystem":I
    .end local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/PhotoAlbum;>;"
    .end local v12    # "sizes":Lorg/json/JSONArray;
    .end local v14    # "thumbs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v16

    .line 133
    .local v16, "x":Ljava/lang/Exception;
    const-string/jumbo v17, "vk"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    const/4 v9, 0x0

    .end local v16    # "x":Ljava/lang/Exception;
    :goto_6
    return-object v9

    .line 65
    .restart local v2    # "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    .restart local v3    # "al":Lorg/json/JSONArray;
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v6    # "ja":Lorg/json/JSONObject;
    .restart local v7    # "needSize":Ljava/lang/String;
    .restart local v8    # "numSystem":I
    .restart local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/PhotoAlbum;>;"
    .restart local v12    # "sizes":Lorg/json/JSONArray;
    .restart local v14    # "thumbs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    :try_start_1
    const-string/jumbo v17, "m"

    goto :goto_5

    .line 69
    .end local v5    # "j":I
    .end local v14    # "thumbs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    const/16 v17, 0x0

    goto :goto_4

    .line 76
    :cond_b
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 81
    .end local v2    # "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    .end local v4    # "i":I
    .end local v6    # "ja":Lorg/json/JSONObject;
    .end local v12    # "sizes":Lorg/json/JSONArray;
    :cond_c
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v13, "system":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/PhotoAlbum;>;"
    const-string/jumbo v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string/jumbo v18, "all_photos"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 83
    const-string/jumbo v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string/jumbo v18, "all_photos"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 84
    .restart local v6    # "ja":Lorg/json/JSONObject;
    new-instance v15, Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;

    invoke-direct {v15, v6}, Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;-><init>(Lorg/json/JSONObject;)V

    .line 85
    .local v15, "userPhotos":Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;
    sget-object v17, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f08006f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;->title:Ljava/lang/String;

    .line 86
    const-string/jumbo v17, "sizes"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 87
    .restart local v12    # "sizes":Lorg/json/JSONArray;
    const-string/jumbo v9, ""

    .line 88
    .local v9, "r":Ljava/lang/String;
    if-eqz v12, :cond_d

    .line 89
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_7
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_d

    .line 90
    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 91
    .restart local v11    # "size":Lorg/json/JSONObject;
    const-string/jumbo v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 92
    const-string/jumbo v17, "src"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 99
    .end local v5    # "j":I
    .end local v11    # "size":Lorg/json/JSONObject;
    :cond_d
    iget-object v0, v15, Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    iget-object v0, v15, Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_f

    .line 100
    :cond_e
    iput-object v9, v15, Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 102
    :cond_f
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v6    # "ja":Lorg/json/JSONObject;
    .end local v9    # "r":Ljava/lang/String;
    .end local v12    # "sizes":Lorg/json/JSONArray;
    .end local v15    # "userPhotos":Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;
    :cond_10
    const-string/jumbo v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string/jumbo v18, "user_photos"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 106
    const-string/jumbo v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string/jumbo v18, "user_photos"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 107
    .restart local v6    # "ja":Lorg/json/JSONObject;
    new-instance v15, Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;

    invoke-direct {v15, v6}, Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;-><init>(Lorg/json/JSONObject;)V

    .line 108
    .restart local v15    # "userPhotos":Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;
    sget-object v17, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080579

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-object v0, v15, Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;->title:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;->title:Ljava/lang/String;

    .line 109
    const-string/jumbo v17, "sizes"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 110
    .restart local v12    # "sizes":Lorg/json/JSONArray;
    const-string/jumbo v9, ""

    .line 111
    .restart local v9    # "r":Ljava/lang/String;
    if-eqz v12, :cond_11

    .line 112
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_8
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_11

    .line 113
    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 114
    .restart local v11    # "size":Lorg/json/JSONObject;
    const-string/jumbo v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 115
    const-string/jumbo v17, "src"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 122
    .end local v5    # "j":I
    .end local v11    # "size":Lorg/json/JSONObject;
    :cond_11
    iget-object v0, v15, Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    iget-object v0, v15, Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_13

    .line 123
    :cond_12
    iput-object v9, v15, Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 125
    :cond_13
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v6    # "ja":Lorg/json/JSONObject;
    .end local v9    # "r":Ljava/lang/String;
    .end local v12    # "sizes":Lorg/json/JSONArray;
    .end local v15    # "userPhotos":Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;
    :cond_14
    new-instance v9, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;

    invoke-direct {v9}, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;-><init>()V

    .line 129
    .local v9, "r":Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;
    iput-object v10, v9, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;->albums:Ljava/util/ArrayList;

    .line 130
    iput-object v13, v9, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;->system:Ljava/util/ArrayList;

    goto/16 :goto_6

    .line 94
    .restart local v5    # "j":I
    .restart local v6    # "ja":Lorg/json/JSONObject;
    .local v9, "r":Ljava/lang/String;
    .restart local v11    # "size":Lorg/json/JSONObject;
    .restart local v12    # "sizes":Lorg/json/JSONArray;
    .restart local v15    # "userPhotos":Lcom/vkcoffee/android/api/MultiThumbPhotoAlbum;
    :cond_15
    const-string/jumbo v17, "m"

    const-string/jumbo v18, "type"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    sget v17, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v18, 0x40000000    # 2.0f

    cmpg-float v17, v17, v18

    if-ltz v17, :cond_17

    :cond_16
    const-string/jumbo v17, "x"

    const-string/jumbo v18, "type"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    sget v17, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v18, 0x40000000    # 2.0f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_18

    .line 95
    :cond_17
    const-string/jumbo v17, "src"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 89
    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7

    .line 117
    :cond_19
    const-string/jumbo v17, "m"

    const-string/jumbo v18, "type"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    sget v17, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v18, 0x40000000    # 2.0f

    cmpg-float v17, v17, v18

    if-ltz v17, :cond_1b

    :cond_1a
    const-string/jumbo v17, "x"

    const-string/jumbo v18, "type"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    sget v17, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v18, 0x40000000    # 2.0f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_1c

    .line 118
    :cond_1b
    const-string/jumbo v17, "src"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 112
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;

    move-result-object v0

    return-object v0
.end method

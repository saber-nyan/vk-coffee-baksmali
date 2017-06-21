.class final Lcom/vkcoffee/android/LongPollService$3;
.super Ljava/lang/Object;
.source "LongPollService.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LongPollService;->syncStateWithServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$sendNextRequest:[Z


# direct methods
.method constructor <init>([Z)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/vkcoffee/android/LongPollService$3;->val$sendNextRequest:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 4
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 618
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 620
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/LongPollService$3;->val$sendNextRequest:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 626
    :cond_0
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 627
    return-void

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0

    .line 629
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v1, "vk_longpoll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GET LONG POLL HISTORY FAILED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error getting longpoll history "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 429
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/LongPollService$3;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 49
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 432
    :try_start_0
    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v45, "updatedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v29, "markedAsRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v30, "markedAsUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v14, "deleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string/jumbo v4, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 437
    new-instance v35, Landroid/util/SparseArray;

    invoke-direct/range {v35 .. v35}, Landroid/util/SparseArray;-><init>()V

    .local v35, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v40, Landroid/util/SparseArray;

    invoke-direct/range {v40 .. v40}, Landroid/util/SparseArray;-><init>()V

    .line 438
    .local v40, "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v4, "profiles"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v41

    .line 439
    .local v41, "profiles":Lorg/json/JSONArray;
    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v47, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    invoke-virtual/range {v41 .. v41}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_2

    .line 441
    move-object/from16 v0, v41

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v27

    .line 442
    .local v27, "jp":Lorg/json/JSONObject;
    const-string/jumbo v4, "id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "first_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "last_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    const-string/jumbo v4, "id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    sget v4, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    const-string/jumbo v4, "photo_100"

    :goto_1
    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 444
    new-instance v37, Lcom/vkcoffee/android/UserProfile;

    invoke-direct/range {v37 .. v37}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 445
    .local v37, "p":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v4, "id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v37

    iput v4, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 446
    const-string/jumbo v4, "first_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    iput-object v4, v0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 447
    const-string/jumbo v4, "last_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    iput-object v4, v0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 448
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    iput-object v4, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 449
    sget v4, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    const-string/jumbo v4, "photo_100"

    :goto_2
    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    iput-object v4, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 450
    move-object/from16 v0, v47

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 443
    .end local v37    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    const-string/jumbo v4, "photo_50"

    goto :goto_1

    .line 449
    .restart local v37    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    const-string/jumbo v4, "photo_50"

    goto :goto_2

    .line 453
    .end local v27    # "jp":Lorg/json/JSONObject;
    .end local v37    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    const-string/jumbo v4, "chats"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 454
    .local v24, "jchats":Lorg/json/JSONArray;
    if-eqz v24, :cond_a

    .line 455
    const/16 v20, 0x0

    :goto_3
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_a

    .line 456
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 457
    .local v23, "jc":Lorg/json/JSONObject;
    new-instance v13, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v13}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 458
    .local v13, "c":Lcom/vkcoffee/android/UserProfile;
    const v4, 0x77359400

    const-string/jumbo v5, "id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v13, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 459
    const-string/jumbo v4, "title"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 460
    const-string/jumbo v4, "admin_id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v13, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 461
    const-string/jumbo v4, "photo_50"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 462
    sget v4, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    const-string/jumbo v4, "photo_100"

    :goto_4
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 492
    :goto_5
    iget v4, v13, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v5, v13, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 493
    iget v4, v13, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v5, v13, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 498
    sget-boolean v4, Lcom/vkcoffee/android/LongPollService;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 499
    const-string/jumbo v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Will update chat "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_3
    move-object/from16 v0, v47

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 462
    :cond_4
    const-string/jumbo v4, "photo_50"

    goto :goto_4

    .line 464
    :cond_5
    new-instance v12, Landroid/net/Uri$Builder;

    invoke-direct {v12}, Landroid/net/Uri$Builder;-><init>()V

    .line 465
    .local v12, "bldr":Landroid/net/Uri$Builder;
    const-string/jumbo v4, "vkchatphoto"

    invoke-virtual {v12, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "c"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 466
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v38, "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "users"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 468
    .local v10, "act":Lorg/json/JSONArray;
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v36, "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_6
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_6

    .line 470
    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 472
    :cond_6
    invoke-static/range {v36 .. v36}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v43

    .line 473
    .local v43, "u":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/vkcoffee/android/UserProfile;

    .line 474
    .restart local v37    # "p":Lcom/vkcoffee/android/UserProfile;
    move-object/from16 v0, v37

    iget v5, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    sget v6, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v5, v6, :cond_7

    .line 477
    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 480
    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    .line 485
    .end local v37    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_8
    const/16 v22, 0x0

    .line 486
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    .line 487
    .local v39, "photo":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "photo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v12, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 488
    add-int/lit8 v22, v22, 0x1

    .line 489
    goto :goto_7

    .line 490
    .end local v39    # "photo":Ljava/lang/String;
    :cond_9
    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 611
    .end local v10    # "act":Lorg/json/JSONArray;
    .end local v12    # "bldr":Landroid/net/Uri$Builder;
    .end local v13    # "c":Lcom/vkcoffee/android/UserProfile;
    .end local v14    # "deleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "i":I
    .end local v22    # "j":I
    .end local v23    # "jc":Lorg/json/JSONObject;
    .end local v24    # "jchats":Lorg/json/JSONArray;
    .end local v29    # "markedAsRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v30    # "markedAsUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v35    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v36    # "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v38    # "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v40    # "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v41    # "profiles":Lorg/json/JSONArray;
    .end local v43    # "u":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v45    # "updatedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v47    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :catch_0
    move-exception v48

    .line 612
    .local v48, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk_longpoll"

    const-string/jumbo v5, "get long poll history failed!"

    move-object/from16 v0, v48

    invoke-static {v4, v5, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 613
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Error getting longpoll history"

    move-object/from16 v0, v48

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 504
    .end local v48    # "x":Ljava/lang/Exception;
    .restart local v14    # "deleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v20    # "i":I
    .restart local v24    # "jchats":Lorg/json/JSONArray;
    .restart local v29    # "markedAsRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v30    # "markedAsUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v35    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v40    # "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v41    # "profiles":Lorg/json/JSONArray;
    .restart local v45    # "updatedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v47    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_a
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v47

    invoke-static {v0, v4}, Lcom/vkcoffee/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 505
    const-string/jumbo v4, "messages"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v4

    iget-object v0, v4, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    move-object/from16 v26, v0

    .line 507
    .local v26, "jmsgs":Lorg/json/JSONArray;
    new-instance v33, Landroid/util/SparseArray;

    invoke-direct/range {v33 .. v33}, Landroid/util/SparseArray;-><init>()V

    .line 508
    .local v33, "msgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/Message;>;"
    const/16 v20, 0x0

    :goto_8
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_10

    .line 509
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    .line 510
    .local v25, "jm":Lorg/json/JSONObject;
    new-instance v32, Lcom/vkcoffee/android/Message;

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, v35

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/Message;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 511
    .local v32, "msg":Lcom/vkcoffee/android/Message;
    move-object/from16 v0, v32

    iget v4, v0, Lcom/vkcoffee/android/Message;->peer:I

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 512
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Inconsistent response: peer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    iget v6, v0, Lcom/vkcoffee/android/Message;->peer:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 514
    :cond_b
    const/4 v15, 0x0

    .line 515
    .local v15, "dnd":I
    const/16 v34, 0x0

    .line 516
    .local v34, "mute":Z
    const-string/jumbo v4, "push_settings"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 517
    const-string/jumbo v4, "push_settings"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    .line 518
    .local v28, "jps":Lorg/json/JSONObject;
    const-string/jumbo v4, "disabled_until"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 519
    const/4 v4, -0x1

    if-ne v15, v4, :cond_c

    .line 520
    const v15, 0x7fffffff

    .line 522
    :cond_c
    const-string/jumbo v4, "sound"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_f

    const/16 v34, 0x1

    .line 523
    :goto_9
    move-object/from16 v0, v32

    iget v4, v0, Lcom/vkcoffee/android/Message;->peer:I

    move/from16 v0, v34

    invoke-static {v4, v15, v0}, Lcom/vkcoffee/android/data/Messages;->setDnd(IIZ)V

    .line 525
    .end local v28    # "jps":Lorg/json/JSONObject;
    :cond_d
    move-object/from16 v0, v32

    iget v4, v0, Lcom/vkcoffee/android/Message;->id:I

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 526
    move-object/from16 v0, v32

    iget-boolean v4, v0, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "action"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 527
    move-object/from16 v0, v32

    iget v4, v0, Lcom/vkcoffee/android/Message;->peer:I

    const v5, 0x77359400

    sub-int/2addr v4, v5

    invoke-static {v4}, Lcom/vkcoffee/android/cache/Cache;->setNeedUpdateChat(I)V

    .line 528
    new-instance v21, Landroid/content/Intent;

    const-string/jumbo v4, "com.vkcoffee.android.CHAT_CHANGED"

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 529
    .local v21, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "id"

    move-object/from16 v0, v32

    iget v5, v0, Lcom/vkcoffee/android/Message;->peer:I

    const v6, 0x77359400

    sub-int/2addr v5, v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 530
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v5, "com.vkcoffee.android.permission.ACCESS_DATA"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 531
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "action_mid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 532
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "action_mid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    .line 533
    .local v44, "uid":I
    move-object/from16 v0, v32

    iget v4, v0, Lcom/vkcoffee/android/Message;->sender:I

    move/from16 v0, v44

    if-eq v0, v4, :cond_e

    .line 534
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v4, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v46, v0

    .line 535
    .local v46, "userNameAcc":Ljava/lang/String;
    const-string/jumbo v4, "action_user_name_acc"

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    invoke-virtual {v0, v4, v1}, Lcom/vkcoffee/android/Message;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .end local v21    # "intent":Landroid/content/Intent;
    .end local v44    # "uid":I
    .end local v46    # "userNameAcc":Ljava/lang/String;
    :cond_e
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_8

    .line 522
    .restart local v28    # "jps":Lorg/json/JSONObject;
    :cond_f
    const/16 v34, 0x0

    goto/16 :goto_9

    .line 540
    .end local v15    # "dnd":I
    .end local v25    # "jm":Lorg/json/JSONObject;
    .end local v28    # "jps":Lorg/json/JSONObject;
    .end local v32    # "msg":Lcom/vkcoffee/android/Message;
    .end local v34    # "mute":Z
    :cond_10
    const-string/jumbo v4, "history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 541
    .local v18, "events":Lorg/json/JSONArray;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v11, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/cache/MessagesAction;>;"
    const/16 v20, 0x0

    :goto_a
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_17

    .line 543
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v17

    .line 544
    .local v17, "event":Lorg/json/JSONArray;
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v16

    .line 545
    .local v16, "ev":I
    packed-switch v16, :pswitch_data_0

    .line 542
    :cond_11
    :goto_b
    :pswitch_0
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 547
    :pswitch_1
    const/4 v4, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v19

    .line 548
    .local v19, "flag":I
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v31

    .line 549
    .local v31, "mid":I
    and-int/lit8 v4, v19, 0x1

    if-lez v4, :cond_11

    .line 550
    new-instance v4, Lcom/vkcoffee/android/cache/ModifyMessageFlagsAction;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move/from16 v0, v31

    invoke-direct {v4, v0, v5, v6}, Lcom/vkcoffee/android/cache/ModifyMessageFlagsAction;-><init>(III)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 552
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 554
    :cond_12
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 559
    .end local v19    # "flag":I
    .end local v31    # "mid":I
    :pswitch_2
    const/4 v4, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v19

    .line 560
    .restart local v19    # "flag":I
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v31

    .line 561
    .restart local v31    # "mid":I
    and-int/lit8 v4, v19, 0x1

    if-lez v4, :cond_14

    .line 562
    new-instance v4, Lcom/vkcoffee/android/cache/ModifyMessageFlagsAction;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move/from16 v0, v31

    invoke-direct {v4, v0, v5, v6}, Lcom/vkcoffee/android/cache/ModifyMessageFlagsAction;-><init>(III)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 564
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 566
    :cond_13
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 567
    :cond_14
    move/from16 v0, v19

    and-int/lit16 v4, v0, 0x80

    if-gtz v4, :cond_15

    and-int/lit8 v4, v19, 0x40

    if-lez v4, :cond_11

    .line 568
    :cond_15
    new-instance v4, Lcom/vkcoffee/android/cache/DeleteMessageAction;

    move/from16 v0, v31

    invoke-direct {v4, v0}, Lcom/vkcoffee/android/cache/DeleteMessageAction;-><init>(I)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 575
    .end local v19    # "flag":I
    .end local v31    # "mid":I
    :pswitch_3
    new-instance v4, Lcom/vkcoffee/android/cache/ModifyMessageFlagsAction;

    const/4 v5, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x6

    move/from16 v0, v16

    if-ne v0, v8, :cond_16

    const/4 v8, 0x1

    :goto_c
    const/4 v9, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    invoke-direct/range {v4 .. v9}, Lcom/vkcoffee/android/cache/ModifyMessageFlagsAction;-><init>(IIIZI)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_16
    const/4 v8, 0x0

    goto :goto_c

    .line 578
    :pswitch_4
    const/4 v4, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_11

    const/4 v4, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_11

    .line 579
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/vkcoffee/android/Message;

    .line 580
    .restart local v32    # "msg":Lcom/vkcoffee/android/Message;
    new-instance v4, Lcom/vkcoffee/android/cache/AddMessageAction;

    move-object/from16 v0, v32

    invoke-direct {v4, v0}, Lcom/vkcoffee/android/cache/AddMessageAction;-><init>(Lcom/vkcoffee/android/Message;)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    move-object/from16 v0, v32

    iget v4, v0, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 582
    move-object/from16 v0, v32

    iget v4, v0, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 588
    .end local v16    # "ev":I
    .end local v17    # "event":Lorg/json/JSONArray;
    .end local v32    # "msg":Lcom/vkcoffee/android/Message;
    :cond_17
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_18

    .line 589
    invoke-static {v11}, Lcom/vkcoffee/android/data/Messages;->applyActions(Ljava/util/ArrayList;)V

    .line 594
    :cond_18
    const-string/jumbo v4, "new_pts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v42

    .line 595
    .local v42, "pts":I
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v5, "longpoll"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "pts"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_19

    .line 596
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/LongPollService$3;->val$sendNextRequest:[Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v4, v5

    .line 615
    :goto_d
    return-void

    .line 599
    :cond_19
    if-lez v42, :cond_1a

    .line 600
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v5, "longpoll"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "pts"

    move/from16 v0, v42

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 602
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/LongPollService$3;->val$sendNextRequest:[Z

    const/4 v6, 0x0

    const-string/jumbo v4, "more"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1b

    const/4 v4, 0x1

    :goto_e
    aput-boolean v4, v5, v6

    .line 603
    const-string/jumbo v4, "vk_longpoll"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "More="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/LongPollService$3;->val$sendNextRequest:[Z

    const/4 v7, 0x0

    aget-boolean v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    new-instance v21, Landroid/content/Intent;

    const-string/jumbo v4, "com.vkcoffee.android.REFRESH_DIALOGS"

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .restart local v21    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "reload_chats"

    move-object/from16 v0, v21

    move-object/from16 v1, v45

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 606
    const-string/jumbo v4, "marked_as_read"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 607
    const-string/jumbo v4, "marked_as_unread"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 608
    const-string/jumbo v4, "deleted"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 609
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v5, "com.vkcoffee.android.permission.ACCESS_DATA"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_d

    .line 602
    .end local v21    # "intent":Landroid/content/Intent;
    :cond_1b
    const/4 v4, 0x0

    goto :goto_e

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

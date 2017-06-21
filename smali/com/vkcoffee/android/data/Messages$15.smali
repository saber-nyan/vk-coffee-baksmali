.class final Lcom/vkcoffee/android/data/Messages$15;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Messages;->search(Ljava/lang/String;IILcom/vkcoffee/android/data/Messages$SearchCallback;)V
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
        "Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/vkcoffee/android/data/Messages$SearchCallback;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/data/Messages$SearchCallback;)V
    .locals 0

    .prologue
    .line 1369
    iput-object p1, p0, Lcom/vkcoffee/android/data/Messages$15;->val$callback:Lcom/vkcoffee/android/data/Messages$SearchCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$success$272(Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;Lcom/vkcoffee/android/data/Messages$SearchCallback;Ljava/util/ArrayList;)V
    .locals 14
    .param p2, "users"    # Ljava/util/ArrayList;

    .prologue
    .line 1398
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 1399
    .local v8, "u":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/UserProfile;

    .line 1400
    .local v5, "p":Lcom/vkcoffee/android/UserProfile;
    iget v12, v5, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v8, v12, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1403
    .end local v5    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    iget-object v11, p0, Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;->chats:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 1404
    .local v0, "c":Lcom/vkcoffee/android/UserProfile;
    iget-object v11, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    const-string/jumbo v13, "M"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1406
    iget-object v11, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    const-string/jumbo v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1407
    .local v3, "ids":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1408
    .local v6, "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v11, "M"

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1409
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_2
    array-length v11, v3

    if-ge v2, v11, :cond_1

    .line 1411
    :try_start_0
    aget-object v11, v3, v2

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1412
    .local v9, "uid":I
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkcoffee/android/UserProfile;

    iget-object v11, v11, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1409
    .end local v9    # "uid":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1413
    :catch_0
    move-exception v10

    .line 1414
    .local v10, "x":Ljava/lang/Exception;
    invoke-static {v10}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_3

    .line 1417
    .end local v10    # "x":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v11, "|"

    invoke-static {v11, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 1420
    .end local v2    # "i":I
    .end local v3    # "ids":[Ljava/lang/String;
    .end local v6    # "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget v11, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v8, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 1423
    .end local v0    # "c":Lcom/vkcoffee/android/UserProfile;
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1424
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    iget-object v11, p0, Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;->msgs:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v11}, Lcom/vkcoffee/android/data/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/Message;

    .line 1425
    .local v4, "m":Lcom/vkcoffee/android/Message;
    new-instance v1, Lcom/vkcoffee/android/DialogEntry;

    invoke-direct {v1}, Lcom/vkcoffee/android/DialogEntry;-><init>()V

    .line 1426
    .local v1, "e":Lcom/vkcoffee/android/DialogEntry;
    iput-object v4, v1, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    .line 1427
    iget v11, v4, Lcom/vkcoffee/android/Message;->sender:I

    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkcoffee/android/UserProfile;

    iget-object v11, v11, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v11, v1, Lcom/vkcoffee/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 1428
    iget v11, v4, Lcom/vkcoffee/android/Message;->peer:I

    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkcoffee/android/UserProfile;

    iput-object v11, v1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 1429
    iget-object v11, v1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    if-nez v11, :cond_4

    .line 1430
    new-instance v11, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v11}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    iput-object v11, v1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 1431
    iget-object v11, v1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v13, v4, Lcom/vkcoffee/android/Message;->peer:I

    iput v13, v11, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 1433
    :cond_4
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1435
    .end local v1    # "e":Lcom/vkcoffee/android/DialogEntry;
    .end local v4    # "m":Lcom/vkcoffee/android/Message;
    :cond_5
    if-eqz p1, :cond_6

    .line 1436
    iget-object v11, p0, Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;->msgs:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v11}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v11

    invoke-interface {p1, v7, v11}, Lcom/vkcoffee/android/data/Messages$SearchCallback;->onDialogsLoaded(Ljava/util/ArrayList;I)V

    .line 1438
    :cond_6
    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/vkcoffee/android/data/Messages$15;->val$callback:Lcom/vkcoffee/android/data/Messages$SearchCallback;

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/vkcoffee/android/data/Messages$15;->val$callback:Lcom/vkcoffee/android/data/Messages$SearchCallback;

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCode()I

    move-result v1

    iget-object v2, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/data/Messages$SearchCallback;->onError(ILjava/lang/String;)V

    .line 1446
    :cond_0
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;)V
    .locals 9
    .param p1, "r"    # Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;

    .prologue
    .line 1372
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1373
    .local v5, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p1, Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;->msgs:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v6}, Lcom/vkcoffee/android/data/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/Message;

    .line 1374
    .local v3, "m":Lcom/vkcoffee/android/Message;
    iget v7, v3, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget v7, v3, Lcom/vkcoffee/android/Message;->peer:I

    const v8, 0x77359400

    if-ge v7, v8, :cond_1

    .line 1375
    iget v7, v3, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1377
    :cond_1
    iget v7, v3, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1378
    iget v7, v3, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1381
    .end local v3    # "m":Lcom/vkcoffee/android/Message;
    :cond_2
    iget-object v6, p1, Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;->chats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 1382
    .local v0, "c":Lcom/vkcoffee/android/UserProfile;
    iget-object v7, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    const-string/jumbo v8, "M"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1383
    iget-object v7, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1384
    .local v2, "ids":[Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v7, v2

    if-ge v1, v7, :cond_3

    .line 1386
    :try_start_0
    aget-object v7, v2, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1387
    .local v4, "uid":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1388
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    .end local v4    # "uid":I
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1397
    .end local v0    # "c":Lcom/vkcoffee/android/UserProfile;
    .end local v1    # "i":I
    .end local v2    # "ids":[Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/vkcoffee/android/data/Messages$15;->val$callback:Lcom/vkcoffee/android/data/Messages$SearchCallback;

    invoke-static {p1, v6}, Lcom/vkcoffee/android/data/Messages$15$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;Lcom/vkcoffee/android/data/Messages$SearchCallback;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    .line 1439
    return-void

    .line 1390
    .restart local v0    # "c":Lcom/vkcoffee/android/UserProfile;
    .restart local v1    # "i":I
    .restart local v2    # "ids":[Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1369
    check-cast p1, Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/data/Messages$15;->success(Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;)V

    return-void
.end method

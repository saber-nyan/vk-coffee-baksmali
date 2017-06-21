.class final Lcom/vkcoffee/android/data/Messages$5;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Messages;->lambda$getDialogs$264(IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)V
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
        "Lcom/vkcoffee/android/data/VKList",
        "<",
        "Lcom/vkcoffee/android/DialogEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$cap$1:I

.field final synthetic val$cap$2:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;I)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/vkcoffee/android/data/Messages$5;->val$cap$2:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    iput p2, p0, Lcom/vkcoffee/android/data/Messages$5;->val$cap$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$success$263(Lcom/vkcoffee/android/data/VKList;Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;ILjava/util/ArrayList;)V
    .locals 8
    .param p3, "users"    # Ljava/util/ArrayList;

    .prologue
    .line 450
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 451
    .local v3, "u":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 452
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    iget v6, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v3, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 454
    .end local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/data/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 455
    .local v0, "e":Lcom/vkcoffee/android/DialogEntry;
    iget-object v5, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v5, v5, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v7, 0x77359400

    if-le v5, v7, :cond_1

    iget-object v5, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v5, v5, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v5, v5, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v3, v5}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 456
    iget-object v5, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v5, v5, Lcom/vkcoffee/android/Message;->sender:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/UserProfile;

    iget-object v5, v5, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v5, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    goto :goto_1

    .line 460
    .end local v0    # "e":Lcom/vkcoffee/android/DialogEntry;
    :cond_2
    :try_start_0
    sget-object v5, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_2
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->access$000()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 465
    sget-object v5, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 466
    if-eqz p1, :cond_4

    .line 467
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v6

    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/vkcoffee/android/data/VKList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 470
    .restart local v0    # "e":Lcom/vkcoffee/android/DialogEntry;
    new-instance v6, Lcom/vkcoffee/android/DialogEntry;

    invoke-direct {v6, v0}, Lcom/vkcoffee/android/DialogEntry;-><init>(Lcom/vkcoffee/android/DialogEntry;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 461
    .end local v0    # "e":Lcom/vkcoffee/android/DialogEntry;
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    :catch_0
    move-exception v4

    .line 462
    .local v4, "x":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_2

    .line 472
    .end local v4    # "x":Ljava/lang/Exception;
    .restart local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    :cond_3
    invoke-interface {p1, v2}, Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;->onDialogsLoaded(Ljava/util/ArrayList;)V

    .line 474
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    :cond_4
    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 479
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error loading dialogs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/vkcoffee/android/data/Messages$5;->val$cap$2:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/vkcoffee/android/data/Messages$5;->val$cap$2:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCode()I

    move-result v1

    iget-object v2, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;->onError(ILjava/lang/String;)V

    .line 483
    :cond_0
    return-void
.end method

.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 11
    .param p1, "results"    # Lcom/vkcoffee/android/data/VKList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/DialogEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/vkcoffee/android/data/Messages;->access$402(J)J

    .line 429
    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v7, "msg"

    invoke-virtual {v6, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v7, "updated"

    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->access$400()J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 430
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v3, "uids":Ljava/util/ArrayList;
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/DialogEntry;

    .line 432
    .local v1, "e":Lcom/vkcoffee/android/DialogEntry;
    iget-object v7, v1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v7, v7, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v8, 0x77359400

    if-le v7, v8, :cond_0

    iget-object v7, v1, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v7, v7, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v7, :cond_0

    .line 433
    iget-object v7, v1, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v7, v7, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 434
    iget-object v7, v1, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v7, v7, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 438
    .end local v1    # "e":Lcom/vkcoffee/android/DialogEntry;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v2, "msgs":Ljava/util/ArrayList;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v5, "usrs":Ljava/util/ArrayList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v4, "unreadCounts":Ljava/util/ArrayList;
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 442
    .local v0, "dlg":Lcom/vkcoffee/android/DialogEntry;
    iget-object v7, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v7, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v7, Landroid/util/Pair;

    iget-object v8, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v8, v8, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v0, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 446
    .end local v0    # "dlg":Lcom/vkcoffee/android/DialogEntry;
    :cond_2
    invoke-static {v2}, Lcom/vkcoffee/android/cache/Cache;->addMessages(Ljava/util/List;)V

    .line 447
    invoke-static {v5, v10}, Lcom/vkcoffee/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 448
    invoke-static {v4}, Lcom/vkcoffee/android/cache/Cache;->updateMessagesUnreadCount(Ljava/util/List;)V

    .line 449
    iget-object v6, p0, Lcom/vkcoffee/android/data/Messages$5;->val$cap$2:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    iget v7, p0, Lcom/vkcoffee/android/data/Messages$5;->val$cap$1:I

    invoke-static {p1, v6, v7}, Lcom/vkcoffee/android/data/Messages$5$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/data/VKList;Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;I)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    .line 475
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 425
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/data/Messages$5;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method

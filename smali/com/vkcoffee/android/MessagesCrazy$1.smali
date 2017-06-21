.class Lcom/vkcoffee/android/MessagesCrazy$1;
.super Ljava/lang/Object;
.source "MessagesCrazy.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MessagesCrazy;->lambda$getDialogs$264(IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field private final synthetic val$getDialogsCallback:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

.field private final synthetic val$i2:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MessagesCrazy$1;->val$getDialogsCallback:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    iput p2, p0, Lcom/vkcoffee/android/MessagesCrazy$1;->val$i2:I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3

    .prologue
    .line 92
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error loading dialogs "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/vkcoffee/android/MessagesCrazy$1;->val$getDialogsCallback:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/vkcoffee/android/MessagesCrazy$1;->val$getDialogsCallback:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCode()I

    move-result v1

    iget-object v2, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;->onError(ILjava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 10
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
    .line 59
    .local p1, "results":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/DialogEntry;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/vkcoffee/android/MessagesCrazy;->access$0(J)V

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v4, "uids":Ljava/util/ArrayList;
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 63
    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v3, "msgs":Ljava/util/ArrayList;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v6, "usrs":Ljava/util/ArrayList;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v5, "unreadCounts":Ljava/util/ArrayList;
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 75
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 83
    invoke-static {v3}, Lcom/vkcoffee/android/cache/Cache;->addMessages(Ljava/util/List;)V

    .line 84
    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkcoffee/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 85
    invoke-static {v5}, Lcom/vkcoffee/android/cache/Cache;->updateMessagesUnreadCount(Ljava/util/List;)V

    .line 86
    iget-object v7, p0, Lcom/vkcoffee/android/MessagesCrazy$1;->val$getDialogsCallback:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    iget v8, p0, Lcom/vkcoffee/android/MessagesCrazy$1;->val$i2:I

    invoke-static {p1, v7, v8}, Lcom/vkcoffee/android/MessagesCrazy$Messages$5$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/data/VKList;Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;I)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    .line 87
    return-void

    .line 64
    .end local v3    # "msgs":Ljava/util/ArrayList;
    .end local v5    # "unreadCounts":Ljava/util/ArrayList;
    .end local v6    # "usrs":Ljava/util/ArrayList;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/DialogEntry;

    .line 65
    .local v1, "e":Lcom/vkcoffee/android/DialogEntry;
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "crazyTyping"

    const-string v9, ","

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v8, v8, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 66
    iget-object v7, v1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v7, v7, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v8, 0x77359400

    if-le v7, v8, :cond_0

    iget-object v7, v1, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v7, v7, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v7, :cond_0

    iget-object v7, v1, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v7, v7, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 67
    iget-object v7, v1, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v7, v7, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    .end local v1    # "e":Lcom/vkcoffee/android/DialogEntry;
    .restart local v3    # "msgs":Ljava/util/ArrayList;
    .restart local v5    # "unreadCounts":Ljava/util/ArrayList;
    .restart local v6    # "usrs":Ljava/util/ArrayList;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 77
    .local v0, "dlg":Lcom/vkcoffee/android/DialogEntry;
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "crazyTyping"

    const-string v9, ","

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v8, v8, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 78
    iget-object v7, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v7, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v7, Landroid/util/Pair;

    iget-object v8, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v8, v8, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v0, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/MessagesCrazy$1;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method

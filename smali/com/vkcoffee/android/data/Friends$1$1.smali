.class Lcom/vkcoffee/android/data/Friends$1$1;
.super Ljava/lang/Object;
.source "Friends.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Friends$1;->run()V
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
        "Lcom/vkcoffee/android/api/friends/FriendsGet$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/data/Friends$1;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/data/Friends$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/data/Friends$1;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/vkcoffee/android/data/Friends$1$1;->this$0:Lcom/vkcoffee/android/data/Friends$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 139
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getFriends()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/data/Friends;->access$302(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 140
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getFriendLists()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/data/Friends;->access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 141
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reload friends failed, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->access$300()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->access$500()Lcom/vkcoffee/android/SearchIndexer;

    move-result-object v0

    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->access$300()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/SearchIndexer;->bind(Ljava/util/List;)Lcom/vkcoffee/android/SearchIndexer;

    .line 143
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->access$600()V

    .line 144
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->updateSorting()V

    .line 145
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.FRIEND_LIST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/data/Friends;->access$702(Z)Z

    .line 147
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkcoffee/android/data/Friends;->access$102(Z)Z

    .line 148
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/friends/FriendsGet$Result;)V
    .locals 5
    .param p1, "result"    # Lcom/vkcoffee/android/api/friends/FriendsGet$Result;

    .prologue
    const/4 v4, 0x1

    .line 115
    :try_start_0
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->access$200()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->access$300()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 119
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->access$300()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p1, Lcom/vkcoffee/android/api/friends/FriendsGet$Result;->friends:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 120
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->access$200()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 121
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->access$400()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 122
    iget-object v1, p1, Lcom/vkcoffee/android/api/friends/FriendsGet$Result;->friends:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 123
    .local v0, "p":Lcom/vkcoffee/android/UserProfile;
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->access$400()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    .end local v0    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    iget-object v1, p1, Lcom/vkcoffee/android/api/friends/FriendsGet$Result;->friends:Ljava/util/List;

    invoke-static {v1, v4}, Lcom/vkcoffee/android/cache/Cache;->updateFriends(Ljava/util/List;Z)V

    .line 126
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->access$500()Lcom/vkcoffee/android/SearchIndexer;

    move-result-object v1

    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->access$300()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/SearchIndexer;->bind(Ljava/util/List;)Lcom/vkcoffee/android/SearchIndexer;

    .line 127
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->access$600()V

    .line 128
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->updateSorting()V

    .line 129
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 130
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p1, Lcom/vkcoffee/android/api/friends/FriendsGet$Result;->lists:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/vkcoffee/android/cache/Cache;->updateFriendLists(Ljava/util/List;Z)V

    .line 132
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.vkcoffee.android.FRIEND_LIST_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 133
    invoke-static {v4}, Lcom/vkcoffee/android/data/Friends;->access$702(Z)Z

    .line 134
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/vkcoffee/android/data/Friends;->access$102(Z)Z

    .line 135
    return-void

    .line 116
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 111
    check-cast p1, Lcom/vkcoffee/android/api/friends/FriendsGet$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/data/Friends$1$1;->success(Lcom/vkcoffee/android/api/friends/FriendsGet$Result;)V

    return-void
.end method

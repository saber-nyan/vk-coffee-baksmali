.class final Lcom/vkcoffee/android/data/Friends$2;
.super Ljava/lang/Object;
.source "Friends.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

.field final synthetic val$ids:Ljava/util/ArrayList;

.field final synthetic val$nameCase:I

.field final synthetic val$profiles:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;ILjava/util/ArrayList;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/vkcoffee/android/data/Friends$2;->val$ids:Ljava/util/ArrayList;

    iput p2, p0, Lcom/vkcoffee/android/data/Friends$2;->val$nameCase:I

    iput-object p3, p0, Lcom/vkcoffee/android/data/Friends$2;->val$profiles:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/vkcoffee/android/data/Friends$2;->val$callback:Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 417
    iget-object v4, p0, Lcom/vkcoffee/android/data/Friends$2;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 418
    iget-object v4, p0, Lcom/vkcoffee/android/data/Friends$2;->val$ids:Ljava/util/ArrayList;

    iget v5, p0, Lcom/vkcoffee/android/data/Friends$2;->val$nameCase:I

    invoke-static {v4, v8, v5}, Lcom/vkcoffee/android/cache/Cache;->getUsers(Ljava/util/List;ZI)Ljava/util/ArrayList;

    move-result-object v0

    .line 419
    .local v0, "fromCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    iget-object v4, p0, Lcom/vkcoffee/android/data/Friends$2;->val$profiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 420
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 421
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    iget-object v5, p0, Lcom/vkcoffee/android/data/Friends$2;->val$ids:Ljava/util/ArrayList;

    iget v6, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 422
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->access$800()Landroid/util/LruCache;

    move-result-object v5

    iget v6, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget v7, p0, Lcom/vkcoffee/android/data/Friends$2;->val$nameCase:I

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 428
    .end local v0    # "fromCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    iget-object v4, p0, Lcom/vkcoffee/android/data/Friends$2;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 429
    const/4 v3, 0x0

    .line 430
    .local v3, "success":Z
    const/4 v4, 0x1

    new-array v2, v4, [I

    const/4 v4, 0x3

    aput v4, v2, v8

    .line 431
    .local v2, "retriesLeft":[I
    :goto_1
    aget v4, v2, v8

    if-lez v4, :cond_1

    if-nez v3, :cond_1

    .line 432
    new-instance v4, Lcom/vkcoffee/android/api/users/UsersGet;

    iget-object v5, p0, Lcom/vkcoffee/android/data/Friends$2;->val$ids:Ljava/util/ArrayList;

    iget v6, p0, Lcom/vkcoffee/android/data/Friends$2;->val$nameCase:I

    invoke-direct {v4, v5, v6}, Lcom/vkcoffee/android/api/users/UsersGet;-><init>(Ljava/util/List;I)V

    new-instance v5, Lcom/vkcoffee/android/data/Friends$2$1;

    invoke-direct {v5, p0, v2}, Lcom/vkcoffee/android/data/Friends$2$1;-><init>(Lcom/vkcoffee/android/data/Friends$2;[I)V

    .line 433
    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/users/UsersGet;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    .line 456
    invoke-virtual {v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    move-result v3

    goto :goto_1

    .line 459
    .end local v2    # "retriesLeft":[I
    .end local v3    # "success":Z
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/data/Friends$2;->val$callback:Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    iget-object v5, p0, Lcom/vkcoffee/android/data/Friends$2;->val$profiles:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/vkcoffee/android/data/Friends$GetUsersCallback;->onUsersLoaded(Ljava/util/ArrayList;)V

    .line 460
    return-void
.end method

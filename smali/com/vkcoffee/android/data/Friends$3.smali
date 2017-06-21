.class final Lcom/vkcoffee/android/data/Friends$3;
.super Ljava/lang/Object;
.source "Friends.java"

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;I)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$done:[Z

.field final synthetic val$lock:Ljava/lang/Object;

.field final synthetic val$result:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;[ZLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/vkcoffee/android/data/Friends$3;->val$result:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/vkcoffee/android/data/Friends$3;->val$done:[Z

    iput-object p3, p0, Lcom/vkcoffee/android/data/Friends$3;->val$lock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/data/Friends$3;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 479
    iget-object v0, p0, Lcom/vkcoffee/android/data/Friends$3;->val$done:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 480
    iget-object v1, p0, Lcom/vkcoffee/android/data/Friends$3;->val$lock:Ljava/lang/Object;

    monitor-enter v1

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/data/Friends$3;->val$lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 482
    monitor-exit v1

    .line 483
    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

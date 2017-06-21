.class Lcom/google/android/now/BlockingServiceConnection;
.super Ljava/lang/Object;
.source "BlockingServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final TAG:Ljava/lang/String; = "BlockingServiceConnection"


# instance fields
.field private final mBlockingQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mBound:Z

.field private mUsed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v1, p0, Lcom/google/android/now/BlockingServiceConnection;->mBound:Z

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/now/BlockingServiceConnection;->mUsed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/now/BlockingServiceConnection;->mBlockingQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/now/BlockingServiceConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/now/BlockingServiceConnection;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/android/now/BlockingServiceConnection;->mBound:Z

    return v0
.end method


# virtual methods
.method public getService()Landroid/os/IBinder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/now/BlockingServiceConnection;->mUsed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/android/now/BlockingServiceConnection;->mUsed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    iget-object v0, p0, Lcom/google/android/now/BlockingServiceConnection;->mBlockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/now/BlockingServiceConnection;->mBound:Z

    .line 42
    iget-object v0, p0, Lcom/google/android/now/BlockingServiceConnection;->mBlockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 43
    iget-object v0, p0, Lcom/google/android/now/BlockingServiceConnection;->mBlockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/now/BlockingServiceConnection;->mBound:Z

    .line 54
    return-void
.end method

.method public unbindServiceIfConnected(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    new-instance v1, Lcom/google/android/now/BlockingServiceConnection$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/now/BlockingServiceConnection$1;-><init>(Lcom/google/android/now/BlockingServiceConnection;Landroid/content/Context;)V

    .line 88
    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

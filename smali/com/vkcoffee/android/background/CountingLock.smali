.class public Lcom/vkcoffee/android/background/CountingLock;
.super Ljava/lang/Object;
.source "CountingLock.java"


# instance fields
.field private count:Ljava/util/concurrent/atomic/AtomicInteger;

.field private lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/background/CountingLock;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/background/CountingLock;->lock:Ljava/lang/Object;

    .line 12
    return-void
.end method


# virtual methods
.method public await()V
    .locals 2

    .prologue
    .line 15
    iget-object v1, p0, Lcom/vkcoffee/android/background/CountingLock;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/background/CountingLock;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 18
    :try_start_1
    iget-object v0, p0, Lcom/vkcoffee/android/background/CountingLock;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 23
    return-void

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 19
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public decrement()V
    .locals 4

    .prologue
    .line 30
    iget-object v2, p0, Lcom/vkcoffee/android/background/CountingLock;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/background/CountingLock;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 32
    .local v0, "val":I
    if-nez v0, :cond_1

    .line 33
    iget-object v1, p0, Lcom/vkcoffee/android/background/CountingLock;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 37
    :cond_0
    monitor-exit v2

    .line 38
    return-void

    .line 34
    :cond_1
    if-gez v0, :cond_0

    .line 35
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Decrement below 0"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public increment()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/background/CountingLock;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 27
    return-void
.end method

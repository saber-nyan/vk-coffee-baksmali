.class public Lcom/vkcoffee/android/background/WorkerThread;
.super Ljava/lang/Thread;
.source "WorkerThread.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mReady:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/background/WorkerThread;->mLock:Ljava/lang/Object;

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/background/WorkerThread;->mReady:Z

    .line 15
    return-void
.end method


# virtual methods
.method public isStarted()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/vkcoffee/android/background/WorkerThread;->mReady:Z

    return v0
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/vkcoffee/android/background/WorkerThread;->postRunnable(Ljava/lang/Runnable;J)V

    .line 44
    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;J)V
    .locals 6
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 78
    iget-object v2, p0, Lcom/vkcoffee/android/background/WorkerThread;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 80
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/vkcoffee/android/background/WorkerThread;->mReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 82
    :try_start_1
    iget-object v1, p0, Lcom/vkcoffee/android/background/WorkerThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 88
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/vkcoffee/android/background/WorkerThread;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 89
    const-wide/16 v4, 0x0

    cmp-long v1, p2, v4

    if-gtz v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/vkcoffee/android/background/WorkerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    :cond_1
    :goto_1
    monitor-exit v2

    .line 96
    return-void

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/background/WorkerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public run()V
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/background/WorkerThread;->mHandler:Landroid/os/Handler;

    .line 21
    iget-object v1, p0, Lcom/vkcoffee/android/background/WorkerThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/background/WorkerThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/background/WorkerThread;->mReady:Z

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 26
    return-void

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 34
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/vkcoffee/android/background/WorkerThread;->sendMessage(Landroid/os/Message;J)V

    .line 35
    return-void
.end method

.method public sendMessage(Landroid/os/Message;J)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "delayMillis"    # J

    .prologue
    .line 53
    iget-object v2, p0, Lcom/vkcoffee/android/background/WorkerThread;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 54
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/vkcoffee/android/background/WorkerThread;->mReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 56
    :try_start_1
    iget-object v1, p0, Lcom/vkcoffee/android/background/WorkerThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 61
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/vkcoffee/android/background/WorkerThread;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 62
    const-wide/16 v4, 0x0

    cmp-long v1, p2, v4

    if-gtz v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/vkcoffee/android/background/WorkerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    :cond_1
    :goto_1
    monitor-exit v2

    .line 69
    return-void

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/background/WorkerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

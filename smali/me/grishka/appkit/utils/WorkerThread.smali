.class public Lme/grishka/appkit/utils/WorkerThread;
.super Ljava/lang/Thread;
.source "WorkerThread.java"


# instance fields
.field public handler:Landroid/os/Handler;

.field private handlerSyncObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/utils/WorkerThread;->handlerSyncObject:Ljava/lang/Object;

    .line 14
    return-void
.end method


# virtual methods
.method public postRunnable(Ljava/lang/Runnable;I)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lme/grishka/appkit/utils/WorkerThread;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 49
    if-gtz p2, :cond_1

    .line 50
    iget-object v0, p0, Lme/grishka/appkit/utils/WorkerThread;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lme/grishka/appkit/utils/WorkerThread;->handler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/utils/WorkerThread;->handler:Landroid/os/Handler;

    .line 61
    iget-object v1, p0, Lme/grishka/appkit/utils/WorkerThread;->handlerSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lme/grishka/appkit/utils/WorkerThread;->handlerSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 63
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 66
    return-void

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendMessage(Landroid/os/Message;I)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delay"    # I

    .prologue
    .line 17
    iget-object v1, p0, Lme/grishka/appkit/utils/WorkerThread;->handler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 19
    :try_start_0
    iget-object v2, p0, Lme/grishka/appkit/utils/WorkerThread;->handlerSyncObject:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :try_start_1
    iget-object v1, p0, Lme/grishka/appkit/utils/WorkerThread;->handlerSyncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 21
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :cond_0
    :goto_0
    iget-object v1, p0, Lme/grishka/appkit/utils/WorkerThread;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 29
    if-gtz p2, :cond_2

    .line 30
    iget-object v1, p0, Lme/grishka/appkit/utils/WorkerThread;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 34
    :cond_1
    :goto_1
    return-void

    .line 21
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 32
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    iget-object v1, p0, Lme/grishka/appkit/utils/WorkerThread;->handler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

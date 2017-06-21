.class public Lcom/vkcoffee/android/telegramutils/DispatchQueue;
.super Ljava/lang/Thread;
.source "DispatchQueue.java"


# instance fields
.field private volatile handler:Landroid/os/Handler;

.field private syncLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/telegramutils/DispatchQueue;->handler:Landroid/os/Handler;

    .line 20
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/telegramutils/DispatchQueue;->syncLatch:Ljava/util/concurrent/CountDownLatch;

    .line 23
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/telegramutils/DispatchQueue;->setName(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/vkcoffee/android/telegramutils/DispatchQueue;->start()V

    .line 25
    return-void
.end method

.method private sendMessage(Landroid/os/Message;I)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delay"    # I

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/DispatchQueue;->syncLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 30
    if-gtz p2, :cond_0

    .line 31
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/DispatchQueue;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 38
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/DispatchQueue;->handler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public cancelRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/DispatchQueue;->syncLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/DispatchQueue;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cleanupQueue()V
    .locals 2

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/DispatchQueue;->syncLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 69
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/DispatchQueue;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 50
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/vkcoffee/android/telegramutils/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)V

    .line 51
    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/DispatchQueue;->syncLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 56
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/DispatchQueue;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/DispatchQueue;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/telegramutils/DispatchQueue;->handler:Landroid/os/Handler;

    .line 79
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/DispatchQueue;->syncLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 80
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 81
    return-void
.end method

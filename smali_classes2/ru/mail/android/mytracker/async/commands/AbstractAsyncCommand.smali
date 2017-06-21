.class public abstract Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;
.super Ljava/lang/Object;
.source "AbstractAsyncCommand.java"

# interfaces
.implements Lru/mail/android/mytracker/async/commands/AsyncCommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand$1;,
        Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand$ExecuteRunnable;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private listenerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lru/mail/android/mytracker/async/commands/AsyncCommand$ExecuteListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;->handler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$100(Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;

    .prologue
    .line 16
    iget-object v0, p0, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private onExecute(Lru/mail/android/mytracker/async/commands/AsyncCommandResult;)V
    .locals 3
    .param p1, "result"    # Lru/mail/android/mytracker/async/commands/AsyncCommandResult;

    .prologue
    .line 70
    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;->handler:Landroid/os/Handler;

    new-instance v1, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand$ExecuteRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand$ExecuteRunnable;-><init>(Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;Lru/mail/android/mytracker/async/commands/AsyncCommandResult;Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    :cond_0
    monitor-exit p0

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected execute()Lru/mail/android/mytracker/async/commands/AsyncCommandResult;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lru/mail/android/mytracker/async/commands/AsyncCommandResult;

    invoke-direct {v0}, Lru/mail/android/mytracker/async/commands/AsyncCommandResult;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getExecuteListener()Lru/mail/android/mytracker/async/commands/AsyncCommand$ExecuteListener;
    .locals 1

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/mail/android/mytracker/async/commands/AsyncCommand$ExecuteListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;->execute()Lru/mail/android/mytracker/async/commands/AsyncCommandResult;

    move-result-object v0

    .line 59
    .local v0, "result":Lru/mail/android/mytracker/async/commands/AsyncCommandResult;
    invoke-direct {p0, v0}, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;->onExecute(Lru/mail/android/mytracker/async/commands/AsyncCommandResult;)V

    .line 60
    return-void
.end method

.method public final declared-synchronized setExecuteListener(Lru/mail/android/mytracker/async/commands/AsyncCommand$ExecuteListener;)V
    .locals 1
    .param p1, "executeListener"    # Lru/mail/android/mytracker/async/commands/AsyncCommand$ExecuteListener;

    .prologue
    .line 41
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    .line 42
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;->listenerWeakReference:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

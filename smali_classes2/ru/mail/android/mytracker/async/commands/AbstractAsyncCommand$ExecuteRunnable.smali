.class Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand$ExecuteRunnable;
.super Ljava/lang/Object;
.source "AbstractAsyncCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExecuteRunnable"
.end annotation


# instance fields
.field private result:Lru/mail/android/mytracker/async/commands/AsyncCommandResult;

.field final synthetic this$0:Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;


# direct methods
.method private constructor <init>(Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;Lru/mail/android/mytracker/async/commands/AsyncCommandResult;)V
    .locals 0
    .param p2, "result"    # Lru/mail/android/mytracker/async/commands/AsyncCommandResult;

    .prologue
    .line 82
    iput-object p1, p0, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand$ExecuteRunnable;->this$0:Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand$ExecuteRunnable;->result:Lru/mail/android/mytracker/async/commands/AsyncCommandResult;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;Lru/mail/android/mytracker/async/commands/AsyncCommandResult;Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand$1;)V
    .locals 0
    .param p1, "x0"    # Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;
    .param p2, "x1"    # Lru/mail/android/mytracker/async/commands/AsyncCommandResult;
    .param p3, "x2"    # Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand$1;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand$ExecuteRunnable;-><init>(Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;Lru/mail/android/mytracker/async/commands/AsyncCommandResult;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 89
    iget-object v2, p0, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand$ExecuteRunnable;->this$0:Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;

    monitor-enter v2

    .line 91
    :try_start_0
    iget-object v1, p0, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand$ExecuteRunnable;->this$0:Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;

    invoke-static {v1}, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;->access$100(Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand$ExecuteRunnable;->this$0:Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;

    invoke-static {v1}, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;->access$100(Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/mail/android/mytracker/async/commands/AsyncCommand$ExecuteListener;

    .line 94
    .local v0, "listener":Lru/mail/android/mytracker/async/commands/AsyncCommand$ExecuteListener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand$ExecuteRunnable;->this$0:Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;

    iget-object v3, p0, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand$ExecuteRunnable;->result:Lru/mail/android/mytracker/async/commands/AsyncCommandResult;

    invoke-interface {v0, v1, v3}, Lru/mail/android/mytracker/async/commands/AsyncCommand$ExecuteListener;->onExecute(Lru/mail/android/mytracker/async/commands/AsyncCommand;Lru/mail/android/mytracker/async/commands/AsyncCommandResult;)V

    .line 96
    .end local v0    # "listener":Lru/mail/android/mytracker/async/commands/AsyncCommand$ExecuteListener;
    :cond_0
    monitor-exit v2

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

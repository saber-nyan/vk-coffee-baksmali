.class public Lru/mail/android/mytracker/async/AsyncCommandExecutor;
.super Ljava/lang/Object;
.source "AsyncCommandExecutor.java"


# static fields
.field private static final executor:Lru/mail/android/mytracker/async/AsyncCommandExecutor;


# instance fields
.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lru/mail/android/mytracker/async/AsyncCommandExecutor;

    invoke-direct {v0}, Lru/mail/android/mytracker/async/AsyncCommandExecutor;-><init>()V

    sput-object v0, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->executor:Lru/mail/android/mytracker/async/AsyncCommandExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 45
    return-void
.end method

.method public static getExecutor()Lru/mail/android/mytracker/async/AsyncCommandExecutor;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->executor:Lru/mail/android/mytracker/async/AsyncCommandExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Lru/mail/android/mytracker/async/commands/AsyncCommand;)V
    .locals 1
    .param p1, "command"    # Lru/mail/android/mytracker/async/commands/AsyncCommand;

    .prologue
    .line 52
    iget-object v0, p0, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method public submit(Lru/mail/android/mytracker/async/commands/AsyncCommand;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "command"    # Lru/mail/android/mytracker/async/commands/AsyncCommand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/mail/android/mytracker/async/commands/AsyncCommand;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

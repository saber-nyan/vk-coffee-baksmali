.class final Lbolts/Task$7;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$allFinished:Lbolts/Task$TaskCompletionSource;

.field final synthetic val$causes:Ljava/util/ArrayList;

.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$errorLock:Ljava/lang/Object;

.field final synthetic val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lbolts/Task$TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lbolts/Task$7;->val$errorLock:Ljava/lang/Object;

    iput-object p2, p0, Lbolts/Task$7;->val$causes:Ljava/util/ArrayList;

    iput-object p3, p0, Lbolts/Task$7;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lbolts/Task$7;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lbolts/Task$7;->val$allFinished:Lbolts/Task$TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lbolts/Task$7;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 425
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    iget-object v2, p0, Lbolts/Task$7;->val$errorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 427
    :try_start_0
    iget-object v1, p0, Lbolts/Task$7;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    iget-object v1, p0, Lbolts/Task$7;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 435
    :cond_1
    iget-object v1, p0, Lbolts/Task$7;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_2

    .line 436
    iget-object v1, p0, Lbolts/Task$7;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 437
    iget-object v1, p0, Lbolts/Task$7;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 438
    iget-object v2, p0, Lbolts/Task$7;->val$allFinished:Lbolts/Task$TaskCompletionSource;

    iget-object v1, p0, Lbolts/Task$7;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {v2, v1}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 451
    :cond_2
    :goto_0
    return-object v6

    .line 428
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 440
    :cond_3
    new-instance v0, Lbolts/AggregateException;

    const-string/jumbo v1, "There were %d exceptions."

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lbolts/Task$7;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbolts/Task$7;->val$causes:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lbolts/AggregateException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 443
    .local v0, "error":Ljava/lang/Exception;
    iget-object v1, p0, Lbolts/Task$7;->val$allFinished:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 445
    .end local v0    # "error":Ljava/lang/Exception;
    :cond_4
    iget-object v1, p0, Lbolts/Task$7;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 446
    iget-object v1, p0, Lbolts/Task$7;->val$allFinished:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v1}, Lbolts/Task$TaskCompletionSource;->setCancelled()V

    goto :goto_0

    .line 448
    :cond_5
    iget-object v1, p0, Lbolts/Task$7;->val$allFinished:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v1, v6}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.class final Lbolts/Task$13;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->completeImmediately(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$continuation:Lbolts/Continuation;

.field final synthetic val$ct:Lbolts/CancellationToken;

.field final synthetic val$task:Lbolts/Task;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/CancellationToken;Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lbolts/Task$13;->val$ct:Lbolts/CancellationToken;

    iput-object p2, p0, Lbolts/Task$13;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iput-object p3, p0, Lbolts/Task$13;->val$continuation:Lbolts/Continuation;

    iput-object p4, p0, Lbolts/Task$13;->val$task:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 749
    iget-object v2, p0, Lbolts/Task$13;->val$ct:Lbolts/CancellationToken;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbolts/Task$13;->val$ct:Lbolts/CancellationToken;

    invoke-virtual {v2}, Lbolts/CancellationToken;->isCancellationRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 750
    iget-object v2, p0, Lbolts/Task$13;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v2}, Lbolts/Task$TaskCompletionSource;->setCancelled()V

    .line 762
    :goto_0
    return-void

    .line 755
    :cond_0
    :try_start_0
    iget-object v2, p0, Lbolts/Task$13;->val$continuation:Lbolts/Continuation;

    iget-object v3, p0, Lbolts/Task$13;->val$task:Lbolts/Task;

    invoke-interface {v2, v3}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v1

    .line 756
    .local v1, "result":Ljava/lang/Object;, "TTContinuationResult;"
    iget-object v2, p0, Lbolts/Task$13;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v2, v1}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 757
    .end local v1    # "result":Ljava/lang/Object;, "TTContinuationResult;"
    :catch_0
    move-exception v0

    .line 758
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    iget-object v2, p0, Lbolts/Task$13;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v2}, Lbolts/Task$TaskCompletionSource;->setCancelled()V

    goto :goto_0

    .line 759
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v0

    .line 760
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lbolts/Task$13;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v2, v0}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

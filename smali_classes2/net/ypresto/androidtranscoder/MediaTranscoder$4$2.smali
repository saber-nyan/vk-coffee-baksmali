.class Lnet/ypresto/androidtranscoder/MediaTranscoder$4$2;
.super Ljava/lang/Object;
.source "MediaTranscoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ypresto/androidtranscoder/MediaTranscoder$4;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/ypresto/androidtranscoder/MediaTranscoder$4;

.field final synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lnet/ypresto/androidtranscoder/MediaTranscoder$4;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$1"    # Lnet/ypresto/androidtranscoder/MediaTranscoder$4;

    .prologue
    .line 198
    iput-object p1, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4$2;->this$1:Lnet/ypresto/androidtranscoder/MediaTranscoder$4;

    iput-object p2, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4$2;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4$2;->val$exception:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 202
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4$2;->this$1:Lnet/ypresto/androidtranscoder/MediaTranscoder$4;

    iget-object v1, v1, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;->val$listener:Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;

    invoke-interface {v1}, Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;->onTranscodeCompleted()V

    .line 211
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4$2;->this$1:Lnet/ypresto/androidtranscoder/MediaTranscoder$4;

    iget-object v1, v1, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;->val$futureReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 205
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4$2;->this$1:Lnet/ypresto/androidtranscoder/MediaTranscoder$4;

    iget-object v1, v1, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;->val$listener:Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;

    invoke-interface {v1}, Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;->onTranscodeCanceled()V

    goto :goto_0

    .line 208
    :cond_1
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4$2;->this$1:Lnet/ypresto/androidtranscoder/MediaTranscoder$4;

    iget-object v1, v1, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;->val$listener:Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;

    iget-object v2, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4$2;->val$exception:Ljava/lang/Exception;

    invoke-interface {v1, v2}, Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;->onTranscodeFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method

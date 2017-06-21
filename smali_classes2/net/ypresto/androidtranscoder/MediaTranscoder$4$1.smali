.class Lnet/ypresto/androidtranscoder/MediaTranscoder$4$1;
.super Ljava/lang/Object;
.source "MediaTranscoder.java"

# interfaces
.implements Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;


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


# direct methods
.method constructor <init>(Lnet/ypresto/androidtranscoder/MediaTranscoder$4;)V
    .locals 0
    .param p1, "this$1"    # Lnet/ypresto/androidtranscoder/MediaTranscoder$4;

    .prologue
    .line 172
    iput-object p1, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4$1;->this$1:Lnet/ypresto/androidtranscoder/MediaTranscoder$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(D)V
    .locals 3
    .param p1, "progress"    # D

    .prologue
    .line 175
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4$1;->this$1:Lnet/ypresto/androidtranscoder/MediaTranscoder$4;

    iget-object v0, v0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;->val$handler:Landroid/os/Handler;

    new-instance v1, Lnet/ypresto/androidtranscoder/MediaTranscoder$4$1$1;

    invoke-direct {v1, p0, p1, p2}, Lnet/ypresto/androidtranscoder/MediaTranscoder$4$1$1;-><init>(Lnet/ypresto/androidtranscoder/MediaTranscoder$4$1;D)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method

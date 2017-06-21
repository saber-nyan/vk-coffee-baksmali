.class Lnet/ypresto/androidtranscoder/MediaTranscoder$4$1$1;
.super Ljava/lang/Object;
.source "MediaTranscoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ypresto/androidtranscoder/MediaTranscoder$4$1;->onProgress(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lnet/ypresto/androidtranscoder/MediaTranscoder$4$1;

.field final synthetic val$progress:D


# direct methods
.method constructor <init>(Lnet/ypresto/androidtranscoder/MediaTranscoder$4$1;D)V
    .locals 0
    .param p1, "this$2"    # Lnet/ypresto/androidtranscoder/MediaTranscoder$4$1;

    .prologue
    .line 175
    iput-object p1, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4$1$1;->this$2:Lnet/ypresto/androidtranscoder/MediaTranscoder$4$1;

    iput-wide p2, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4$1$1;->val$progress:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4$1$1;->this$2:Lnet/ypresto/androidtranscoder/MediaTranscoder$4$1;

    iget-object v0, v0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4$1;->this$1:Lnet/ypresto/androidtranscoder/MediaTranscoder$4;

    iget-object v0, v0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;->val$listener:Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;

    iget-wide v2, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4$1$1;->val$progress:D

    invoke-interface {v0, v2, v3}, Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;->onTranscodeProgress(D)V

    .line 179
    return-void
.end method

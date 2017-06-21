.class Lnet/ypresto/androidtranscoder/MediaTranscoder$1;
.super Ljava/lang/Object;
.source "MediaTranscoder.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ypresto/androidtranscoder/MediaTranscoder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/ypresto/androidtranscoder/MediaTranscoder;


# direct methods
.method constructor <init>(Lnet/ypresto/androidtranscoder/MediaTranscoder;)V
    .locals 0
    .param p1, "this$0"    # Lnet/ypresto/androidtranscoder/MediaTranscoder;

    .prologue
    .line 48
    iput-object p1, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$1;->this$0:Lnet/ypresto/androidtranscoder/MediaTranscoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "MediaTranscoder-Worker"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

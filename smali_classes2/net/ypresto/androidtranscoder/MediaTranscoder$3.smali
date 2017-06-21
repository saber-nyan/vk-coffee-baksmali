.class Lnet/ypresto/androidtranscoder/MediaTranscoder$3;
.super Ljava/lang/Object;
.source "MediaTranscoder.java"

# interfaces
.implements Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ypresto/androidtranscoder/MediaTranscoder;->transcodeVideo(Ljava/lang/String;Ljava/lang/String;Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/ypresto/androidtranscoder/MediaTranscoder;

.field final synthetic val$finalFileInputStream:Ljava/io/FileInputStream;

.field final synthetic val$listener:Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;


# direct methods
.method constructor <init>(Lnet/ypresto/androidtranscoder/MediaTranscoder;Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;Ljava/io/FileInputStream;)V
    .locals 0
    .param p1, "this$0"    # Lnet/ypresto/androidtranscoder/MediaTranscoder;

    .prologue
    .line 118
    iput-object p1, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$3;->this$0:Lnet/ypresto/androidtranscoder/MediaTranscoder;

    iput-object p2, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$3;->val$listener:Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;

    iput-object p3, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$3;->val$finalFileInputStream:Ljava/io/FileInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeStream()V
    .locals 3

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$3;->val$finalFileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "MediaTranscoder"

    const-string/jumbo v2, "Can\'t close input stream: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onTranscodeCanceled()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$3;->val$listener:Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;

    invoke-interface {v0}, Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;->onTranscodeCanceled()V

    .line 133
    invoke-direct {p0}, Lnet/ypresto/androidtranscoder/MediaTranscoder$3;->closeStream()V

    .line 134
    return-void
.end method

.method public onTranscodeCompleted()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$3;->val$listener:Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;

    invoke-interface {v0}, Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;->onTranscodeCompleted()V

    .line 127
    invoke-direct {p0}, Lnet/ypresto/androidtranscoder/MediaTranscoder$3;->closeStream()V

    .line 128
    return-void
.end method

.method public onTranscodeFailed(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 138
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$3;->val$listener:Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;

    invoke-interface {v0, p1}, Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;->onTranscodeFailed(Ljava/lang/Exception;)V

    .line 139
    invoke-direct {p0}, Lnet/ypresto/androidtranscoder/MediaTranscoder$3;->closeStream()V

    .line 140
    return-void
.end method

.method public onTranscodeProgress(D)V
    .locals 1
    .param p1, "progress"    # D

    .prologue
    .line 121
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$3;->val$listener:Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;

    invoke-interface {v0, p1, p2}, Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;->onTranscodeProgress(D)V

    .line 122
    return-void
.end method

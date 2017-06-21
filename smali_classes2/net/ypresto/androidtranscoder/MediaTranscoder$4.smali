.class Lnet/ypresto/androidtranscoder/MediaTranscoder$4;
.super Ljava/lang/Object;
.source "MediaTranscoder.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ypresto/androidtranscoder/MediaTranscoder;->transcodeVideo(Ljava/io/FileDescriptor;Ljava/lang/String;Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/ypresto/androidtranscoder/MediaTranscoder;

.field final synthetic val$futureReference:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$inFileDescriptor:Ljava/io/FileDescriptor;

.field final synthetic val$listener:Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;

.field final synthetic val$outFormatStrategy:Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;

.field final synthetic val$outPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/ypresto/androidtranscoder/MediaTranscoder;Landroid/os/Handler;Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;Ljava/io/FileDescriptor;Ljava/lang/String;Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .param p1, "this$0"    # Lnet/ypresto/androidtranscoder/MediaTranscoder;

    .prologue
    .line 166
    iput-object p1, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;->this$0:Lnet/ypresto/androidtranscoder/MediaTranscoder;

    iput-object p2, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;->val$listener:Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;

    iput-object p4, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;->val$inFileDescriptor:Ljava/io/FileDescriptor;

    iput-object p5, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;->val$outPath:Ljava/lang/String;

    iput-object p6, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;->val$outFormatStrategy:Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;

    iput-object p7, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;->val$futureReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p0}, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, "caughtException":Ljava/lang/Exception;
    :try_start_0
    new-instance v2, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;

    invoke-direct {v2}, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;-><init>()V

    .line 172
    .local v2, "engine":Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;
    new-instance v4, Lnet/ypresto/androidtranscoder/MediaTranscoder$4$1;

    invoke-direct {v4, p0}, Lnet/ypresto/androidtranscoder/MediaTranscoder$4$1;-><init>(Lnet/ypresto/androidtranscoder/MediaTranscoder$4;)V

    invoke-virtual {v2, v4}, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->setProgressCallback(Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;)V

    .line 183
    iget-object v4, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;->val$inFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v4}, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 184
    iget-object v4, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;->val$outPath:Ljava/lang/String;

    iget-object v5, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;->val$outFormatStrategy:Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;

    invoke-virtual {v2, v4, v5}, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->transcodeVideo(Ljava/lang/String;Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 197
    .end local v2    # "engine":Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;
    :goto_0
    move-object v3, v0

    .line 198
    .local v3, "exception":Ljava/lang/Exception;
    iget-object v4, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;->val$handler:Landroid/os/Handler;

    new-instance v5, Lnet/ypresto/androidtranscoder/MediaTranscoder$4$2;

    invoke-direct {v5, p0, v3}, Lnet/ypresto/androidtranscoder/MediaTranscoder$4$2;-><init>(Lnet/ypresto/androidtranscoder/MediaTranscoder$4;Ljava/lang/Exception;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 214
    if-eqz v3, :cond_0

    throw v3

    .line 185
    .end local v3    # "exception":Ljava/lang/Exception;
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "MediaTranscoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Transcode failed: input file (fd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;->val$inFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " or could not open output file (\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$4;->val$outPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\') ."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    move-object v0, v1

    .line 195
    goto :goto_0

    .line 189
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v4, "MediaTranscoder"

    const-string/jumbo v5, "Cancel transcode video file."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    move-object v0, v1

    .line 195
    goto :goto_0

    .line 192
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "MediaTranscoder"

    const-string/jumbo v5, "Fatal error while transcoding, this might be invalid format or bug in engine or Android."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    move-object v0, v1

    goto :goto_0

    .line 215
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v3    # "exception":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method

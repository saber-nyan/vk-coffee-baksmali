.class Lcom/vkcoffee/android/upload/VideoUploadTask$3;
.super Ljava/lang/Object;
.source "VideoUploadTask.java"

# interfaces
.implements Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/upload/VideoUploadTask;->transcodeVideo(Ljava/io/File;Ljava/lang/String;Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/upload/VideoUploadTask;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/upload/VideoUploadTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/upload/VideoUploadTask;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/vkcoffee/android/upload/VideoUploadTask$3;->this$0:Lcom/vkcoffee/android/upload/VideoUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(D)V
    .locals 1
    .param p1, "progress"    # D

    .prologue
    .line 219
    iget-object v0, p0, Lcom/vkcoffee/android/upload/VideoUploadTask$3;->this$0:Lcom/vkcoffee/android/upload/VideoUploadTask;

    invoke-static {v0, p1, p2}, Lcom/vkcoffee/android/upload/VideoUploadTask;->access$500(Lcom/vkcoffee/android/upload/VideoUploadTask;D)V

    .line 220
    return-void
.end method

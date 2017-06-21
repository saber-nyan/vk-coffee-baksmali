.class Lcom/vkontakte/android/upload/VideoUploadTask$TranscodeRunnable;
.super Ljava/lang/Object;
.source "VideoUploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/upload/VideoUploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranscodeRunnable"
.end annotation


# instance fields
.field private final input:Ljava/io/File;

.field private final outputPath:Ljava/lang/String;

.field private final strategy:Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;

.field final synthetic this$0:Lcom/vkontakte/android/upload/VideoUploadTask;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/upload/VideoUploadTask;Ljava/io/File;Ljava/lang/String;Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;)V
    .locals 0
    .param p2, "input"    # Ljava/io/File;
    .param p3, "outputPath"    # Ljava/lang/String;
    .param p4, "strategy"    # Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/vkontakte/android/upload/VideoUploadTask$TranscodeRunnable;->this$0:Lcom/vkontakte/android/upload/VideoUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/vkontakte/android/upload/VideoUploadTask$TranscodeRunnable;->input:Ljava/io/File;

    .line 85
    iput-object p3, p0, Lcom/vkontakte/android/upload/VideoUploadTask$TranscodeRunnable;->outputPath:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lcom/vkontakte/android/upload/VideoUploadTask$TranscodeRunnable;->strategy:Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;

    .line 87
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask$TranscodeRunnable;->this$0:Lcom/vkontakte/android/upload/VideoUploadTask;

    iget-object v1, p0, Lcom/vkontakte/android/upload/VideoUploadTask$TranscodeRunnable;->input:Ljava/io/File;

    iget-object v2, p0, Lcom/vkontakte/android/upload/VideoUploadTask$TranscodeRunnable;->outputPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkontakte/android/upload/VideoUploadTask$TranscodeRunnable;->strategy:Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/upload/VideoUploadTask;->access$4(Lcom/vkontakte/android/upload/VideoUploadTask;Ljava/io/File;Ljava/lang/String;Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;)V

    .line 91
    return-void
.end method

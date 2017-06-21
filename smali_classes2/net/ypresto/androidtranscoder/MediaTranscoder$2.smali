.class Lnet/ypresto/androidtranscoder/MediaTranscoder$2;
.super Ljava/lang/Object;
.source "MediaTranscoder.java"

# interfaces
.implements Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ypresto/androidtranscoder/MediaTranscoder;->transcodeVideo(Ljava/io/FileDescriptor;Ljava/lang/String;Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;
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
    .line 78
    iput-object p1, p0, Lnet/ypresto/androidtranscoder/MediaTranscoder$2;->this$0:Lnet/ypresto/androidtranscoder/MediaTranscoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAudioOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 1
    .param p1, "inputFormat"    # Landroid/media/MediaFormat;

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public createVideoOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 1
    .param p1, "inputFormat"    # Landroid/media/MediaFormat;

    .prologue
    .line 81
    invoke-static {}, Lnet/ypresto/androidtranscoder/format/MediaFormatPresets;->getExportPreset960x540()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

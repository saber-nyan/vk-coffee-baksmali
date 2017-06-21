.class Lnet/ypresto/androidtranscoder/format/ExportPreset960x540Strategy;
.super Ljava/lang/Object;
.source "ExportPreset960x540Strategy.java"

# interfaces
.implements Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExportPreset960x540Strategy"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAudioOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 1
    .param p1, "inputFormat"    # Landroid/media/MediaFormat;

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public createVideoOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 10
    .param p1, "inputFormat"    # Landroid/media/MediaFormat;

    .prologue
    .line 30
    const-string/jumbo v5, "width"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 31
    .local v4, "width":I
    const-string/jumbo v5, "height"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 32
    .local v0, "height":I
    invoke-static {v4, v0}, Lnet/ypresto/androidtranscoder/format/MediaFormatPresets;->getExportPreset960x540(II)Landroid/media/MediaFormat;

    move-result-object v3

    .line 33
    .local v3, "outputFormat":Landroid/media/MediaFormat;
    const-string/jumbo v5, "width"

    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 34
    .local v2, "outWidth":I
    const-string/jumbo v5, "height"

    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 35
    .local v1, "outHeight":I
    const-string/jumbo v5, "ExportPreset960x540Strategy"

    const-string/jumbo v6, "inputFormat: %dx%d => outputFormat: %dx%d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-object v3
.end method

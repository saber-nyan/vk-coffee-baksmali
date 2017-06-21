.class public Lnet/ypresto/androidtranscoder/format/MediaFormatPresets;
.super Ljava/lang/Object;
.source "MediaFormatPresets.java"


# static fields
.field private static final LONGER_LENGTH_960x540:I = 0x3c0


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getExportPreset960x540()Landroid/media/MediaFormat;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 33
    const-string/jumbo v1, "video/avc"

    const/16 v2, 0x3c0

    const/16 v3, 0x21c

    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 34
    .local v0, "format":Landroid/media/MediaFormat;
    const-string/jumbo v1, "bitrate"

    const v2, 0x53ec60

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 35
    const-string/jumbo v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 36
    const-string/jumbo v1, "frame-rate"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 37
    const-string/jumbo v1, "i-frame-interval"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 38
    return-object v0
.end method

.method public static getExportPreset960x540(II)Landroid/media/MediaFormat;
    .locals 14
    .param p0, "originalWidth"    # I
    .param p1, "originalHeight"    # I

    .prologue
    .line 50
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 51
    .local v4, "longerLength":I
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 53
    .local v7, "shorterLength":I
    const/16 v9, 0x3c0

    if-gt v4, v9, :cond_0

    const/4 v2, 0x0

    .line 78
    :goto_0
    return-object v2

    .line 55
    :cond_0
    mul-int/lit16 v9, v7, 0x3c0

    rem-int v5, v9, v4

    .line 56
    .local v5, "residue":I
    if-eqz v5, :cond_1

    .line 57
    const-wide/high16 v10, 0x408e000000000000L    # 960.0

    int-to-double v12, v7

    mul-double/2addr v10, v12

    int-to-double v12, v4

    div-double v0, v10, v12

    .line 58
    .local v0, "ambiguousShorter":D
    new-instance v9, Lnet/ypresto/androidtranscoder/format/OutputFormatUnavailableException;

    const-string/jumbo v10, "Could not fit to integer, original: (%d, %d), scaled: (%d, %f)"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/16 v13, 0x3c0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    .line 58
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lnet/ypresto/androidtranscoder/format/OutputFormatUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 63
    .end local v0    # "ambiguousShorter":D
    :cond_1
    mul-int/lit16 v9, v7, 0x3c0

    div-int v6, v9, v4

    .line 65
    .local v6, "scaledShorter":I
    if-lt p0, p1, :cond_2

    .line 66
    const/16 v8, 0x3c0

    .line 67
    .local v8, "width":I
    move v3, v6

    .line 73
    .local v3, "height":I
    :goto_1
    const-string/jumbo v9, "video/avc"

    invoke-static {v9, v8, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    .line 74
    .local v2, "format":Landroid/media/MediaFormat;
    const-string/jumbo v9, "bitrate"

    const v10, 0x53ec60

    invoke-virtual {v2, v9, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 75
    const-string/jumbo v9, "color-format"

    const v10, 0x7f000789

    invoke-virtual {v2, v9, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 76
    const-string/jumbo v9, "frame-rate"

    const/16 v10, 0x1e

    invoke-virtual {v2, v9, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 77
    const-string/jumbo v9, "i-frame-interval"

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 69
    .end local v2    # "format":Landroid/media/MediaFormat;
    .end local v3    # "height":I
    .end local v8    # "width":I
    :cond_2
    move v8, v6

    .line 70
    .restart local v8    # "width":I
    const/16 v3, 0x3c0

    .restart local v3    # "height":I
    goto :goto_1
.end method

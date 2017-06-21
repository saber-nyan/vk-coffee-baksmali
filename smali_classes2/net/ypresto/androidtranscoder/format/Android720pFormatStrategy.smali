.class Lnet/ypresto/androidtranscoder/format/Android720pFormatStrategy;
.super Ljava/lang/Object;
.source "Android720pFormatStrategy.java"

# interfaces
.implements Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;


# static fields
.field private static final DEFAULT_BITRATE:I = 0x7a1200

.field private static final LONGER_LENGTH:I = 0x500

.field private static final SHORTER_LENGTH:I = 0x2d0

.field private static final TAG:Ljava/lang/String; = "720pFormatStrategy"


# instance fields
.field private final mBitRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const v0, 0x7a1200

    iput v0, p0, Lnet/ypresto/androidtranscoder/format/Android720pFormatStrategy;->mBitRate:I

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "bitRate"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lnet/ypresto/androidtranscoder/format/Android720pFormatStrategy;->mBitRate:I

    .line 35
    return-void
.end method


# virtual methods
.method public createAudioOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 1
    .param p1, "inputFormat"    # Landroid/media/MediaFormat;

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public createVideoOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 10
    .param p1, "inputFormat"    # Landroid/media/MediaFormat;

    .prologue
    .line 39
    const-string/jumbo v7, "width"

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 40
    .local v6, "width":I
    const-string/jumbo v7, "height"

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 42
    .local v1, "height":I
    if-lt v6, v1, :cond_0

    .line 43
    move v2, v6

    .line 44
    .local v2, "longer":I
    move v5, v1

    .line 45
    .local v5, "shorter":I
    const/16 v4, 0x500

    .line 46
    .local v4, "outWidth":I
    const/16 v3, 0x2d0

    .line 53
    .local v3, "outHeight":I
    :goto_0
    mul-int/lit8 v7, v2, 0x9

    mul-int/lit8 v8, v5, 0x10

    if-eq v7, v8, :cond_1

    .line 54
    new-instance v7, Lnet/ypresto/androidtranscoder/format/OutputFormatUnavailableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "This video is not 16:9, and is not able to transcode. ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lnet/ypresto/androidtranscoder/format/OutputFormatUnavailableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 48
    .end local v2    # "longer":I
    .end local v3    # "outHeight":I
    .end local v4    # "outWidth":I
    .end local v5    # "shorter":I
    :cond_0
    move v5, v6

    .line 49
    .restart local v5    # "shorter":I
    move v2, v1

    .line 50
    .restart local v2    # "longer":I
    const/16 v4, 0x2d0

    .line 51
    .restart local v4    # "outWidth":I
    const/16 v3, 0x500

    .restart local v3    # "outHeight":I
    goto :goto_0

    .line 56
    :cond_1
    const/16 v7, 0x2d0

    if-gt v5, v7, :cond_2

    .line 57
    const-string/jumbo v7, "720pFormatStrategy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "This video is less or equal to 720p, pass-through. ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    .line 66
    :goto_1
    return-object v0

    .line 60
    :cond_2
    const-string/jumbo v7, "video/avc"

    invoke-static {v7, v4, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 62
    .local v0, "format":Landroid/media/MediaFormat;
    const-string/jumbo v7, "bitrate"

    iget v8, p0, Lnet/ypresto/androidtranscoder/format/Android720pFormatStrategy;->mBitRate:I

    invoke-virtual {v0, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 63
    const-string/jumbo v7, "frame-rate"

    const/16 v8, 0x1e

    invoke-virtual {v0, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 64
    const-string/jumbo v7, "i-frame-interval"

    const/4 v8, 0x3

    invoke-virtual {v0, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 65
    const-string/jumbo v7, "color-format"

    const v8, 0x7f000789

    invoke-virtual {v0, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1
.end method

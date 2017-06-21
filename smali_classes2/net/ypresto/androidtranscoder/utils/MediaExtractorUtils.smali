.class public Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils;
.super Ljava/lang/Object;
.source "MediaExtractorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getFirstVideoAndAudioTrack(Landroid/media/MediaExtractor;)Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;
    .locals 7
    .param p0, "extractor"    # Landroid/media/MediaExtractor;

    .prologue
    const/4 v6, -0x1

    .line 40
    new-instance v4, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;-><init>(Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$1;)V

    .line 41
    .local v4, "trackResult":Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;
    iput v6, v4, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    .line 42
    iput v6, v4, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackIndex:I

    .line 43
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    .line 44
    .local v3, "trackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 45
    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 46
    .local v0, "format":Landroid/media/MediaFormat;
    const-string/jumbo v5, "mime"

    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "mime":Ljava/lang/String;
    iget v5, v4, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    if-gez v5, :cond_3

    const-string/jumbo v5, "video/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 48
    iput v1, v4, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    .line 49
    iput-object v2, v4, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackMime:Ljava/lang/String;

    .line 50
    iput-object v0, v4, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackFormat:Landroid/media/MediaFormat;

    .line 56
    :cond_0
    :goto_1
    iget v5, v4, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    if-ltz v5, :cond_4

    iget v5, v4, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackIndex:I

    if-ltz v5, :cond_4

    .line 58
    .end local v0    # "format":Landroid/media/MediaFormat;
    .end local v2    # "mime":Ljava/lang/String;
    :cond_1
    iget v5, v4, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    if-ltz v5, :cond_2

    iget v5, v4, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackIndex:I

    if-gez v5, :cond_5

    .line 59
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "extractor does not contain video and/or audio tracks."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 51
    .restart local v0    # "format":Landroid/media/MediaFormat;
    .restart local v2    # "mime":Ljava/lang/String;
    :cond_3
    iget v5, v4, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackIndex:I

    if-gez v5, :cond_0

    const-string/jumbo v5, "audio/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    iput v1, v4, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackIndex:I

    .line 53
    iput-object v2, v4, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackMime:Ljava/lang/String;

    .line 54
    iput-object v0, v4, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackFormat:Landroid/media/MediaFormat;

    goto :goto_1

    .line 44
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "format":Landroid/media/MediaFormat;
    .end local v2    # "mime":Ljava/lang/String;
    :cond_5
    return-object v4
.end method

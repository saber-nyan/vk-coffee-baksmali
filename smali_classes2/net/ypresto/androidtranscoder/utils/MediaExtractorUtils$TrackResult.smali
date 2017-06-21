.class public Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;
.super Ljava/lang/Object;
.source "MediaExtractorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackResult"
.end annotation


# instance fields
.field public mAudioTrackFormat:Landroid/media/MediaFormat;

.field public mAudioTrackIndex:I

.field public mAudioTrackMime:Ljava/lang/String;

.field public mVideoTrackFormat:Landroid/media/MediaFormat;

.field public mVideoTrackIndex:I

.field public mVideoTrackMime:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$1;

    .prologue
    .line 26
    invoke-direct {p0}, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;-><init>()V

    return-void
.end method

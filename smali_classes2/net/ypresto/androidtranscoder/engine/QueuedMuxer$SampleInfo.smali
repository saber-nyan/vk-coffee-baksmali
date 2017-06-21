.class Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;
.super Ljava/lang/Object;
.source "QueuedMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleInfo"
.end annotation


# instance fields
.field private final mFlags:I

.field private final mPresentationTimeUs:J

.field private final mSampleType:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

.field private final mSize:I


# direct methods
.method private constructor <init>(Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 2
    .param p1, "sampleType"    # Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;
    .param p2, "size"    # I
    .param p3, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;->mSampleType:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    .line 127
    iput p2, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;->mSize:I

    .line 128
    iget-wide v0, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;->mPresentationTimeUs:J

    .line 129
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v0, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;->mFlags:I

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;ILandroid/media/MediaCodec$BufferInfo;Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/media/MediaCodec$BufferInfo;
    .param p4, "x3"    # Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$1;

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;-><init>(Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic access$000(Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;Landroid/media/MediaCodec$BufferInfo;I)V
    .locals 0
    .param p0, "x0"    # Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;
    .param p1, "x1"    # Landroid/media/MediaCodec$BufferInfo;
    .param p2, "x2"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;->writeToBufferInfo(Landroid/media/MediaCodec$BufferInfo;I)V

    return-void
.end method

.method static synthetic access$100(Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;)Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;
    .locals 1
    .param p0, "x0"    # Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;

    .prologue
    .line 119
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;->mSampleType:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    return-object v0
.end method

.method static synthetic access$200(Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;)I
    .locals 1
    .param p0, "x0"    # Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;

    .prologue
    .line 119
    iget v0, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;->mSize:I

    return v0
.end method

.method private writeToBufferInfo(Landroid/media/MediaCodec$BufferInfo;I)V
    .locals 7
    .param p1, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;
    .param p2, "offset"    # I

    .prologue
    .line 133
    iget v3, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;->mSize:I

    iget-wide v4, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;->mPresentationTimeUs:J

    iget v6, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;->mFlags:I

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 134
    return-void
.end method

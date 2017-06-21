.class public Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;
.super Ljava/lang/Object;
.source "PassThroughTrackTranscoder.java"

# interfaces
.implements Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mActualOutputFormat:Landroid/media/MediaFormat;

.field private mBuffer:Ljava/nio/ByteBuffer;

.field private final mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mBufferSize:I

.field private final mExtractor:Landroid/media/MediaExtractor;

.field private mIsEOS:Z

.field private final mMuxer:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;

.field private final mSampleType:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

.field private final mTrackIndex:I

.field private mWrittenPresentationTimeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/media/MediaExtractor;ILnet/ypresto/androidtranscoder/engine/QueuedMuxer;Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;)V
    .locals 3
    .param p1, "extractor"    # Landroid/media/MediaExtractor;
    .param p2, "trackIndex"    # I
    .param p3, "muxer"    # Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;
    .param p4, "sampleType"    # Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 40
    iput-object p1, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    .line 41
    iput p2, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mTrackIndex:I

    .line 42
    iput-object p3, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mMuxer:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;

    .line 43
    iput-object p4, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mSampleType:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    .line 45
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    iget v1, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mTrackIndex:I

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    .line 46
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mMuxer:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;

    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mSampleType:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1, v2}, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->setOutputFormat(Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;Landroid/media/MediaFormat;)V

    .line 47
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "max-input-size"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mBufferSize:I

    .line 48
    iget v0, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mBufferSize:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mBuffer:Ljava/nio/ByteBuffer;

    .line 49
    return-void
.end method


# virtual methods
.method public getDeterminedFormat()Landroid/media/MediaFormat;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public getWrittenPresentationTimeUs()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mWrittenPresentationTimeUs:J

    return-wide v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mIsEOS:Z

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public setup()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public stepPipeline()Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Assert"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 63
    iget-boolean v1, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mIsEOS:Z

    if-eqz v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v2

    .line 64
    :cond_1
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v7

    .line 65
    .local v7, "trackIndex":I
    if-gez v7, :cond_2

    .line 66
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 67
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 68
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mMuxer:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;

    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mSampleType:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    iget-object v4, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v2, v4, v5}, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->writeSampleData(Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 69
    iput-boolean v8, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mIsEOS:Z

    move v2, v8

    .line 70
    goto :goto_0

    .line 72
    :cond_2
    iget v1, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mTrackIndex:I

    if-ne v7, v1, :cond_0

    .line 74
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 75
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v4, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 76
    .local v3, "sampleSize":I
    sget-boolean v1, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget v1, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mBufferSize:I

    if-le v3, v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 77
    :cond_3
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    move v0, v8

    .line 78
    .local v0, "isKeyFrame":Z
    :goto_1
    if-eqz v0, :cond_5

    move v6, v8

    .line 79
    .local v6, "flags":I
    :goto_2
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-object v4, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 80
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mMuxer:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;

    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mSampleType:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    iget-object v4, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v2, v4, v5}, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->writeSampleData(Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 81
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v4, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mWrittenPresentationTimeUs:J

    .line 83
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    move v2, v8

    .line 84
    goto :goto_0

    .end local v0    # "isKeyFrame":Z
    .end local v6    # "flags":I
    :cond_4
    move v0, v2

    .line 77
    goto :goto_1

    .restart local v0    # "isKeyFrame":Z
    :cond_5
    move v6, v2

    .line 78
    goto :goto_2
.end method

.class public Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;
.super Ljava/lang/Object;
.source "VideoTrackTranscoder.java"

# interfaces
.implements Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;


# static fields
.field private static final DRAIN_STATE_CONSUMED:I = 0x2

.field private static final DRAIN_STATE_NONE:I = 0x0

.field private static final DRAIN_STATE_SHOULD_RETRY_IMMEDIATELY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VideoTrackTranscoder"


# instance fields
.field private mActualOutputFormat:Landroid/media/MediaFormat;

.field private final mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mDecoder:Landroid/media/MediaCodec;

.field private mDecoderInputBuffers:[Ljava/nio/ByteBuffer;

.field private mDecoderOutputSurfaceWrapper:Lnet/ypresto/androidtranscoder/engine/OutputSurface;

.field private mDecoderStarted:Z

.field private mEncoder:Landroid/media/MediaCodec;

.field private mEncoderInputSurfaceWrapper:Lnet/ypresto/androidtranscoder/engine/InputSurface;

.field private mEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mEncoderStarted:Z

.field private final mExtractor:Landroid/media/MediaExtractor;

.field private mIsDecoderEOS:Z

.field private mIsEncoderEOS:Z

.field private mIsExtractorEOS:Z

.field private final mMuxer:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;

.field private final mOutputFormat:Landroid/media/MediaFormat;

.field private final mTrackIndex:I

.field private mWrittenPresentationTimeUs:J


# direct methods
.method public constructor <init>(Landroid/media/MediaExtractor;ILandroid/media/MediaFormat;Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;)V
    .locals 1
    .param p1, "extractor"    # Landroid/media/MediaExtractor;
    .param p2, "trackIndex"    # I
    .param p3, "outputFormat"    # Landroid/media/MediaFormat;
    .param p4, "muxer"    # Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 55
    iput-object p1, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    .line 56
    iput p2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mTrackIndex:I

    .line 57
    iput-object p3, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mOutputFormat:Landroid/media/MediaFormat;

    .line 58
    iput-object p4, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mMuxer:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;

    .line 59
    return-void
.end method

.method private drainDecoder(J)I
    .locals 9
    .param p1, "timeoutUs"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 170
    iget-boolean v3, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mIsDecoderEOS:Z

    if-eqz v3, :cond_0

    .line 194
    :goto_0
    :pswitch_0
    return v2

    .line 171
    :cond_0
    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    iget-object v4, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v3, v4, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 172
    .local v1, "result":I
    packed-switch v1, :pswitch_data_0

    .line 179
    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 180
    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 181
    iput-boolean v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mIsDecoderEOS:Z

    .line 182
    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v2, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 184
    :cond_1
    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v3, :cond_3

    .line 187
    .local v0, "doRender":Z
    :goto_1
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 188
    if-eqz v0, :cond_2

    .line 189
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoderOutputSurfaceWrapper:Lnet/ypresto/androidtranscoder/engine/OutputSurface;

    invoke-virtual {v2}, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->awaitNewImage()V

    .line 190
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoderOutputSurfaceWrapper:Lnet/ypresto/androidtranscoder/engine/OutputSurface;

    invoke-virtual {v2}, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->drawImage()V

    .line 191
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoderInputSurfaceWrapper:Lnet/ypresto/androidtranscoder/engine/InputSurface;

    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lnet/ypresto/androidtranscoder/engine/InputSurface;->setPresentationTime(J)V

    .line 192
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoderInputSurfaceWrapper:Lnet/ypresto/androidtranscoder/engine/InputSurface;

    invoke-virtual {v2}, Lnet/ypresto/androidtranscoder/engine/InputSurface;->swapBuffers()Z

    .line 194
    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    .end local v0    # "doRender":Z
    :pswitch_1
    move v2, v0

    .line 177
    goto :goto_0

    :cond_3
    move v0, v2

    .line 184
    goto :goto_1

    .line 172
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drainEncoder(J)I
    .locals 9
    .param p1, "timeoutUs"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 198
    iget-boolean v1, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mIsEncoderEOS:Z

    if-eqz v1, :cond_0

    .line 229
    :goto_0
    :pswitch_0
    return v2

    .line 199
    :cond_0
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v3, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 200
    .local v0, "result":I
    packed-switch v0, :pswitch_data_0

    .line 213
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    if-nez v1, :cond_2

    .line 214
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not determine actual output format."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :pswitch_1
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    if-eqz v1, :cond_1

    .line 205
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Video output format changed twice."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_1
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    .line 207
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mMuxer:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;

    sget-object v2, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;->VIDEO:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v2, v3}, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->setOutputFormat(Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;Landroid/media/MediaFormat;)V

    move v2, v7

    .line 208
    goto :goto_0

    .line 210
    :pswitch_2
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

    move v2, v7

    .line 211
    goto :goto_0

    .line 217
    :cond_2
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 218
    iput-boolean v7, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mIsEncoderEOS:Z

    .line 219
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x0

    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move v3, v2

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 221
    :cond_3
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 223
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move v2, v7

    .line 224
    goto :goto_0

    .line 226
    :cond_4
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mMuxer:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;

    sget-object v3, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;->VIDEO:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    iget-object v4, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v0

    iget-object v5, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v3, v4, v5}, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->writeSampleData(Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 227
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v4, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mWrittenPresentationTimeUs:J

    .line 228
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 229
    const/4 v2, 0x2

    goto/16 :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drainExtractor(J)I
    .locals 9
    .param p1, "timeoutUs"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 150
    iget-boolean v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mIsExtractorEOS:Z

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v2

    .line 151
    :cond_1
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v8

    .line 152
    .local v8, "trackIndex":I
    if-ltz v8, :cond_2

    iget v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mTrackIndex:I

    if-ne v8, v0, :cond_0

    .line 155
    :cond_2
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 156
    .local v1, "result":I
    if-ltz v1, :cond_0

    .line 157
    if-gez v8, :cond_3

    .line 158
    iput-boolean v6, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mIsExtractorEOS:Z

    .line 159
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 162
    :cond_3
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v4, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 163
    .local v3, "sampleSize":I
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    move v7, v6

    .line 164
    .local v7, "isKeyFrame":Z
    :goto_1
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    iget-object v4, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    if-eqz v7, :cond_5

    :goto_2
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 165
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 166
    const/4 v2, 0x2

    goto :goto_0

    .end local v7    # "isKeyFrame":Z
    :cond_4
    move v7, v2

    .line 163
    goto :goto_1

    .restart local v7    # "isKeyFrame":Z
    :cond_5
    move v6, v2

    .line 164
    goto :goto_2
.end method


# virtual methods
.method public getDeterminedFormat()Landroid/media/MediaFormat;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public getWrittenPresentationTimeUs()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mWrittenPresentationTimeUs:J

    return-wide v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mIsEncoderEOS:Z

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoderOutputSurfaceWrapper:Lnet/ypresto/androidtranscoder/engine/OutputSurface;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoderOutputSurfaceWrapper:Lnet/ypresto/androidtranscoder/engine/OutputSurface;

    invoke-virtual {v0}, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->release()V

    .line 131
    iput-object v1, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoderOutputSurfaceWrapper:Lnet/ypresto/androidtranscoder/engine/OutputSurface;

    .line 133
    :cond_0
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoderInputSurfaceWrapper:Lnet/ypresto/androidtranscoder/engine/InputSurface;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoderInputSurfaceWrapper:Lnet/ypresto/androidtranscoder/engine/InputSurface;

    invoke-virtual {v0}, Lnet/ypresto/androidtranscoder/engine/InputSurface;->release()V

    .line 135
    iput-object v1, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoderInputSurfaceWrapper:Lnet/ypresto/androidtranscoder/engine/InputSurface;

    .line 137
    :cond_1
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 138
    iget-boolean v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoderStarted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 139
    :cond_2
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 140
    iput-object v1, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    .line 142
    :cond_3
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_5

    .line 143
    iget-boolean v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoderStarted:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 144
    :cond_4
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 145
    iput-object v1, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    .line 147
    :cond_5
    return-void
.end method

.method public setup()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 63
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    iget v3, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mTrackIndex:I

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 65
    :try_start_0
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mOutputFormat:Landroid/media/MediaFormat;

    const-string/jumbo v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mOutputFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 70
    new-instance v2, Lnet/ypresto/androidtranscoder/engine/InputSurface;

    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/ypresto/androidtranscoder/engine/InputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoderInputSurfaceWrapper:Lnet/ypresto/androidtranscoder/engine/InputSurface;

    .line 71
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoderInputSurfaceWrapper:Lnet/ypresto/androidtranscoder/engine/InputSurface;

    invoke-virtual {v2}, Lnet/ypresto/androidtranscoder/engine/InputSurface;->makeCurrent()V

    .line 72
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 73
    iput-boolean v4, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoderStarted:Z

    .line 74
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 76
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    iget v3, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mTrackIndex:I

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    .line 77
    .local v1, "inputFormat":Landroid/media/MediaFormat;
    const-string/jumbo v2, "rotation-degrees"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const-string/jumbo v2, "rotation-degrees"

    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 83
    :cond_0
    new-instance v2, Lnet/ypresto/androidtranscoder/engine/OutputSurface;

    invoke-direct {v2}, Lnet/ypresto/androidtranscoder/engine/OutputSurface;-><init>()V

    iput-object v2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoderOutputSurfaceWrapper:Lnet/ypresto/androidtranscoder/engine/OutputSurface;

    .line 85
    :try_start_1
    const-string/jumbo v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoderOutputSurfaceWrapper:Lnet/ypresto/androidtranscoder/engine/OutputSurface;

    invoke-virtual {v3}, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 90
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 91
    iput-boolean v4, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoderStarted:Z

    .line 92
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->mDecoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 93
    return-void

    .line 66
    .end local v1    # "inputFormat":Landroid/media/MediaFormat;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 86
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "inputFormat":Landroid/media/MediaFormat;
    :catch_1
    move-exception v0

    .line 87
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public stepPipeline()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 102
    const/4 v0, 0x0

    .line 105
    .local v0, "busy":Z
    :goto_0
    invoke-direct {p0, v4, v5}, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->drainEncoder(J)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    invoke-direct {p0, v4, v5}, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->drainDecoder(J)I

    move-result v1

    .line 108
    .local v1, "status":I
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 110
    :cond_1
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 111
    :goto_1
    invoke-direct {p0, v4, v5}, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;->drainExtractor(J)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 113
    :cond_2
    return v0
.end method

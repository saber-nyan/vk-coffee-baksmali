.class public Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;
.super Ljava/lang/Object;
.source "MediaTranscoderEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;
    }
.end annotation


# static fields
.field private static final PROGRESS_INTERVAL_STEPS:J = 0xaL

.field private static final PROGRESS_UNKNOWN:D = -1.0

.field private static final SLEEP_TO_WAIT_TRACK_TRANSCODERS:J = 0xaL

.field private static final TAG:Ljava/lang/String; = "MediaTranscoderEngine"


# instance fields
.field private mAudioTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

.field private mDurationUs:J

.field private mExtractor:Landroid/media/MediaExtractor;

.field private mInputFileDescriptor:Ljava/io/FileDescriptor;

.field private mMuxer:Landroid/media/MediaMuxer;

.field private volatile mProgress:D

.field private mProgressCallback:Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;

.field private mVideoTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;)Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;
    .locals 1
    .param p0, "x0"    # Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;

    .prologue
    .line 34
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    return-object v0
.end method

.method static synthetic access$100(Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;)Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;
    .locals 1
    .param p0, "x0"    # Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;

    .prologue
    .line 34
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    return-object v0
.end method

.method private runPipelines()V
    .locals 18

    .prologue
    .line 184
    const-wide/16 v4, 0x0

    .line 185
    .local v4, "loopCount":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mDurationUs:J

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-gtz v9, :cond_0

    .line 186
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 187
    .local v6, "progress":D
    move-object/from16 v0, p0

    iput-wide v6, v0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mProgress:D

    .line 188
    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mProgressCallback:Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mProgressCallback:Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;

    invoke-interface {v9, v6, v7}, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;->onProgress(D)V

    .line 190
    .end local v6    # "progress":D
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    invoke-interface {v9}, Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    invoke-interface {v9}, Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;->isFinished()Z

    move-result v9

    if-nez v9, :cond_7

    .line 191
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    invoke-interface {v9}, Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;->stepPipeline()Z

    move-result v9

    if-nez v9, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    .line 192
    invoke-interface {v9}, Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;->stepPipeline()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_2
    const/4 v8, 0x1

    .line 193
    .local v8, "stepped":Z
    :goto_1
    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    .line 194
    move-object/from16 v0, p0

    iget-wide v12, v0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mDurationUs:J

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-lez v9, :cond_3

    const-wide/16 v12, 0xa

    rem-long v12, v4, v12

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-nez v9, :cond_3

    .line 195
    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    invoke-interface {v9}, Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_5

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 196
    .local v10, "videoProgress":D
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    invoke-interface {v9}, Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_6

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 197
    .local v2, "audioProgress":D
    :goto_3
    add-double v12, v10, v2

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v6, v12, v14

    .line 198
    .restart local v6    # "progress":D
    move-object/from16 v0, p0

    iput-wide v6, v0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mProgress:D

    .line 199
    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mProgressCallback:Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mProgressCallback:Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;

    invoke-interface {v9, v6, v7}, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;->onProgress(D)V

    .line 201
    .end local v2    # "audioProgress":D
    .end local v6    # "progress":D
    .end local v10    # "videoProgress":D
    :cond_3
    if-nez v8, :cond_0

    .line 203
    const-wide/16 v12, 0xa

    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v9

    goto :goto_0

    .line 192
    .end local v8    # "stepped":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 195
    .restart local v8    # "stepped":Z
    :cond_5
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    invoke-interface {v9}, Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;->getWrittenPresentationTimeUs()J

    move-result-wide v14

    long-to-double v14, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mDurationUs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    goto :goto_2

    .line 196
    .restart local v10    # "videoProgress":D
    :cond_6
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    invoke-interface {v9}, Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;->getWrittenPresentationTimeUs()J

    move-result-wide v14

    long-to-double v14, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mDurationUs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    goto :goto_3

    .line 209
    .end local v8    # "stepped":Z
    .end local v10    # "videoProgress":D
    :cond_7
    return-void
.end method

.method private setupMetadata()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 131
    .local v1, "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mInputFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 133
    const/16 v3, 0x18

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "rotationString":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/MediaMuxer;->setOrientationHint(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :goto_0
    const/16 v3, 0x9

    :try_start_1
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mDurationUs:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    :goto_1
    const-string/jumbo v3, "MediaTranscoderEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Duration (us): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mDurationUs:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mDurationUs:J

    goto :goto_1

    .line 136
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private setupTrackTranscoders(Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;)V
    .locals 8
    .param p1, "formatStrategy"    # Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;

    .prologue
    .line 153
    iget-object v4, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    invoke-static {v4}, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils;->getFirstVideoAndAudioTrack(Landroid/media/MediaExtractor;)Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;

    move-result-object v2

    .line 154
    .local v2, "trackResult":Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;
    iget-object v4, v2, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackFormat:Landroid/media/MediaFormat;

    invoke-interface {p1, v4}, Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;->createVideoOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object v3

    .line 155
    .local v3, "videoOutputFormat":Landroid/media/MediaFormat;
    iget-object v4, v2, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackFormat:Landroid/media/MediaFormat;

    invoke-interface {p1, v4}, Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;->createAudioOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object v0

    .line 156
    .local v0, "audioOutputFormat":Landroid/media/MediaFormat;
    if-nez v3, :cond_0

    if-nez v0, :cond_0

    .line 157
    new-instance v4, Lnet/ypresto/androidtranscoder/engine/InvalidOutputFormatException;

    const-string/jumbo v5, "MediaFormatStrategy returned pass-through for both video and audio. No transcoding is necessary."

    invoke-direct {v4, v5}, Lnet/ypresto/androidtranscoder/engine/InvalidOutputFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 159
    :cond_0
    new-instance v1, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;

    iget-object v4, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    new-instance v5, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$1;

    invoke-direct {v5, p0}, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$1;-><init>(Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;)V

    invoke-direct {v1, v4, v5}, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;-><init>(Landroid/media/MediaMuxer;Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$Listener;)V

    .line 167
    .local v1, "queuedMuxer":Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;
    if-nez v3, :cond_1

    .line 168
    new-instance v4, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;

    iget-object v5, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    iget v6, v2, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    sget-object v7, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;->VIDEO:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    invoke-direct {v4, v5, v6, v1, v7}, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;-><init>(Landroid/media/MediaExtractor;ILnet/ypresto/androidtranscoder/engine/QueuedMuxer;Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;)V

    iput-object v4, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    .line 172
    :goto_0
    iget-object v4, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    invoke-interface {v4}, Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;->setup()V

    .line 173
    if-nez v0, :cond_2

    .line 174
    new-instance v4, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;

    iget-object v5, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    iget v6, v2, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackIndex:I

    sget-object v7, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;->AUDIO:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    invoke-direct {v4, v5, v6, v1, v7}, Lnet/ypresto/androidtranscoder/engine/PassThroughTrackTranscoder;-><init>(Landroid/media/MediaExtractor;ILnet/ypresto/androidtranscoder/engine/QueuedMuxer;Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;)V

    iput-object v4, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    .line 178
    iget-object v4, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    invoke-interface {v4}, Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;->setup()V

    .line 179
    iget-object v4, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    iget v5, v2, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    invoke-virtual {v4, v5}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 180
    iget-object v4, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    iget v5, v2, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackIndex:I

    invoke-virtual {v4, v5}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 181
    return-void

    .line 170
    :cond_1
    new-instance v4, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;

    iget-object v5, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    iget v6, v2, Lnet/ypresto/androidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    invoke-direct {v4, v5, v6, v3, v1}, Lnet/ypresto/androidtranscoder/engine/VideoTrackTranscoder;-><init>(Landroid/media/MediaExtractor;ILandroid/media/MediaFormat;Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;)V

    iput-object v4, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    goto :goto_0

    .line 176
    :cond_2
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "Transcoding audio tracks currently not supported."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public getProgress()D
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mProgress:D

    return-wide v0
.end method

.method public getProgressCallback()Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mProgressCallback:Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;

    return-object v0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;

    .prologue
    .line 55
    iput-object p1, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mInputFileDescriptor:Ljava/io/FileDescriptor;

    .line 56
    return-void
.end method

.method public setProgressCallback(Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;)V
    .locals 0
    .param p1, "progressCallback"    # Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;

    .prologue
    .line 63
    iput-object p1, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mProgressCallback:Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;

    .line 64
    return-void
.end method

.method public transcodeVideo(Ljava/lang/String;Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;)V
    .locals 4
    .param p1, "outputPath"    # Ljava/lang/String;
    .param p2, "formatStrategy"    # Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Output path cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mInputFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v1, :cond_1

    .line 88
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Data source is not set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_1
    :try_start_0
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v1, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    .line 93
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mInputFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 94
    new-instance v1, Landroid/media/MediaMuxer;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    .line 95
    invoke-direct {p0}, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->setupMetadata()V

    .line 96
    invoke-direct {p0, p2}, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->setupTrackTranscoders(Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;)V

    .line 97
    invoke-direct {p0}, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->runPipelines()V

    .line 98
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :try_start_1
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    if-eqz v1, :cond_2

    .line 102
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    invoke-interface {v1}, Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;->release()V

    .line 103
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    .line 105
    :cond_2
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    if-eqz v1, :cond_3

    .line 106
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    invoke-interface {v1}, Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;->release()V

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    .line 109
    :cond_3
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_4

    .line 110
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 111
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    :cond_4
    :try_start_2
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_5

    .line 120
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 127
    :cond_5
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/Error;

    const-string/jumbo v2, "Could not shutdown extractor, codecs and muxer pipeline."

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 123
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 124
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "MediaTranscoderEngine"

    const-string/jumbo v2, "Failed to release muxer."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 100
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    .line 101
    :try_start_3
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    if-eqz v2, :cond_6

    .line 102
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    invoke-interface {v2}, Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;->release()V

    .line 103
    const/4 v2, 0x0

    iput-object v2, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    .line 105
    :cond_6
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    if-eqz v2, :cond_7

    .line 106
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    invoke-interface {v2}, Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;->release()V

    .line 107
    const/4 v2, 0x0

    iput-object v2, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    .line 109
    :cond_7
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    if-eqz v2, :cond_8

    .line 110
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    .line 111
    const/4 v2, 0x0

    iput-object v2, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 119
    :cond_8
    :try_start_4
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v2, :cond_9

    .line 120
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->release()V

    .line 121
    const/4 v2, 0x0

    iput-object v2, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 125
    :cond_9
    :goto_1
    throw v1

    .line 113
    :catch_2
    move-exception v0

    .line 116
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/Error;

    const-string/jumbo v2, "Could not shutdown extractor, codecs and muxer pipeline."

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 123
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 124
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "MediaTranscoderEngine"

    const-string/jumbo v3, "Failed to release muxer."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

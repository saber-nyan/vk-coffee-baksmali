.class public Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;
.super Ljava/lang/Object;
.source "QueuedMuxer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$Listener;,
        Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;,
        Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "QueuedMuxer"


# instance fields
.field private mAudioFormat:Landroid/media/MediaFormat;

.field private mAudioTrackIndex:I

.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mListener:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$Listener;

.field private final mMuxer:Landroid/media/MediaMuxer;

.field private final mSampleInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStarted:Z

.field private mVideoFormat:Landroid/media/MediaFormat;

.field private mVideoTrackIndex:I


# direct methods
.method public constructor <init>(Landroid/media/MediaMuxer;Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$Listener;)V
    .locals 1
    .param p1, "muxer"    # Landroid/media/MediaMuxer;
    .param p2, "listener"    # Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$Listener;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mMuxer:Landroid/media/MediaMuxer;

    .line 46
    iput-object p2, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mListener:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$Listener;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mSampleInfoList:Ljava/util/List;

    .line 48
    return-void
.end method

.method private getTrackIndexForSampleType(Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;)I
    .locals 2
    .param p1, "sampleType"    # Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    .prologue
    .line 107
    sget-object v0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$1;->$SwitchMap$net$ypresto$androidtranscoder$engine$QueuedMuxer$SampleType:[I

    invoke-virtual {p1}, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 113
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 109
    :pswitch_0
    iget v0, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mVideoTrackIndex:I

    .line 111
    :goto_0
    return v0

    :pswitch_1
    iget v0, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mAudioTrackIndex:I

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onSetOutputFormat()V
    .locals 7

    .prologue
    .line 65
    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mVideoFormat:Landroid/media/MediaFormat;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mAudioFormat:Landroid/media/MediaFormat;

    if-nez v3, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mListener:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$Listener;

    invoke-interface {v3}, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$Listener;->onDetermineOutputFormat()V

    .line 68
    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v4, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mVideoFormat:Landroid/media/MediaFormat;

    invoke-virtual {v3, v4}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    iput v3, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mVideoTrackIndex:I

    .line 69
    const-string/jumbo v3, "QueuedMuxer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Added track #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mVideoTrackIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mVideoFormat:Landroid/media/MediaFormat;

    const-string/jumbo v6, "mime"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to muxer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v4, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mAudioFormat:Landroid/media/MediaFormat;

    invoke-virtual {v3, v4}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    iput v3, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mAudioTrackIndex:I

    .line 71
    const-string/jumbo v3, "QueuedMuxer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Added track #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mAudioTrackIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mAudioFormat:Landroid/media/MediaFormat;

    const-string/jumbo v6, "mime"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to muxer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3}, Landroid/media/MediaMuxer;->start()V

    .line 73
    const/4 v3, 0x1

    iput-boolean v3, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mStarted:Z

    .line 75
    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_2

    .line 76
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 78
    :cond_2
    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 79
    const-string/jumbo v3, "QueuedMuxer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Output format determined, writing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mSampleInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " samples / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes to muxer."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 82
    .local v0, "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    const/4 v1, 0x0

    .line 83
    .local v1, "offset":I
    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mSampleInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;

    .line 84
    .local v2, "sampleInfo":Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;
    invoke-static {v2, v0, v1}, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;->access$000(Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;Landroid/media/MediaCodec$BufferInfo;I)V

    .line 85
    iget-object v4, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-static {v2}, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;->access$100(Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;)Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    move-result-object v5

    invoke-direct {p0, v5}, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->getTrackIndexForSampleType(Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;)I

    move-result v5

    iget-object v6, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5, v6, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 86
    invoke-static {v2}, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;->access$200(Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;)I

    move-result v4

    add-int/2addr v1, v4

    .line 87
    goto :goto_1

    .line 88
    .end local v2    # "sampleInfo":Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;
    :cond_3
    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mSampleInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 89
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    goto/16 :goto_0
.end method


# virtual methods
.method public setOutputFormat(Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;Landroid/media/MediaFormat;)V
    .locals 2
    .param p1, "sampleType"    # Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 51
    sget-object v0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$1;->$SwitchMap$net$ypresto$androidtranscoder$engine$QueuedMuxer$SampleType:[I

    invoke-virtual {p1}, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :pswitch_0
    iput-object p2, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mVideoFormat:Landroid/media/MediaFormat;

    .line 61
    :goto_0
    invoke-direct {p0}, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->onSetOutputFormat()V

    .line 62
    return-void

    .line 56
    :pswitch_1
    iput-object p2, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mAudioFormat:Landroid/media/MediaFormat;

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public writeSampleData(Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 4
    .param p1, "sampleType"    # Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;
    .param p2, "byteBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 93
    iget-boolean v0, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mStarted:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-direct {p0, p1}, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->getTrackIndexForSampleType(Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 104
    :goto_0
    return-void

    .line 97
    :cond_0
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 98
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    .line 100
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 102
    :cond_1
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 103
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;->mSampleInfoList:Ljava/util/List;

    new-instance v1, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, p3, v3}, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleInfo;-><init>(Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;ILandroid/media/MediaCodec$BufferInfo;Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.class Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;
.super Ljava/lang/Object;
.source "LowLevelAudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Decoder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p2, "x1"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$1;

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;-><init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 68

    .prologue
    .line 489
    const/4 v4, 0x4

    new-array v0, v4, [B

    move-object/from16 v29, v0

    fill-array-data v29, :array_0

    .line 490
    .local v29, "frameHeader":[B
    const/16 v25, 0x1

    .line 491
    .local v25, "firstFrame":Z
    const/16 v20, 0x0

    .line 492
    .local v20, "codecStarted":Z
    const/16 v64, 0x0

    .line 494
    .local v64, "wasFirstFrame":Z
    const/16 v23, -0x1

    .line 495
    .local v23, "fileMpegVersion":I
    const/16 v21, -0x1

    .line 496
    .local v21, "fileLayer":I
    const/16 v24, -0x1

    .line 497
    .local v24, "fileSampleRate":I
    const/16 v22, 0x0

    .line 498
    .local v22, "fileMono":Z
    const/16 v41, -0x1

    .line 499
    .local v41, "invalidFrameMpegVersion":I
    const/16 v39, -0x1

    .line 500
    .local v39, "invalidFrameLayer":I
    const/16 v42, -0x1

    .line 501
    .local v42, "invalidFrameSampleRate":I
    const/16 v40, 0x0

    .line 502
    .local v40, "invalidFrameMono":Z
    const/16 v43, 0x0

    .line 504
    .local v43, "invalidFrameSeqCount":I
    const/16 v35, 0x0

    .line 505
    .local v35, "in":[Ljava/nio/ByteBuffer;
    const/16 v49, 0x0

    .line 506
    .local v49, "out":[Ljava/nio/ByteBuffer;
    const/16 v4, 0x2800

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 507
    .local v17, "buf":[B
    const/16 v4, 0x2800

    new-array v0, v4, [B

    move-object/from16 v19, v0

    .line 508
    .local v19, "codecBuffer":[B
    const-wide/16 v12, 0x0

    .line 509
    .local v12, "sampleTime":J
    const/16 v30, 0x0

    .line 510
    .local v30, "frameIndex":I
    new-instance v37, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v37 .. v37}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 511
    .local v37, "info":Landroid/media/MediaCodec$BufferInfo;
    const/16 v26, 0x0

    .line 513
    .local v26, "firstFrameOffset":I
    const/16 v4, -0x13

    :try_start_0
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 514
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    const-string/jumbo v5, "audio/mpeg"

    invoke-static {v5}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2202(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;

    .line 515
    const/16 v60, 0x0

    .line 516
    .local v60, "skipped":I
    const/16 v32, 0x0

    .line 518
    .local v32, "headerBytesRemain":I
    :cond_0
    :goto_0
    const/16 v58, 0x0

    .line 519
    .local v58, "seeked":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$400(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2300(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 520
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$400(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2400(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)F

    move-result v5

    div-float v54, v4, v5

    .line 521
    .local v54, "pos":F
    const-string/jumbo v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "seek to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-static {}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2500()[[I

    move-result-object v4

    aget-object v4, v4, v23

    aget v4, v4, v21

    int-to-double v4, v4

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v66, v0

    div-double v4, v4, v66

    const-wide v66, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, v66

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v28, v0

    .line 524
    .local v28, "frameDuration":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2600(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)[B

    move-result-object v4

    if-eqz v4, :cond_3

    .line 526
    const/high16 v4, 0x42c60000    # 99.0f

    mul-float v4, v4, v54

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v0, v4

    move/from16 v36, v0

    .line 527
    .local v36, "index":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2600(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)[B

    move-result-object v4

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v66, v0

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->floor(D)D

    move-result-wide v66

    move-wide/from16 v0, v66

    double-to-int v5, v0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v55, v4, v5

    .line 528
    .local v55, "pos1":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2600(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)[B

    move-result-object v4

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v66, v0

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v66

    move-wide/from16 v0, v66

    double-to-int v5, v0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v56, v4, v5

    .line 529
    .local v56, "pos2":F
    move/from16 v0, v36

    float-to-double v4, v0

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v66, v0

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->floor(D)D

    move-result-wide v66

    sub-double v4, v4, v66

    double-to-float v0, v4

    move/from16 v36, v0

    .line 530
    mul-float v4, v55, v36

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, v5, v36

    mul-float v5, v5, v56

    add-float v54, v4, v5

    .line 531
    const-string/jumbo v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "VBR seek to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v54

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int v47, v26, v4

    .line 533
    .local v47, "newOffset":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$400(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v12, v4

    .line 538
    .end local v36    # "index":F
    .end local v55    # "pos1":F
    .end local v56    # "pos2":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->isOffsetDownloaded(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 539
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    move/from16 v0, v47

    invoke-static {v4, v0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2800(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;I)V

    .line 542
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->setReadOffset(I)V

    .line 543
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$100(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$400(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v4

    int-to-float v4, v4

    move/from16 v0, v28

    int-to-float v5, v0

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v30, v0

    .line 545
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2200(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/media/MediaCodec;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaCodec;->flush()V

    .line 546
    const/16 v58, 0x1

    .line 547
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    const/4 v5, -0x1

    invoke-static {v4, v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$402(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;I)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 550
    .end local v28    # "frameDuration":I
    .end local v47    # "newOffset":I
    .end local v54    # "pos":F
    :cond_2
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->isEndOfStream()Z

    move-result v4

    if-nez v4, :cond_9

    .line 551
    if-lez v32, :cond_4

    .line 552
    add-int/lit8 v32, v32, -0x1

    .line 553
    const/16 v33, 0x0

    .local v33, "i":I
    :goto_3
    move-object/from16 v0, v29

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v33

    if-ge v0, v4, :cond_5

    .line 554
    add-int/lit8 v4, v33, 0x1

    aget-byte v4, v29, v4

    aput-byte v4, v29, v33
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 553
    add-int/lit8 v33, v33, 0x1

    goto :goto_3

    .line 535
    .end local v33    # "i":I
    .restart local v28    # "frameDuration":I
    .restart local v54    # "pos":F
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v54

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int v47, v26, v4

    .line 536
    .restart local v47    # "newOffset":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$400(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v12, v4

    goto/16 :goto_1

    .line 557
    .end local v28    # "frameDuration":I
    .end local v47    # "newOffset":I
    .end local v54    # "pos":F
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v4, v0, v5, v7}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->read([BII)V

    .line 559
    :cond_5
    const/4 v4, 0x0

    aget-byte v4, v29, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_b

    .line 560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v4, v0, v5, v7}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->read([BII)V

    .line 561
    add-int/lit8 v32, v32, 0x1

    .line 562
    const/4 v4, 0x1

    aget-byte v4, v29, v4

    and-int/lit16 v4, v4, 0xe0

    const/16 v5, 0xe0

    if-ne v4, v5, :cond_c

    .line 563
    if-eqz v25, :cond_6

    .line 564
    const/16 v64, 0x1

    .line 566
    :cond_6
    const/16 v25, 0x0

    .line 568
    if-lez v60, :cond_7

    .line 569
    const-string/jumbo v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Skipped "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " before next frame"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_7
    const/16 v60, 0x0

    .line 577
    if-eqz v64, :cond_8

    .line 578
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->getReadOffset()I

    move-result v4

    add-int/lit8 v26, v4, -0x2

    .line 580
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v7, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v4, v0, v5, v7}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->read([BII)V

    .line 581
    add-int/lit8 v32, v32, 0x2

    .line 582
    const/4 v4, 0x2

    aget-byte v4, v29, v4
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    and-int/lit16 v4, v4, 0xf0

    const/16 v5, 0xf0

    if-eq v4, v5, :cond_2

    .line 621
    :cond_9
    :goto_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->isEndOfStream()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 622
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "End of stream!"

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3000(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->seek(I)V
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 825
    .end local v32    # "headerBytesRemain":I
    .end local v58    # "seeked":Z
    .end local v60    # "skipped":I
    :catch_0
    move-exception v65

    .line 826
    .local v65, "x":Ljava/io/EOFException;
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "End of stream!"

    move-object/from16 v0, v65

    invoke-static {v4, v5, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3100(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder$4;-><init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 838
    .end local v65    # "x":Ljava/io/EOFException;
    :cond_a
    :goto_5
    return-void

    .line 587
    .restart local v32    # "headerBytesRemain":I
    .restart local v58    # "seeked":Z
    .restart local v60    # "skipped":I
    :cond_b
    if-eqz v25, :cond_c

    const/4 v4, 0x0

    :try_start_5
    aget-byte v4, v29, v4

    const/16 v5, 0x49

    if-ne v4, v5, :cond_c

    .line 588
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v4, v0, v5, v7}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->read([BII)V

    .line 589
    const/4 v4, 0x0

    aget-byte v4, v29, v4

    const/16 v5, 0x44

    if-ne v4, v5, :cond_c

    const/4 v4, 0x1

    aget-byte v4, v29, v4

    const/16 v5, 0x33

    if-ne v4, v5, :cond_c

    .line 590
    const/16 v4, 0xa

    new-array v0, v4, [B

    move-object/from16 v61, v0

    .line 591
    .local v61, "tagHeader":[B
    const/4 v4, 0x0

    const/16 v5, 0x49

    aput-byte v5, v61, v4

    .line 592
    const/4 v4, 0x1

    const/16 v5, 0x44

    aput-byte v5, v61, v4

    .line 593
    const/4 v4, 0x2

    const/16 v5, 0x33

    aput-byte v5, v61, v4

    .line 594
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v7, 0x7

    move-object/from16 v0, v61

    invoke-virtual {v4, v0, v5, v7}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->read([BII)V

    .line 595
    const/4 v4, 0x6

    aget-byte v4, v61, v4

    and-int/lit8 v4, v4, 0x7f

    shl-int/lit8 v4, v4, 0x15

    const/4 v5, 0x7

    aget-byte v5, v61, v5

    and-int/lit8 v5, v5, 0x7f

    shl-int/lit8 v5, v5, 0xe

    or-int/2addr v4, v5

    const/16 v5, 0x8

    aget-byte v5, v61, v5

    and-int/lit8 v5, v5, 0x7f

    shl-int/lit8 v5, v5, 0x7

    or-int/2addr v4, v5

    const/16 v5, 0x9

    aget-byte v5, v61, v5

    and-int/lit8 v5, v5, 0x7f

    or-int v59, v4, v5

    .line 596
    .local v59, "size":I
    const-string/jumbo v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "found id3 tag of size "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v59

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const v4, 0xfa000

    move/from16 v0, v59

    if-ge v0, v4, :cond_e

    .line 598
    add-int/lit8 v4, v59, 0xa

    new-array v0, v4, [B

    move-object/from16 v34, v0

    .line 599
    .local v34, "id3":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v4

    const/16 v5, 0xa

    move-object/from16 v0, v34

    move/from16 v1, v59

    invoke-virtual {v4, v0, v5, v1}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->read([BII)V

    .line 600
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xa

    move-object/from16 v0, v61

    move-object/from16 v1, v34

    invoke-static {v0, v4, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 601
    new-instance v53, Lcom/vkcoffee/android/cache/ID3Parser;

    move-object/from16 v0, v53

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/cache/ID3Parser;-><init>([B)V

    .line 602
    .local v53, "parser":Lcom/vkcoffee/android/cache/ID3Parser;
    invoke-virtual/range {v53 .. v53}, Lcom/vkcoffee/android/cache/ID3Parser;->getAlbumArt()[B

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual/range {v53 .. v53}, Lcom/vkcoffee/android/cache/ID3Parser;->getAlbumArt()[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1800(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v7}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2900(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v7

    invoke-static {v4, v5, v7}, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->saveCovers([BII)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 603
    new-instance v38, Landroid/content/Intent;

    const-string/jumbo v4, "com.vkcoffee.android.ALBUM_ART_AVAILABLE"

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    .local v38, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "aid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2900(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 605
    const-string/jumbo v4, "oid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1800(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 606
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v5, "com.vkcoffee.android.permission.ACCESS_DATA"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 616
    .end local v34    # "id3":[B
    .end local v38    # "intent":Landroid/content/Intent;
    .end local v53    # "parser":Lcom/vkcoffee/android/cache/ID3Parser;
    .end local v59    # "size":I
    .end local v61    # "tagHeader":[B
    :cond_c
    :goto_6
    add-int/lit8 v60, v60, 0x1

    goto/16 :goto_2

    .line 608
    .restart local v34    # "id3":[B
    .restart local v53    # "parser":Lcom/vkcoffee/android/cache/ID3Parser;
    .restart local v59    # "size":I
    .restart local v61    # "tagHeader":[B
    :cond_d
    invoke-virtual/range {v53 .. v53}, Lcom/vkcoffee/android/cache/ID3Parser;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v53 .. v53}, Lcom/vkcoffee/android/cache/ID3Parser;->getAlbum()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v7}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1800(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v8}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2900(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v8

    invoke-static {v4, v5, v7, v8}, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->getCoversFromDiscogs(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_6

    .line 618
    .end local v34    # "id3":[B
    .end local v53    # "parser":Lcom/vkcoffee/android/cache/ID3Parser;
    .end local v59    # "size":I
    .end local v61    # "tagHeader":[B
    :catch_1
    move-exception v4

    goto/16 :goto_4

    .line 611
    .restart local v59    # "size":I
    .restart local v61    # "tagHeader":[B
    :cond_e
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "id3 tag is too big, skipping"

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v4

    add-int/lit8 v5, v59, 0xa

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->setReadOffset(I)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    .line 835
    .end local v32    # "headerBytesRemain":I
    .end local v58    # "seeked":Z
    .end local v59    # "size":I
    .end local v60    # "skipped":I
    .end local v61    # "tagHeader":[B
    :catch_2
    move-exception v65

    .line 836
    .local v65, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    move-object/from16 v0, v65

    invoke-static {v4, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 627
    .end local v65    # "x":Ljava/lang/Exception;
    .restart local v32    # "headerBytesRemain":I
    .restart local v58    # "seeked":Z
    .restart local v60    # "skipped":I
    :cond_f
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3100(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder$1;-><init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    .line 637
    :cond_10
    const/4 v4, 0x0

    aget-byte v4, v29, v4

    if-nez v4, :cond_11

    .line 638
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Failed to find frame header!"

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 641
    :cond_11
    const/4 v4, 0x1

    aget-byte v4, v29, v4

    shr-int/lit8 v4, v4, 0x3

    and-int/lit8 v46, v4, 0x3

    .line 642
    .local v46, "mpegVersion":I
    const/4 v4, 0x1

    aget-byte v4, v29, v4

    shr-int/lit8 v4, v4, 0x1

    and-int/lit8 v44, v4, 0x3

    .line 643
    .local v44, "layerIndex":I
    const/4 v4, 0x1

    aget-byte v4, v29, v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_13

    const/16 v31, 0x1

    .line 644
    .local v31, "hasCrc":Z
    :goto_7
    const/4 v4, 0x2

    aget-byte v4, v29, v4

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v16, v4, 0xf

    .line 645
    .local v16, "bitrateIndex":I
    const/4 v4, 0x2

    aget-byte v4, v29, v4

    shr-int/lit8 v4, v4, 0x2

    and-int/lit8 v57, v4, 0x3

    .line 646
    .local v57, "sampleRateIndex":I
    const/4 v4, 0x2

    aget-byte v4, v29, v4

    shr-int/lit8 v4, v4, 0x1

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    const/16 v51, 0x1

    .line 647
    .local v51, "padding":Z
    :goto_8
    const/4 v4, 0x3

    aget-byte v4, v29, v4

    shr-int/lit8 v4, v4, 0x6

    and-int/lit8 v18, v4, 0x3

    .line 649
    .local v18, "channelMode":I
    if-eqz v44, :cond_12

    const/4 v4, 0x1

    move/from16 v0, v46

    if-eq v0, v4, :cond_12

    const/4 v4, 0x3

    move/from16 v0, v57

    if-eq v0, v4, :cond_12

    const/16 v4, 0xf

    move/from16 v0, v16

    if-eq v0, v4, :cond_12

    if-nez v16, :cond_15

    .line 650
    :cond_12
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Skipping invalid frame!"

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 643
    .end local v16    # "bitrateIndex":I
    .end local v18    # "channelMode":I
    .end local v31    # "hasCrc":Z
    .end local v51    # "padding":Z
    .end local v57    # "sampleRateIndex":I
    :cond_13
    const/16 v31, 0x0

    goto :goto_7

    .line 646
    .restart local v16    # "bitrateIndex":I
    .restart local v31    # "hasCrc":Z
    .restart local v57    # "sampleRateIndex":I
    :cond_14
    const/16 v51, 0x0

    goto :goto_8

    .line 653
    .restart local v18    # "channelMode":I
    .restart local v51    # "padding":Z
    :cond_15
    invoke-static {}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3200()[[I

    move-result-object v4

    aget-object v4, v4, v46

    aget v6, v4, v57

    .line 654
    .local v6, "sampleRate":I
    invoke-static {}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3300()[[[I

    move-result-object v4

    aget-object v4, v4, v46

    aget-object v4, v4, v44

    aget v4, v4, v16

    mul-int/lit16 v15, v4, 0x3e8

    .line 655
    .local v15, "bitrate":I
    if-eqz v51, :cond_21

    const/16 v52, 0x1

    .line 656
    .local v52, "paddingSize":I
    :goto_9
    invoke-static {}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3400()[[I

    move-result-object v4

    aget-object v4, v4, v46

    aget v4, v4, v44

    mul-int/2addr v4, v15

    div-int/2addr v4, v6

    add-int v4, v4, v52

    invoke-static {}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3500()[I

    move-result-object v5

    aget v5, v5, v44
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    mul-int v11, v4, v5

    .line 657
    .local v11, "frameSize":I
    if-eqz v64, :cond_23

    .line 658
    move/from16 v23, v46

    .line 659
    move/from16 v21, v44

    .line 660
    move/from16 v24, v6

    .line 661
    const/4 v4, 0x3

    move/from16 v0, v18

    if-ne v0, v4, :cond_22

    const/16 v22, 0x1

    .line 690
    :cond_16
    :goto_a
    const/16 v43, 0x0

    .line 691
    const/16 v32, 0x0

    .line 694
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v4

    const/4 v5, 0x4

    add-int/lit8 v7, v11, -0x4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v5, v7}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->read([BII)V
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 711
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x4

    :try_start_8
    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-static {v0, v4, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 713
    if-eqz v64, :cond_1b

    .line 714
    const/16 v64, 0x0

    .line 715
    const/16 v62, 0x0

    .line 716
    .local v62, "vbrHeaderOffset":I
    const/4 v4, 0x1

    move/from16 v0, v44

    if-ne v0, v4, :cond_17

    .line 717
    packed-switch v46, :pswitch_data_0

    .line 727
    :cond_17
    :goto_b
    :pswitch_0
    add-int/lit8 v62, v62, 0x4

    .line 728
    aget-byte v4, v17, v62

    const/16 v5, 0x58

    if-ne v4, v5, :cond_2f

    add-int/lit8 v4, v62, 0x1

    aget-byte v4, v17, v4

    const/16 v5, 0x69

    if-ne v4, v5, :cond_2f

    add-int/lit8 v4, v62, 0x2

    aget-byte v4, v17, v4

    const/16 v5, 0x6e

    if-ne v4, v5, :cond_2f

    add-int/lit8 v4, v62, 0x3

    aget-byte v4, v17, v4

    const/16 v5, 0x67

    if-ne v4, v5, :cond_2f

    .line 729
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Found Xing VBR header"

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    add-int/lit8 v4, v62, 0x7

    aget-byte v4, v17, v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v45, v0

    .line 731
    .local v45, "mask":I
    add-int/lit8 v48, v62, 0x8

    .line 732
    .local v48, "offset":I
    and-int/lit8 v4, v45, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    .line 733
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    aget-byte v5, v17, v48

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v7, v48, 0x1

    aget-byte v7, v17, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v5, v7

    add-int/lit8 v7, v48, 0x2

    aget-byte v7, v17, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    add-int/lit8 v7, v48, 0x3

    aget-byte v7, v17, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    invoke-static {v4, v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3702(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;I)I

    .line 734
    add-int/lit8 v48, v48, 0x4

    .line 736
    :cond_18
    and-int/lit8 v4, v45, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_19

    .line 737
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    aget-byte v5, v17, v48

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v7, v48, 0x1

    aget-byte v7, v17, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v5, v7

    add-int/lit8 v7, v48, 0x2

    aget-byte v7, v17, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    add-int/lit8 v7, v48, 0x3

    aget-byte v7, v17, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    invoke-static {v4, v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2702(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;I)I

    .line 738
    add-int/lit8 v48, v48, 0x4

    .line 740
    :cond_19
    and-int/lit8 v4, v45, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1a

    .line 741
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    const/16 v5, 0x64

    new-array v5, v5, [B

    invoke-static {v4, v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2602(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;[B)[B

    .line 742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2600(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)[B

    move-result-object v4

    const/4 v5, 0x0

    const/16 v7, 0x64

    move-object/from16 v0, v17

    move/from16 v1, v48

    invoke-static {v0, v1, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 745
    :cond_1a
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "VBR file: frames=%d, size=%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v10}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v10}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    .end local v45    # "mask":I
    .end local v48    # "offset":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2500()[[I

    move-result-object v7

    aget-object v7, v7, v46

    aget v7, v7, v44

    int-to-float v7, v7

    mul-float/2addr v5, v7

    int-to-float v7, v6

    div-float/2addr v5, v7

    invoke-static {v4, v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2402(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;F)F

    .line 752
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Calculated duration is %d:%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v10}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2400(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)F

    move-result v10

    const/high16 v14, 0x42700000    # 60.0f

    div-float/2addr v10, v14

    float-to-double v0, v10

    move-wide/from16 v66, v0

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->floor(D)D

    move-result-wide v66

    move-wide/from16 v0, v66

    double-to-int v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v10}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2400(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)F

    move-result v10

    const/high16 v14, 0x42700000    # 60.0f

    rem-float/2addr v10, v14

    float-to-double v0, v10

    move-wide/from16 v66, v0

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->floor(D)D

    move-result-wide v66

    move-wide/from16 v0, v66

    double-to-int v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2300(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 754
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2302(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Z)Z

    .line 755
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3100(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder$3;-><init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 765
    .end local v62    # "vbrHeaderOffset":I
    :cond_1b
    if-nez v20, :cond_1c

    .line 766
    const/16 v20, 0x1

    .line 767
    const-string/jumbo v5, "audio/mpeg"

    const/4 v4, 0x3

    move/from16 v0, v18

    if-ne v0, v4, :cond_30

    const/4 v4, 0x1

    :goto_d
    invoke-static {v5, v6, v4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v27

    .line 768
    .local v27, "format":Landroid/media/MediaFormat;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2200(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/media/MediaCodec;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v4, v0, v5, v7, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 769
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2200(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/media/MediaCodec;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 770
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2200(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/media/MediaCodec;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v35

    .line 771
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2200(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/media/MediaCodec;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v49

    .line 772
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "starting codec"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    new-instance v4, Landroid/media/AudioTrack;

    const/4 v5, 0x3

    const/4 v7, 0x3

    move/from16 v0, v18

    if-ne v0, v7, :cond_31

    const/4 v7, 0x4

    :goto_e
    const/4 v8, 0x2

    const v9, 0xf000

    const/4 v10, 0x1

    invoke-direct/range {v4 .. v10}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    invoke-static {v14, v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3602(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    .line 774
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3600(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->play()V

    .line 775
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "starting track"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    .end local v27    # "format":Landroid/media/MediaFormat;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$300(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 780
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2200(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/media/MediaCodec;

    move-result-object v4

    const-wide/16 v66, -0x1

    move-wide/from16 v0, v66

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    .line 781
    .local v9, "inIndex":I
    if-ltz v9, :cond_32

    .line 782
    aget-object v4, v35, v9

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 783
    aget-object v4, v35, v9

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 784
    aget-object v4, v35, v9

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v5, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 785
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2200(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/media/MediaCodec;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 786
    invoke-static {}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2500()[[I

    move-result-object v4

    aget-object v4, v4, v46

    aget v4, v4, v44

    mul-int v4, v4, v30

    int-to-double v4, v4

    int-to-double v0, v6

    move-wide/from16 v66, v0

    div-double v4, v4, v66

    const-wide v66, 0x412e848000000000L    # 1000000.0

    mul-double v4, v4, v66

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    .line 787
    add-int/lit8 v30, v30, 0x1

    .line 791
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$300(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 794
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2200(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/media/MediaCodec;

    move-result-object v4

    const-wide/16 v66, 0x3e8

    move-object/from16 v0, v37

    move-wide/from16 v1, v66

    invoke-virtual {v4, v0, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v50

    .line 795
    .local v50, "outIndex":I
    if-ltz v50, :cond_33

    .line 797
    move-object/from16 v0, v19

    array-length v4, v0

    move-object/from16 v0, v37

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ge v4, v5, :cond_1d

    .line 798
    move-object/from16 v0, v37

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v4, [B

    move-object/from16 v19, v0

    .line 800
    :cond_1d
    aget-object v4, v49, v50

    move-object/from16 v0, v37

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 801
    aget-object v4, v49, v50

    const/4 v5, 0x0

    move-object/from16 v0, v37

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v5, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 802
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    const-wide/16 v66, 0x3e8

    div-long v66, v12, v66

    move-wide/from16 v0, v66

    long-to-int v5, v0

    invoke-static {v4, v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$502(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;I)I

    .line 803
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3600(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/media/AudioTrack;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v37

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v5, v7}, Landroid/media/AudioTrack;->write([BII)I

    move-result v63

    .line 804
    .local v63, "w":I
    move-object/from16 v0, v37

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v0, v63

    if-eq v0, v4, :cond_1e

    .line 805
    const-string/jumbo v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wrote "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v63

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " instead of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3600(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->flush()V

    .line 809
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2200(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/media/MediaCodec;

    move-result-object v4

    const/4 v5, 0x0

    move/from16 v0, v50

    invoke-virtual {v4, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 813
    .end local v63    # "w":I
    :cond_1f
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3800(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Z
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-result v4

    if-eqz v4, :cond_20

    .line 815
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3900(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 816
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3900(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 817
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 821
    :cond_20
    :goto_11
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$300(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_5

    .line 655
    .end local v9    # "inIndex":I
    .end local v11    # "frameSize":I
    .end local v50    # "outIndex":I
    .end local v52    # "paddingSize":I
    :cond_21
    const/16 v52, 0x0

    goto/16 :goto_9

    .line 661
    .restart local v11    # "frameSize":I
    .restart local v52    # "paddingSize":I
    :cond_22
    const/16 v22, 0x0

    goto/16 :goto_a

    .line 662
    :cond_23
    move/from16 v0, v23

    move/from16 v1, v46

    if-ne v0, v1, :cond_24

    move/from16 v0, v21

    move/from16 v1, v44

    if-ne v0, v1, :cond_24

    move/from16 v0, v24

    if-ne v0, v6, :cond_24

    const/4 v4, 0x3

    move/from16 v0, v18

    if-ne v0, v4, :cond_27

    const/4 v4, 0x1

    :goto_12
    move/from16 v0, v22

    if-eq v0, v4, :cond_16

    .line 663
    :cond_24
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Skipping invalid frame [2]"

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string/jumbo v5, "vk"

    const-string/jumbo v7, "Frame header: %02X%02X%02X%02X -> mpeg=%d, layer=%d, bitrate=%d, samplerate=%d, channels=%d, size=%d, CRC=%d"

    const/16 v4, 0xb

    new-array v8, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v10, 0x0

    aget-byte v10, v29, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v4

    const/4 v4, 0x1

    const/4 v10, 0x1

    aget-byte v10, v29, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v4

    const/4 v4, 0x2

    const/4 v10, 0x2

    aget-byte v10, v29, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v4

    const/4 v4, 0x3

    const/4 v10, 0x3

    aget-byte v10, v29, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v4

    const/4 v4, 0x4

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v4

    const/4 v4, 0x5

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v4

    const/4 v4, 0x6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v4

    const/4 v4, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v4

    const/16 v4, 0x8

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v4

    const/16 v4, 0x9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v4

    const/16 v10, 0xa

    if-eqz v31, :cond_28

    const/4 v4, 0x1

    :goto_13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    move/from16 v0, v41

    move/from16 v1, v46

    if-ne v0, v1, :cond_25

    move/from16 v0, v39

    move/from16 v1, v44

    if-ne v0, v1, :cond_25

    move/from16 v0, v42

    if-ne v0, v6, :cond_25

    const/4 v4, 0x3

    move/from16 v0, v18

    if-ne v0, v4, :cond_29

    const/4 v4, 0x1

    :goto_14
    move/from16 v0, v40

    if-eq v0, v4, :cond_26

    .line 666
    :cond_25
    const/16 v43, 0x0

    .line 668
    :cond_26
    add-int/lit8 v43, v43, 0x1

    .line 669
    move/from16 v41, v46

    .line 670
    move/from16 v39, v44

    .line 671
    move/from16 v42, v6

    .line 672
    const/4 v4, 0x3

    move/from16 v0, v18

    if-ne v0, v4, :cond_2a

    const/16 v40, 0x1

    .line 673
    :goto_15
    const/4 v4, 0x3

    move/from16 v0, v43

    if-lt v0, v4, :cond_0

    .line 674
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Too many similar invalid frames in a row; resyncing to them and restarting codec"

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    move/from16 v23, v46

    .line 676
    move/from16 v21, v44

    .line 677
    move/from16 v24, v6

    .line 678
    const/4 v4, 0x3

    move/from16 v0, v18

    if-ne v0, v4, :cond_2b

    const/16 v22, 0x1

    .line 679
    :goto_16
    if-eqz v20, :cond_16

    .line 680
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3600(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->release()V

    .line 681
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3602(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    .line 682
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2200(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/media/MediaCodec;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 683
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    const-string/jumbo v5, "audio/mpeg"

    invoke-static {v5}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2202(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;

    .line 684
    const/16 v20, 0x0

    goto/16 :goto_a

    .line 662
    :cond_27
    const/4 v4, 0x0

    goto/16 :goto_12

    .line 664
    :cond_28
    const/4 v4, 0x0

    goto/16 :goto_13

    .line 665
    :cond_29
    const/4 v4, 0x0

    goto :goto_14

    .line 672
    :cond_2a
    const/16 v40, 0x0

    goto :goto_15

    .line 678
    :cond_2b
    const/16 v22, 0x0

    goto :goto_16

    .line 695
    :catch_3
    move-exception v65

    .line 696
    .local v65, "x":Ljava/io/EOFException;
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "End of stream! [2]"

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3000(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 698
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->seek(I)V

    goto/16 :goto_0

    .line 701
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3100(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder$2;-><init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    .line 720
    .end local v65    # "x":Ljava/io/EOFException;
    .restart local v62    # "vbrHeaderOffset":I
    :pswitch_1
    const/4 v4, 0x3

    move/from16 v0, v18

    if-ne v0, v4, :cond_2d

    const/16 v62, 0x9

    .line 721
    :goto_17
    goto/16 :goto_b

    .line 720
    :cond_2d
    const/16 v62, 0x11

    goto :goto_17

    .line 723
    :pswitch_2
    const/4 v4, 0x3

    move/from16 v0, v18

    if-ne v0, v4, :cond_2e

    const/16 v62, 0x11

    :goto_18
    goto/16 :goto_b

    :cond_2e
    const/16 v62, 0x20

    goto :goto_18

    .line 747
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$600(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v5

    sub-int v5, v5, v26

    invoke-static {v4, v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2702(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;I)I

    .line 748
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v5

    div-int/2addr v5, v11

    invoke-static {v4, v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3702(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;I)I

    .line 749
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "CBR file: frames=%d, size=%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v10}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$3700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v10}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 767
    .end local v62    # "vbrHeaderOffset":I
    :cond_30
    const/4 v4, 0x2

    goto/16 :goto_d

    .line 773
    .restart local v27    # "format":Landroid/media/MediaFormat;
    :cond_31
    const/16 v7, 0xc

    goto/16 :goto_e

    .line 789
    .end local v27    # "format":Landroid/media/MediaFormat;
    .restart local v9    # "inIndex":I
    :cond_32
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Didn\'t get input buffer index!"

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 810
    .restart local v50    # "outIndex":I
    :cond_33
    const/4 v4, -0x3

    move/from16 v0, v50

    if-ne v0, v4, :cond_1f

    .line 811
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2200(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/media/MediaCodec;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;
    :try_end_b
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    move-result-object v49

    goto/16 :goto_10

    .line 817
    :catchall_0
    move-exception v4

    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw v4
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 818
    :catch_4
    move-exception v4

    goto/16 :goto_11

    .line 489
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 717
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

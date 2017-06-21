.class public Lcom/vkontakte/android/media/NativeVideoPlayer;
.super Lcom/vkcoffee/android/media/AbsVideoPlayer;
.source "NativeVideoPlayer.java"


# static fields
.field private static final HEARTBEAT_TIMEOUT:I = 0x1e


# instance fields
.field private bufNum:I

.field private bufStartTime:J

.field private bufferPct:Ljava/lang/Integer;

.field private dataSourceSet:Z

.field private volatile heartbeatTicker:I

.field private host:Ljava/lang/String;

.field private isPaused:Z

.field private isPrepared:Z

.field private isQualityAdviserSupported:Z

.field private playbackStartTime:J

.field private player:Landroid/media/MediaPlayer;

.field private quality:I

.field private seekTo:I

.field private seqNum:I

.field private setSurface:Z

.field private url:Ljava/lang/String;

.field private watchId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/TextureView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "texView"    # Landroid/view/TextureView;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/media/AbsVideoPlayer;-><init>(Landroid/content/Context;Landroid/view/TextureView;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->setSurface:Z

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/media/NativeVideoPlayer;)Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/media/NativeVideoPlayer;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufNum:I

    return v0
.end method

.method static access$1004(Lcom/vkontakte/android/media/NativeVideoPlayer;)I
    .locals 2
    .param p0, "x0"    # Lcom/vkontakte/android/media/NativeVideoPlayer;

    .prologue
    .line 50
    iget v1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufNum:I

    add-int/lit8 v0, v1, 0x1

    .line 51
    .local v0, "i":I
    iput v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufNum:I

    .line 52
    return v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/media/NativeVideoPlayer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/media/NativeVideoPlayer;->sendVigoEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/media/NativeVideoPlayer;J)V
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufStartTime:J

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/media/NativeVideoPlayer;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->heartbeatTicker:I

    return v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/media/NativeVideoPlayer;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPrepared:Z

    return v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/media/NativeVideoPlayer;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->seekTo:I

    return v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->seekTo:I

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/media/NativeVideoPlayer;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->seqNum:I

    return v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/media/NativeVideoPlayer;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/media/NativeVideoPlayer;Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPaused:Z

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/media/NativeVideoPlayer;Z)V
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPrepared:Z

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/media/NativeVideoPlayer;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isQualityAdviserSupported:Z

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/media/NativeVideoPlayer;)J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufStartTime:J

    return-wide v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->heartbeatTicker:I

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/media/NativeVideoPlayer;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->quality:I

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    return-object v0
.end method

.method static access$704(Lcom/vkontakte/android/media/NativeVideoPlayer;)I
    .locals 2
    .param p0, "x0"    # Lcom/vkontakte/android/media/NativeVideoPlayer;

    .prologue
    .line 56
    iget v1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->seqNum:I

    add-int/lit8 v0, v1, 0x1

    .line 57
    .local v0, "i":I
    iput v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->seqNum:I

    .line 58
    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/media/NativeVideoPlayer;)J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->playbackStartTime:J

    return-wide v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    return-object v0
.end method

.method private doSetDataSorce()V
    .locals 18

    .prologue
    .line 75
    const/4 v12, 0x0

    .line 77
    .local v12, "z":Z
    :try_start_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->quality:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    .line 78
    const/4 v12, 0x1

    .line 80
    :cond_0
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isQualityAdviserSupported:Z

    .line 81
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPrepared:Z

    .line 82
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPaused:Z

    .line 83
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->heartbeatTicker:I

    .line 84
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->watchId:Ljava/lang/String;

    .line 85
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->playbackStartTime:J

    .line 86
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->seqNum:I

    .line 87
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufNum:I

    .line 88
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufStartTime:J

    .line 89
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->url:Ljava/lang/String;

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->host:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    :goto_0
    :try_start_2
    new-instance v13, Landroid/media/MediaPlayer;

    invoke-direct {v13}, Landroid/media/MediaPlayer;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->updateTexture()V

    .line 96
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->url:Ljava/lang/String;

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v14, Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;-><init>(Lcom/vkontakte/android/media/NativeVideoPlayer;)V

    invoke-virtual {v13, v14}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v14, Lcom/vkontakte/android/media/NativeVideoPlayer$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/media/NativeVideoPlayer$2;-><init>(Lcom/vkontakte/android/media/NativeVideoPlayer;)V

    invoke-virtual {v13, v14}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v14, Lcom/vkontakte/android/media/NativeVideoPlayer$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/media/NativeVideoPlayer$3;-><init>(Lcom/vkontakte/android/media/NativeVideoPlayer;)V

    invoke-virtual {v13, v14}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v14, Lcom/vkontakte/android/media/NativeVideoPlayer$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/media/NativeVideoPlayer$4;-><init>(Lcom/vkontakte/android/media/NativeVideoPlayer;)V

    invoke-virtual {v13, v14}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v14, Lcom/vkontakte/android/media/NativeVideoPlayer$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/media/NativeVideoPlayer$5;-><init>(Lcom/vkontakte/android/media/NativeVideoPlayer;)V

    invoke-virtual {v13, v14}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 256
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isQualityAdviserSupported:Z

    if-eqz v13, :cond_1

    .line 258
    sget-object v13, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/vkcoffee/android/VKApplication;->getVigo(Landroid/content/Context;)Lcom/vkcoffee/android/media/Vigo;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->playbackStartTime:J

    invoke-virtual {v13, v14, v15}, Lcom/vkcoffee/android/media/Vigo;->collectNetworkChangesON(J)V

    .line 259
    const/16 v13, 0x1e

    move-object/from16 v0, p0

    iput v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->heartbeatTicker:I

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 261
    .local v4, "currentTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 262
    .local v8, "playbackTime":J
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "quality="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->quality:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    if-eqz v13, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, ",host="

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_1
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 263
    .local v10, "str2":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "type=play,seq="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 264
    .local v2, "append":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->seqNum:I

    add-int/lit8 v6, v13, 0x1

    .line 265
    .local v6, "i":I
    move-object/from16 v0, p0

    iput v6, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->seqNum:I

    .line 266
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ts="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "tz="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v14

    div-int/lit16 v14, v14, 0x3e8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "t="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->playbackStartTime:J

    sub-long v14, v8, v14

    const-wide/32 v16, 0xf4240

    div-long v14, v14, v16

    long-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    if-eqz v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, ",buffer="

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_2
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "bytes="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 267
    .local v3, "append2":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufStartTime:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_4

    .line 268
    const-string v7, ",load_state=buffering"

    .line 272
    .local v7, "str":Ljava/lang/String;
    :goto_3
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/vkontakte/android/media/NativeVideoPlayer;->sendVigoEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufStartTime:J

    .line 274
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "quality="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->quality:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    if-eqz v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, ",host="

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_4
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 275
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "type=buf_start,seq="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 276
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->seqNum:I

    add-int/lit8 v6, v13, 0x1

    .line 277
    move-object/from16 v0, p0

    iput v6, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->seqNum:I

    .line 278
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ts="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "tz="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v14

    div-int/lit16 v14, v14, 0x3e8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "t="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->playbackStartTime:J

    sub-long v14, v8, v14

    const-wide/32 v16, 0xf4240

    div-long v14, v14, v16

    long-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    if-eqz v13, :cond_6

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, ",buffer="

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_5
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "bytes="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "buf_num="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 279
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufNum:I

    add-int/lit8 v6, v13, 0x1

    .line 280
    move-object/from16 v0, p0

    iput v6, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufNum:I

    .line 281
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/vkontakte/android/media/NativeVideoPlayer;->sendVigoEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .end local v2    # "append":Ljava/lang/StringBuilder;
    .end local v3    # "append2":Ljava/lang/StringBuilder;
    .end local v4    # "currentTime":J
    .end local v6    # "i":I
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "playbackTime":J
    .end local v10    # "str2":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v13}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 287
    :goto_6
    return-void

    .line 262
    .restart local v4    # "currentTime":J
    .restart local v8    # "playbackTime":J
    :cond_2
    const-string v13, ""

    goto/16 :goto_1

    .line 266
    .restart local v2    # "append":Ljava/lang/StringBuilder;
    .restart local v6    # "i":I
    .restart local v10    # "str2":Ljava/lang/String;
    :cond_3
    const-string v13, ""

    goto/16 :goto_2

    .line 270
    .restart local v3    # "append2":Ljava/lang/StringBuilder;
    :cond_4
    const-string v7, ""

    .restart local v7    # "str":Ljava/lang/String;
    goto/16 :goto_3

    .line 274
    :cond_5
    const-string v13, ""

    goto/16 :goto_4

    .line 278
    :cond_6
    const-string v13, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 284
    .end local v2    # "append":Ljava/lang/StringBuilder;
    .end local v3    # "append2":Ljava/lang/StringBuilder;
    .end local v4    # "currentTime":J
    .end local v6    # "i":I
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "playbackTime":J
    .end local v10    # "str2":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 285
    .local v11, "x":Ljava/lang/Exception;
    const-string v13, "vk"

    invoke-static {v13, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 92
    .end local v11    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v13

    goto/16 :goto_0
.end method

.method private sendVigoEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    .line 465
    :try_start_0
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 466
    .local v0, "aes":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v4, 0x10

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v5, 0x10

    new-array v5, v5, [B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 467
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/vkcoffee/android/VKApplication;->getVigo(Landroid/content/Context;)Lcom/vkcoffee/android/media/Vigo;

    move-result-object v2

    const-string v3, "http://api.vigo.ru/uxzoom/1/notify"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/media/Vigo;->fillUrlParams(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "wid"

    iget-object v4, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->watchId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "ev"

    const-string v4, "UTF-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    const/16 v5, 0xb

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "co"

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    const/16 v5, 0xb

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/data/Analytics;->trackExternal(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .end local v0    # "aes":Ljavax/crypto/Cipher;
    :goto_0
    return-void

    .line 468
    :catch_0
    move-exception v1

    .line 469
    .local v1, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    const-string v3, "Error sending vigo event"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 466
    :array_0
    .array-data 1
        0x27t
        0x3bt
        0x6dt
        0x6ct
        0x7et
        0x73t
        0x44t
        0x34t
        0x49t
        0x76t
        0x3et
        0x55t
        0x31t
        0x31t
        0x46t
        0x7et
    .end array-data
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 18

    .prologue
    .line 319
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isQualityAdviserSupported:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v12}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 321
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPaused:Z

    .line 322
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->heartbeatTicker:I

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 324
    .local v6, "currentTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 325
    .local v8, "playbackTime":J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v12, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "duration="

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v14}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_0
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "quality="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->quality:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 326
    .local v2, "append":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    if-eqz v12, :cond_2

    .line 327
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, ",host="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 331
    .local v10, "str":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 332
    .local v11, "stringBuilder":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "type=pause,seq="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 333
    .local v3, "append2":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->seqNum:I

    add-int/lit8 v5, v12, 0x1

    .line 334
    .local v5, "i":I
    move-object/from16 v0, p0

    iput v5, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->seqNum:I

    .line 335
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ts="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "tz="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v13

    div-int/lit16 v13, v13, 0x3e8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "t="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->playbackStartTime:J

    sub-long v14, v8, v14

    const-wide/32 v16, 0xf4240

    div-long v14, v14, v16

    long-to-float v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, ",pos="

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v14}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    if-eqz v12, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, ",buffer="

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_3
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "bytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 336
    .local v4, "append3":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_5

    .line 337
    const-string v10, ",load_state=buffering"

    .line 341
    :goto_4
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/vkontakte/android/media/NativeVideoPlayer;->sendVigoEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sget-object v12, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v12}, Lcom/vkcoffee/android/VKApplication;->getVigo(Landroid/content/Context;)Lcom/vkcoffee/android/media/Vigo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/vkcoffee/android/media/Vigo;->collectNetworkChangesOFF()V

    .line 344
    .end local v2    # "append":Ljava/lang/StringBuilder;
    .end local v3    # "append2":Ljava/lang/StringBuilder;
    .end local v4    # "append3":Ljava/lang/StringBuilder;
    .end local v5    # "i":I
    .end local v6    # "currentTime":J
    .end local v8    # "playbackTime":J
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "stringBuilder":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v12}, Landroid/media/MediaPlayer;->pause()V

    .line 345
    return-void

    .line 325
    .restart local v6    # "currentTime":J
    .restart local v8    # "playbackTime":J
    :cond_1
    const-string v12, ""

    goto/16 :goto_0

    .line 329
    .restart local v2    # "append":Ljava/lang/StringBuilder;
    :cond_2
    const-string v10, ""

    .restart local v10    # "str":Ljava/lang/String;
    goto/16 :goto_1

    .line 335
    .restart local v3    # "append2":Ljava/lang/StringBuilder;
    .restart local v5    # "i":I
    .restart local v11    # "stringBuilder":Ljava/lang/String;
    :cond_3
    const-string v12, ""

    goto :goto_2

    :cond_4
    const-string v12, ""

    goto :goto_3

    .line 339
    .restart local v4    # "append3":Ljava/lang/StringBuilder;
    :cond_5
    const-string v10, ""

    goto :goto_4
.end method

.method public play()V
    .locals 18

    .prologue
    .line 290
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isQualityAdviserSupported:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPaused:Z

    if-eqz v12, :cond_0

    .line 292
    sget-object v12, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v12}, Lcom/vkcoffee/android/VKApplication;->getVigo(Landroid/content/Context;)Lcom/vkcoffee/android/media/Vigo;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->playbackStartTime:J

    invoke-virtual {v12, v14, v15}, Lcom/vkcoffee/android/media/Vigo;->collectNetworkChangesON(J)V

    .line 293
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPaused:Z

    .line 294
    const/16 v12, 0x1e

    move-object/from16 v0, p0

    iput v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->heartbeatTicker:I

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 296
    .local v6, "currentTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 297
    .local v8, "playbackTime":J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v12, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "duration="

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v14}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_0
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "quality="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->quality:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 298
    .local v2, "append":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    if-eqz v12, :cond_2

    .line 299
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, ",host="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 303
    .local v10, "str":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 304
    .local v11, "stringBuilder":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "type=resume,seq="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 305
    .local v3, "append2":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->seqNum:I

    add-int/lit8 v5, v12, 0x1

    .line 306
    .local v5, "i":I
    move-object/from16 v0, p0

    iput v5, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->seqNum:I

    .line 307
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ts="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "tz="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v13

    div-int/lit16 v13, v13, 0x3e8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "t="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->playbackStartTime:J

    sub-long v14, v8, v14

    const-wide/32 v16, 0xf4240

    div-long v14, v14, v16

    long-to-float v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, ",pos="

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v14}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    if-eqz v12, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, ",buffer="

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_3
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "bytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 308
    .local v4, "append3":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_5

    .line 309
    const-string v10, ",load_state=buffering"

    .line 313
    :goto_4
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/vkontakte/android/media/NativeVideoPlayer;->sendVigoEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .end local v2    # "append":Ljava/lang/StringBuilder;
    .end local v3    # "append2":Ljava/lang/StringBuilder;
    .end local v4    # "append3":Ljava/lang/StringBuilder;
    .end local v5    # "i":I
    .end local v6    # "currentTime":J
    .end local v8    # "playbackTime":J
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "stringBuilder":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v12}, Landroid/media/MediaPlayer;->start()V

    .line 316
    return-void

    .line 297
    .restart local v6    # "currentTime":J
    .restart local v8    # "playbackTime":J
    :cond_1
    const-string v12, ""

    goto/16 :goto_0

    .line 301
    .restart local v2    # "append":Ljava/lang/StringBuilder;
    :cond_2
    const-string v10, ""

    .restart local v10    # "str":Ljava/lang/String;
    goto/16 :goto_1

    .line 307
    .restart local v3    # "append2":Ljava/lang/StringBuilder;
    .restart local v5    # "i":I
    .restart local v11    # "stringBuilder":Ljava/lang/String;
    :cond_3
    const-string v12, ""

    goto :goto_2

    :cond_4
    const-string v12, ""

    goto :goto_3

    .line 311
    .restart local v4    # "append3":Ljava/lang/StringBuilder;
    :cond_5
    const-string v10, ""

    goto :goto_4
.end method

.method public seek(I)V
    .locals 18
    .param p1, "offset"    # I

    .prologue
    .line 348
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isQualityAdviserSupported:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v12}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 349
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPaused:Z

    if-eqz v12, :cond_1

    .line 350
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    .line 393
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 394
    return-void

    .line 353
    :cond_1
    const/16 v12, 0x1e

    move-object/from16 v0, p0

    iput v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->heartbeatTicker:I

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 355
    .local v6, "currentTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 356
    .local v8, "playbackTime":J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "duration="

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v14}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_1
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "quality="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->quality:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 357
    .local v2, "append":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    if-eqz v12, :cond_3

    .line 358
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, ",host="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 362
    .local v10, "str":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 363
    .local v11, "stringBuilder":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "type=heartbeat,seq="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 364
    .local v3, "append2":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->seqNum:I

    add-int/lit8 v5, v12, 0x1

    .line 365
    .local v5, "i":I
    move-object/from16 v0, p0

    iput v5, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->seqNum:I

    .line 366
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ts="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "tz="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v13

    div-int/lit16 v13, v13, 0x3e8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "t="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->playbackStartTime:J

    sub-long v14, v8, v14

    const-wide/32 v16, 0xf4240

    div-long v14, v14, v16

    long-to-float v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v12, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, ",pos="

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v14}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_3
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    if-eqz v12, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, ",buffer="

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_4
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "bytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 367
    .local v4, "append3":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_6

    .line 368
    const-string v10, ",load_state=buffering"

    .line 372
    :goto_5
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/vkontakte/android/media/NativeVideoPlayer;->sendVigoEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    .line 374
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v12, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "duration="

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v14}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_6
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "quality="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->quality:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 375
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    if-eqz v12, :cond_8

    .line 376
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, ",host="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 380
    :goto_7
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 381
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "type=seek,seq="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 382
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->seqNum:I

    add-int/lit8 v5, v12, 0x1

    .line 383
    move-object/from16 v0, p0

    iput v5, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->seqNum:I

    .line 384
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ts="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "tz="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v13

    div-int/lit16 v13, v13, 0x3e8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "t="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->playbackStartTime:J

    sub-long v14, v8, v14

    const-wide/32 v16, 0xf4240

    div-long v14, v14, v16

    long-to-float v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v12, :cond_9

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, ",pos="

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    int-to-float v14, v0

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_8
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "bytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 385
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_a

    .line 386
    const-string v10, ",load_state=buffering"

    .line 390
    :goto_9
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/vkontakte/android/media/NativeVideoPlayer;->sendVigoEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    .end local v2    # "append":Ljava/lang/StringBuilder;
    .end local v3    # "append2":Ljava/lang/StringBuilder;
    .end local v4    # "append3":Ljava/lang/StringBuilder;
    .end local v5    # "i":I
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "stringBuilder":Ljava/lang/String;
    :cond_2
    const-string v12, ""

    goto/16 :goto_1

    .line 360
    .restart local v2    # "append":Ljava/lang/StringBuilder;
    :cond_3
    const-string v10, ""

    .restart local v10    # "str":Ljava/lang/String;
    goto/16 :goto_2

    .line 366
    .restart local v3    # "append2":Ljava/lang/StringBuilder;
    .restart local v5    # "i":I
    .restart local v11    # "stringBuilder":Ljava/lang/String;
    :cond_4
    const-string v12, ""

    goto/16 :goto_3

    :cond_5
    const-string v12, ""

    goto/16 :goto_4

    .line 370
    .restart local v4    # "append3":Ljava/lang/StringBuilder;
    :cond_6
    const-string v10, ""

    goto/16 :goto_5

    .line 374
    :cond_7
    const-string v12, ""

    goto/16 :goto_6

    .line 378
    :cond_8
    const-string v10, ""

    goto/16 :goto_7

    .line 384
    :cond_9
    const-string v12, ""

    goto :goto_8

    .line 388
    :cond_a
    const-string v10, ""

    goto :goto_9
.end method

.method public setDataSourceAndPrepare(Ljava/lang/String;I)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "_quality"    # I

    .prologue
    .line 66
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SET DATA SOURCE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput p2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->quality:I

    .line 68
    iput-object p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->url:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->doSetDataSorce()V

    .line 72
    :cond_0
    return-void
.end method

.method public stopAndRelease()V
    .locals 18

    .prologue
    .line 398
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isQualityAdviserSupported:Z

    if-eqz v13, :cond_0

    .line 400
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->heartbeatTicker:I

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 402
    .local v6, "currentTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 403
    .local v8, "playbackTime":J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v13, :cond_1

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "duration="

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v15}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x447a0000    # 1000.0f

    div-float v15, v15, v16

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ","

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_0
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "quality="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->quality:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 404
    .local v2, "append":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    if-eqz v13, :cond_2

    .line 405
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, ",host="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 409
    .local v10, "str":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 410
    .local v11, "stringBuilder":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "type=stop,seq="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 411
    .local v3, "append2":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->seqNum:I

    add-int/lit8 v5, v13, 0x1

    .line 412
    .local v5, "i":I
    move-object/from16 v0, p0

    iput v5, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->seqNum:I

    .line 413
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ts="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "tz="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v14

    div-int/lit16 v14, v14, 0x3e8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "t="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->playbackStartTime:J

    sub-long v14, v8, v14

    const-wide/32 v16, 0xf4240

    div-long v14, v14, v16

    long-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, ",pos="

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v15}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x447a0000    # 1000.0f

    div-float v15, v15, v16

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_2
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    if-eqz v13, :cond_4

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, ",buffer="

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_3
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "bytes="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 414
    .local v4, "append3":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufStartTime:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_5

    .line 415
    const-string v10, ",load_state=buffering"

    .line 419
    :goto_4
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/vkontakte/android/media/NativeVideoPlayer;->sendVigoEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    sget-object v13, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/vkcoffee/android/VKApplication;->getVigo(Landroid/content/Context;)Lcom/vkcoffee/android/media/Vigo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkcoffee/android/media/Vigo;->collectNetworkChangesOFF()V

    .line 422
    .end local v2    # "append":Ljava/lang/StringBuilder;
    .end local v3    # "append2":Ljava/lang/StringBuilder;
    .end local v4    # "append3":Ljava/lang/StringBuilder;
    .end local v5    # "i":I
    .end local v6    # "currentTime":J
    .end local v8    # "playbackTime":J
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "stringBuilder":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v13}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v13}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 431
    :goto_6
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPrepared:Z

    .line 432
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    .line 433
    return-void

    .line 403
    .restart local v6    # "currentTime":J
    .restart local v8    # "playbackTime":J
    :cond_1
    :try_start_2
    const-string v13, ""

    goto/16 :goto_0

    .line 407
    .restart local v2    # "append":Ljava/lang/StringBuilder;
    :cond_2
    const-string v10, ""

    .restart local v10    # "str":Ljava/lang/String;
    goto/16 :goto_1

    .line 413
    .restart local v3    # "append2":Ljava/lang/StringBuilder;
    .restart local v5    # "i":I
    .restart local v11    # "stringBuilder":Ljava/lang/String;
    :cond_3
    const-string v13, ""

    goto :goto_2

    :cond_4
    const-string v13, ""

    goto :goto_3

    .line 417
    .restart local v4    # "append3":Ljava/lang/StringBuilder;
    :cond_5
    const-string v10, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 424
    .end local v2    # "append":Ljava/lang/StringBuilder;
    .end local v3    # "append2":Ljava/lang/StringBuilder;
    .end local v4    # "append3":Ljava/lang/StringBuilder;
    .end local v5    # "i":I
    .end local v6    # "currentTime":J
    .end local v8    # "playbackTime":J
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "stringBuilder":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 425
    .local v12, "th":Ljava/lang/Throwable;
    sget-object v13, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/vkcoffee/android/VKApplication;->getVigo(Landroid/content/Context;)Lcom/vkcoffee/android/media/Vigo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkcoffee/android/media/Vigo;->collectNetworkChangesOFF()V

    goto :goto_5

    .line 429
    .end local v12    # "th":Ljava/lang/Throwable;
    :catch_1
    move-exception v13

    goto :goto_6

    .line 423
    :catch_2
    move-exception v13

    goto :goto_5
.end method

.method protected surfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 446
    const-string v0, "vk"

    const-string v1, "surface texture destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 450
    :cond_0
    return-void
.end method

.method protected surfaceTextureReady(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 436
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "surface texture ready, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", player="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->dataSourceSet:Z

    if-eqz v0, :cond_1

    .line 438
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->updateTexture()V

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->doSetDataSorce()V

    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->dataSourceSet:Z

    goto :goto_0
.end method

.method updateTexture()V
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 461
    return-void
.end method

.class public Lcom/vkcoffee/android/media/NativeVideoPlayer;
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
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/media/AbsVideoPlayer;-><init>(Landroid/content/Context;Landroid/view/TextureView;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->setSurface:Z

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isPrepared:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .prologue
    .line 37
    iget v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufNum:I

    return v0
.end method

.method static synthetic access$1004(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .prologue
    .line 37
    iget v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufNum:I

    return v0
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/media/NativeVideoPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isPrepared:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/media/NativeVideoPlayer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->sendVigoEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .prologue
    .line 37
    iget v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->seekTo:I

    return v0
.end method

.method static synthetic access$1202(Lcom/vkcoffee/android/media/NativeVideoPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->seekTo:I

    return p1
.end method

.method static synthetic access$1302(Lcom/vkcoffee/android/media/NativeVideoPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isPaused:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isQualityAdviserSupported:Z

    return v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/media/NativeVideoPlayer;)J
    .locals 2
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufStartTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/vkcoffee/android/media/NativeVideoPlayer;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;
    .param p1, "x1"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufStartTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .prologue
    .line 37
    iget v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->heartbeatTicker:I

    return v0
.end method

.method static synthetic access$402(Lcom/vkcoffee/android/media/NativeVideoPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->heartbeatTicker:I

    return p1
.end method

.method static synthetic access$410(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I
    .locals 2
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .prologue
    .line 37
    iget v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->heartbeatTicker:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->heartbeatTicker:I

    return v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .prologue
    .line 37
    iget v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->quality:I

    return v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .prologue
    .line 37
    iget v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->seqNum:I

    return v0
.end method

.method static synthetic access$704(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .prologue
    .line 37
    iget v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->seqNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->seqNum:I

    return v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/media/NativeVideoPlayer;)J
    .locals 2
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->playbackStartTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$902(Lcom/vkcoffee/android/media/NativeVideoPlayer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    return-object p1
.end method

.method private doSetDataSorce()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v6, 0x0

    .line 88
    :try_start_0
    iget v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->quality:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    const/4 v6, 0x1

    :cond_0
    iput-boolean v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isQualityAdviserSupported:Z

    .line 90
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isPrepared:Z

    .line 92
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isPaused:Z

    .line 93
    const/4 v6, 0x0

    iput v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->heartbeatTicker:I

    .line 96
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->watchId:Ljava/lang/String;

    .line 98
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->playbackStartTime:J

    .line 100
    const/4 v6, 0x0

    iput v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->seqNum:I

    .line 101
    const/4 v6, 0x0

    iput v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufNum:I

    .line 102
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufStartTime:J

    .line 103
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :try_start_1
    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->url:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->host:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    :goto_0
    :try_start_2
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    .line 114
    invoke-virtual {p0}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->updateTexture()V

    .line 115
    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->url:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 116
    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v7, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;-><init>(Lcom/vkcoffee/android/media/NativeVideoPlayer;)V

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 226
    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v7, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;-><init>(Lcom/vkcoffee/android/media/NativeVideoPlayer;)V

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 273
    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v7, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;-><init>(Lcom/vkcoffee/android/media/NativeVideoPlayer;)V

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 319
    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v7, Lcom/vkcoffee/android/media/NativeVideoPlayer$4;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/media/NativeVideoPlayer$4;-><init>(Lcom/vkcoffee/android/media/NativeVideoPlayer;)V

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 375
    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v7, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;-><init>(Lcom/vkcoffee/android/media/NativeVideoPlayer;)V

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 467
    iget-boolean v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isQualityAdviserSupported:Z

    if-eqz v6, :cond_1

    .line 469
    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/vkcoffee/android/VKApplication;->getVigo(Landroid/content/Context;)Lcom/vkcoffee/android/media/Vigo;

    move-result-object v4

    .line 470
    .local v4, "vigo":Lcom/vkcoffee/android/media/Vigo;
    iget-wide v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->playbackStartTime:J

    invoke-virtual {v4, v6, v7}, Lcom/vkcoffee/android/media/Vigo;->collectNetworkChangesON(J)V

    .line 472
    const/16 v6, 0x1e

    iput v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->heartbeatTicker:I

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 475
    .local v0, "currentTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 477
    .local v2, "playbackTime":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "quality="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->quality:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ",host="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "type=play,seq="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->seqNum:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->seqNum:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "ts="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "tz="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 487
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    div-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "t="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->playbackStartTime:J

    sub-long v8, v2, v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    long-to-float v8, v8

    .line 489
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ",buffer="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "bytes="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 498
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufStartTime:J

    cmp-long v6, v10, v12

    if-eqz v6, :cond_4

    const-string/jumbo v6, ",load_state=buffering"

    :goto_3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 477
    invoke-direct {p0, v7, v6}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->sendVigoEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iput-wide v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufStartTime:J

    .line 508
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "quality="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->quality:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ",host="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "type=buf_start,seq="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->seqNum:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->seqNum:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "ts="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "tz="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 518
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    div-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "t="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->playbackStartTime:J

    sub-long v8, v2, v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    long-to-float v8, v8

    .line 520
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ",buffer="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "bytes="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 529
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "buf_num="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufNum:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufNum:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 508
    invoke-direct {p0, v7, v6}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->sendVigoEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .end local v0    # "currentTime":J
    .end local v2    # "playbackTime":J
    .end local v4    # "vigo":Lcom/vkcoffee/android/media/Vigo;
    :cond_1
    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 539
    :goto_6
    return-void

    .line 477
    .restart local v0    # "currentTime":J
    .restart local v2    # "playbackTime":J
    .restart local v4    # "vigo":Lcom/vkcoffee/android/media/Vigo;
    :cond_2
    const-string/jumbo v6, ""

    goto/16 :goto_1

    .line 489
    :cond_3
    const-string/jumbo v6, ""

    goto/16 :goto_2

    .line 498
    :cond_4
    const-string/jumbo v6, ""

    goto/16 :goto_3

    .line 508
    :cond_5
    const-string/jumbo v6, ""

    goto/16 :goto_4

    .line 520
    :cond_6
    const-string/jumbo v6, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 536
    .end local v0    # "currentTime":J
    .end local v2    # "playbackTime":J
    .end local v4    # "vigo":Lcom/vkcoffee/android/media/Vigo;
    :catch_0
    move-exception v5

    .line 537
    .local v5, "x":Ljava/lang/Exception;
    const-string/jumbo v6, "vk"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 109
    .end local v5    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method

.method private sendVigoEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    .line 801
    :try_start_0
    const-string/jumbo v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 802
    .local v0, "aes":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v6, 0x10

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    const-string/jumbo v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v7, 0x10

    new-array v7, v7, [B

    invoke-direct {v6, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v4, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 804
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/vkcoffee/android/VKApplication;->getVigo(Landroid/content/Context;)Lcom/vkcoffee/android/media/Vigo;

    move-result-object v2

    .line 805
    .local v2, "vigo":Lcom/vkcoffee/android/media/Vigo;
    const-string/jumbo v4, "http://api.vigo.ru/uxzoom/1/notify"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/vkcoffee/android/media/Vigo;->fillUrlParams(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "wid"

    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->watchId:Ljava/lang/String;

    .line 806
    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "ev"

    const-string/jumbo v6, "UTF-8"

    .line 807
    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    const/16 v7, 0xb

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "co"

    const-string/jumbo v6, "UTF-8"

    .line 808
    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    const/16 v7, 0xb

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 809
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 811
    .local v1, "reqUri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/data/Analytics;->trackExternal(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    .end local v0    # "aes":Ljavax/crypto/Cipher;
    .end local v1    # "reqUri":Landroid/net/Uri;
    .end local v2    # "vigo":Lcom/vkcoffee/android/media/Vigo;
    :goto_0
    return-void

    .line 812
    :catch_0
    move-exception v3

    .line 813
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Error sending vigo event"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 802
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
    .line 789
    iget-object v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 792
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 13

    .prologue
    const/high16 v12, 0x447a0000    # 1000.0f

    .line 590
    iget-boolean v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isQualityAdviserSupported:Z

    if-eqz v5, :cond_0

    .line 592
    iget-boolean v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 594
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isPaused:Z

    .line 595
    const/4 v5, 0x0

    iput v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->heartbeatTicker:I

    .line 597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 598
    .local v0, "currentTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 600
    .local v2, "playbackTime":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "duration="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v12

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "quality="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->quality:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ",host="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "type=pause,seq="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->seqNum:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->seqNum:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "ts="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "tz="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 609
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "t="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->playbackStartTime:J

    sub-long v8, v2, v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    long-to-float v7, v8

    .line 611
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ",pos="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    .line 612
    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v12

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ",buffer="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "bytes="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 619
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_5

    const-string/jumbo v5, ",load_state=buffering"

    :goto_4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 600
    invoke-direct {p0, v6, v5}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->sendVigoEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/vkcoffee/android/VKApplication;->getVigo(Landroid/content/Context;)Lcom/vkcoffee/android/media/Vigo;

    move-result-object v4

    .line 628
    .local v4, "vigo":Lcom/vkcoffee/android/media/Vigo;
    invoke-virtual {v4}, Lcom/vkcoffee/android/media/Vigo;->collectNetworkChangesOFF()V

    .line 634
    .end local v0    # "currentTime":J
    .end local v2    # "playbackTime":J
    .end local v4    # "vigo":Lcom/vkcoffee/android/media/Vigo;
    :cond_0
    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->pause()V

    .line 635
    return-void

    .line 600
    .restart local v0    # "currentTime":J
    .restart local v2    # "playbackTime":J
    :cond_1
    const-string/jumbo v5, ""

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v5, ""

    goto/16 :goto_1

    .line 612
    :cond_3
    const-string/jumbo v5, ""

    goto :goto_2

    :cond_4
    const-string/jumbo v5, ""

    goto :goto_3

    .line 619
    :cond_5
    const-string/jumbo v5, ""

    goto :goto_4
.end method

.method public play()V
    .locals 13

    .prologue
    const/high16 v12, 0x447a0000    # 1000.0f

    .line 544
    iget-boolean v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isQualityAdviserSupported:Z

    if-eqz v5, :cond_0

    .line 545
    iget-boolean v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isPaused:Z

    if-eqz v5, :cond_0

    .line 546
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/vkcoffee/android/VKApplication;->getVigo(Landroid/content/Context;)Lcom/vkcoffee/android/media/Vigo;

    move-result-object v4

    .line 547
    .local v4, "vigo":Lcom/vkcoffee/android/media/Vigo;
    iget-wide v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->playbackStartTime:J

    invoke-virtual {v4, v6, v7}, Lcom/vkcoffee/android/media/Vigo;->collectNetworkChangesON(J)V

    .line 549
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isPaused:Z

    .line 550
    const/16 v5, 0x1e

    iput v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->heartbeatTicker:I

    .line 552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 553
    .local v0, "currentTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 555
    .local v2, "playbackTime":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "duration="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v12

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "quality="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->quality:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ",host="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "type=resume,seq="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->seqNum:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->seqNum:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "ts="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "tz="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 564
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "t="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->playbackStartTime:J

    sub-long v8, v2, v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    long-to-float v7, v8

    .line 566
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ",pos="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    .line 567
    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v12

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ",buffer="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "bytes="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 574
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_5

    const-string/jumbo v5, ",load_state=buffering"

    :goto_4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 555
    invoke-direct {p0, v6, v5}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->sendVigoEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .end local v0    # "currentTime":J
    .end local v2    # "playbackTime":J
    .end local v4    # "vigo":Lcom/vkcoffee/android/media/Vigo;
    :cond_0
    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 585
    return-void

    .line 555
    .restart local v0    # "currentTime":J
    .restart local v2    # "playbackTime":J
    .restart local v4    # "vigo":Lcom/vkcoffee/android/media/Vigo;
    :cond_1
    const-string/jumbo v5, ""

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v5, ""

    goto/16 :goto_1

    .line 567
    :cond_3
    const-string/jumbo v5, ""

    goto :goto_2

    :cond_4
    const-string/jumbo v5, ""

    goto :goto_3

    .line 574
    :cond_5
    const-string/jumbo v5, ""

    goto :goto_4
.end method

.method public seek(I)V
    .locals 12
    .param p1, "offset"    # I

    .prologue
    .line 641
    iget-boolean v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isQualityAdviserSupported:Z

    if-eqz v4, :cond_0

    .line 642
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 643
    iget-boolean v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isPaused:Z

    if-eqz v4, :cond_1

    .line 644
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    .line 704
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 705
    return-void

    .line 646
    :cond_1
    const/16 v4, 0x1e

    iput v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->heartbeatTicker:I

    .line 648
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 649
    .local v0, "currentTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 651
    .local v2, "playbackTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "duration="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "quality="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->quality:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ",host="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "type=heartbeat,seq="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->seqNum:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->seqNum:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "ts="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "tz="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 660
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "t="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->playbackStartTime:J

    sub-long v6, v2, v6

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    long-to-float v6, v6

    .line 662
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ",pos="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    .line 663
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ",buffer="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "bytes="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 670
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-eqz v4, :cond_6

    const-string/jumbo v4, ",load_state=buffering"

    :goto_5
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 651
    invoke-direct {p0, v5, v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->sendVigoEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    .line 679
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "duration="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_6
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "quality="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->quality:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ",host="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_7
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "type=seek,seq="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->seqNum:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->seqNum:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "ts="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "tz="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 688
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "t="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->playbackStartTime:J

    sub-long v6, v2, v6

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    long-to-float v6, v6

    .line 690
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ",pos="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-float v7, p1

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_8
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "bytes="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 693
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-eqz v4, :cond_a

    const-string/jumbo v4, ",load_state=buffering"

    :goto_9
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 679
    invoke-direct {p0, v5, v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->sendVigoEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 651
    :cond_2
    const-string/jumbo v4, ""

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v4, ""

    goto/16 :goto_2

    .line 663
    :cond_4
    const-string/jumbo v4, ""

    goto/16 :goto_3

    :cond_5
    const-string/jumbo v4, ""

    goto/16 :goto_4

    .line 670
    :cond_6
    const-string/jumbo v4, ""

    goto/16 :goto_5

    .line 679
    :cond_7
    const-string/jumbo v4, ""

    goto/16 :goto_6

    :cond_8
    const-string/jumbo v4, ""

    goto/16 :goto_7

    .line 690
    :cond_9
    const-string/jumbo v4, ""

    goto :goto_8

    .line 693
    :cond_a
    const-string/jumbo v4, ""

    goto :goto_9
.end method

.method public setDataSourceAndPrepare(Ljava/lang/String;I)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "_quality"    # I

    .prologue
    .line 77
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SET DATA SOURCE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput p2, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->quality:I

    .line 79
    iput-object p1, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->url:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->doSetDataSorce()V

    .line 83
    :cond_0
    return-void
.end method

.method public stopAndRelease()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x447a0000    # 1000.0f

    .line 711
    :try_start_0
    iget-boolean v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isQualityAdviserSupported:Z

    if-eqz v5, :cond_0

    .line 712
    const/4 v5, 0x0

    iput v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->heartbeatTicker:I

    .line 714
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 715
    .local v0, "currentTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 718
    .local v2, "playbackTime":J
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "duration="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v12

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "quality="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->quality:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ",host="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->host:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "type=stop,seq="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->seqNum:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->seqNum:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "ts="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "tz="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 727
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "t="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->playbackStartTime:J

    sub-long v8, v2, v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    long-to-float v7, v8

    .line 729
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isPrepared:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ",pos="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    .line 730
    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v12

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ",buffer="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufferPct:Ljava/lang/Integer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "bytes="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 737
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->bufStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_5

    const-string/jumbo v5, ",load_state=buffering"

    :goto_4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 718
    invoke-direct {p0, v6, v5}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->sendVigoEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 745
    :try_start_2
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/vkcoffee/android/VKApplication;->getVigo(Landroid/content/Context;)Lcom/vkcoffee/android/media/Vigo;

    move-result-object v4

    .line 746
    .local v4, "vigo":Lcom/vkcoffee/android/media/Vigo;
    invoke-virtual {v4}, Lcom/vkcoffee/android/media/Vigo;->collectNetworkChangesOFF()V

    .line 750
    .end local v0    # "currentTime":J
    .end local v2    # "playbackTime":J
    .end local v4    # "vigo":Lcom/vkcoffee/android/media/Vigo;
    :cond_0
    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 754
    :goto_5
    :try_start_3
    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 757
    :goto_6
    iput-boolean v13, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->isPrepared:Z

    .line 758
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    .line 759
    return-void

    .line 718
    .restart local v0    # "currentTime":J
    .restart local v2    # "playbackTime":J
    :cond_1
    :try_start_4
    const-string/jumbo v5, ""

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v5, ""

    goto/16 :goto_1

    .line 730
    :cond_3
    const-string/jumbo v5, ""

    goto :goto_2

    :cond_4
    const-string/jumbo v5, ""

    goto :goto_3

    .line 737
    :cond_5
    const-string/jumbo v5, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 745
    :catchall_0
    move-exception v5

    :try_start_5
    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/vkcoffee/android/VKApplication;->getVigo(Landroid/content/Context;)Lcom/vkcoffee/android/media/Vigo;

    move-result-object v4

    .line 746
    .restart local v4    # "vigo":Lcom/vkcoffee/android/media/Vigo;
    invoke-virtual {v4}, Lcom/vkcoffee/android/media/Vigo;->collectNetworkChangesOFF()V

    .line 747
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 751
    .end local v0    # "currentTime":J
    .end local v2    # "playbackTime":J
    .end local v4    # "vigo":Lcom/vkcoffee/android/media/Vigo;
    :catch_0
    move-exception v5

    goto :goto_5

    .line 755
    :catch_1
    move-exception v5

    goto :goto_6
.end method

.method protected surfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 781
    const-string/jumbo v0, "vk"

    const-string/jumbo v1, "surface texture destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 785
    :cond_0
    return-void
.end method

.method protected surfaceTextureReady(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 763
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surface texture ready, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", player="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->dataSourceSet:Z

    if-nez v0, :cond_0

    .line 772
    invoke-direct {p0}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->doSetDataSorce()V

    .line 773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->dataSourceSet:Z

    .line 777
    :goto_0
    return-void

    .line 775
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->updateTexture()V

    goto :goto_0
.end method

.method updateTexture()V
    .locals 3

    .prologue
    .line 796
    iget-object v0, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 797
    return-void
.end method

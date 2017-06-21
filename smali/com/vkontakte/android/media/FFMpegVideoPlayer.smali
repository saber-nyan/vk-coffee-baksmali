.class public Lcom/vkontakte/android/media/FFMpegVideoPlayer;
.super Lcom/vkcoffee/android/media/AbsVideoPlayer;
.source "FFMpegVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;
    }
.end annotation


# instance fields
.field private completed:Z

.field private conn:Ljava/net/HttpURLConnection;

.field private height:I

.field private in:Ljava/io/DataInputStream;

.field private ioOffset:I

.field private renderThread:Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;

.field private running:Z

.field private srcUrl:Ljava/net/URL;

.field private texture:Landroid/graphics/SurfaceTexture;

.field private width:I

.field private windowH:I

.field private windowW:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 295
    const-string v0, "vkplayer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/TextureView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "texView"    # Landroid/view/TextureView;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 299
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/media/AbsVideoPlayer;-><init>(Landroid/content/Context;Landroid/view/TextureView;)V

    .line 32
    iput-boolean v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->completed:Z

    .line 34
    iput v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->height:I

    .line 36
    iput v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->ioOffset:I

    .line 38
    iput-boolean v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->running:Z

    .line 41
    iput v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->width:I

    .line 42
    iput v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->windowH:I

    .line 43
    iput v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->windowW:I

    .line 300
    new-instance v0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$1;-><init>(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)V

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 306
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->width:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->height:I

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->conn:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/media/FFMpegVideoPlayer;Ljava/io/DataInputStream;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->in:Ljava/io/DataInputStream;

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/media/FFMpegVideoPlayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->doPlay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->running:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->windowW:I

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->windowH:I

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->fillFrame()V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/media/FFMpegVideoPlayer;I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->windowW:I

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/media/FFMpegVideoPlayer;I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->windowH:I

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/media/FFMpegVideoPlayer;Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->srcUrl:Ljava/net/URL;

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)Ljava/net/URL;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->srcUrl:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/media/FFMpegVideoPlayer;Ljava/net/HttpURLConnection;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->conn:Ljava/net/HttpURLConnection;

    return-void
.end method

.method private native doPlay(Ljava/lang/String;)V
.end method

.method private native fillFrame()V
.end method

.method private ioRead([BI)I
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "len"    # I

    .prologue
    const/4 v2, 0x0

    .line 393
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->in:Ljava/io/DataInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, p2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 394
    .local v0, "read":I
    iget v3, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->ioOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->ioOffset:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v0    # "read":I
    :goto_0
    return v0

    .line 396
    :catch_0
    move-exception v1

    .line 397
    .local v1, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    .line 398
    goto :goto_0
.end method

.method private ioSeek(JI)J
    .locals 5
    .param p1, "offset"    # J
    .param p3, "whence"    # I

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "result":Z
    if-nez p3, :cond_0

    .line 405
    long-to-int v1, p1

    invoke-direct {p0, v1}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->reconnectAndSeek(I)Z

    move-result v0

    .line 407
    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 408
    iget v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->ioOffset:I

    long-to-int v2, p1

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->reconnectAndSeek(I)Z

    move-result v0

    .line 410
    :cond_1
    if-eqz v0, :cond_2

    .line 411
    iget v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->ioOffset:I

    int-to-long v2, v1

    .line 413
    :goto_0
    return-wide v2

    :cond_2
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private native nativeGetPosition()D
.end method

.method private native nativePause()V
.end method

.method private native nativeResume()V
.end method

.method private native nativeSeek(I)V
.end method

.method private native nativeStop()V
.end method

.method private playbackCompleted()V
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->completed:Z

    .line 418
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    invoke-interface {v0}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onPlaybackCompleted()V

    .line 421
    :cond_0
    return-void
.end method

.method private playerReady(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    invoke-interface {v0, p1, p2}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onPlayerReady(II)V

    .line 367
    :cond_0
    iput p1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->width:I

    .line 368
    iput p2, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->height:I

    .line 369
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/media/FFMpegVideoPlayer$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$3;-><init>(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 381
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 382
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->texture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->texture:Landroid/graphics/SurfaceTexture;

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->renderThread:Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->texture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 386
    new-instance v0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;

    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->texture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;-><init>(Lcom/vkontakte/android/media/FFMpegVideoPlayer;Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->renderThread:Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;

    .line 387
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->renderThread:Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->start()V

    .line 389
    :cond_2
    return-void
.end method

.method private reconnectAndSeek(I)Z
    .locals 5
    .param p1, "offset"    # I

    .prologue
    .line 424
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reconnect and seek to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    invoke-interface {v1}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onEndOfBuffer()V

    .line 429
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 430
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 431
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->srcUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->conn:Ljava/net/HttpURLConnection;

    .line 432
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->conn:Ljava/net/HttpURLConnection;

    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bytes="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 434
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->in:Ljava/io/DataInputStream;

    .line 435
    iput p1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->ioOffset:I

    .line 436
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offset after seek is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    if-eqz v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    invoke-interface {v1}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onPlaybackResumed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :cond_1
    const/4 v1, 0x1

    .line 446
    :goto_0
    return v1

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    if-eqz v1, :cond_2

    .line 444
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onError(I)V

    .line 446
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPosition()I
    .locals 4

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->nativeGetPosition()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->nativePause()V

    .line 333
    return-void
.end method

.method public play()V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->nativeResume()V

    .line 329
    return-void
.end method

.method public seek(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 336
    div-int/lit16 v0, p1, 0x3e8

    invoke-direct {p0, v0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->nativeSeek(I)V

    .line 337
    return-void
.end method

.method public setDataSourceAndPrepare(Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "unused"    # I

    .prologue
    .line 309
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/media/FFMpegVideoPlayer$2;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$2;-><init>(Lcom/vkontakte/android/media/FFMpegVideoPlayer;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 324
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 325
    return-void
.end method

.method public stopAndRelease()V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->running:Z

    .line 341
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->renderThread:Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->renderThread:Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->finish()V

    .line 344
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->nativeStop()V

    .line 345
    return-void
.end method

.method protected surfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 352
    return-void
.end method

.method protected surfaceTextureReady(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->updateTexture()V

    .line 349
    return-void
.end method

.method updateTexture()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->texture:Landroid/graphics/SurfaceTexture;

    .line 360
    const-string v0, "vk"

    const-string v1, "surface texture ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void
.end method

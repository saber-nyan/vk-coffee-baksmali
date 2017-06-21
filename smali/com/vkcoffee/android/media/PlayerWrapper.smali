.class public Lcom/vkcoffee/android/media/PlayerWrapper;
.super Ljava/lang/Object;
.source "PlayerWrapper.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/media/PlayerWrapper$PlayerStateListener;
    }
.end annotation


# static fields
.field public static final ERROR_CANT_DECODE:I = 0x1

.field public static final ERROR_CODEC_NOT_FOUND:I = 0x2

.field public static final ERROR_FILE_NOT_FOUND:I = 0x3

.field public static final ERROR_NETWORK:I = -0x1

.field public static final ERROR_NOT_PROCESSED:I = 0x4

.field public static final ERROR_UNSUPPORTED_OS:I


# instance fields
.field private context:Landroid/content/Context;

.field private dataSource:Ljava/lang/String;

.field private holder:Landroid/view/SurfaceHolder;

.field private hwPlayer:Landroid/media/MediaPlayer;

.field private hwSurfaceSet:Z

.field private listener:Lcom/vkcoffee/android/media/PlayerWrapper$PlayerStateListener;

.field private nativePlayer:Lcom/vkcoffee/android/media/NativeVideoPlayer;

.field private prevBufPercent:I

.field private seekTo:I

.field private surfaceReady:Z

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private textureView:Landroid/view/TextureView;

.field private useHWPlayer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->useHWPlayer:Z

    .line 23
    iput-boolean v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->surfaceReady:Z

    .line 26
    iput-boolean v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwSurfaceSet:Z

    .line 35
    iput v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->prevBufPercent:I

    .line 36
    iput v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->seekTo:I

    .line 39
    iput-object p1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/TextureView;)V
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "tv"    # Landroid/view/TextureView;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->useHWPlayer:Z

    .line 23
    iput-boolean v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->surfaceReady:Z

    .line 26
    iput-boolean v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwSurfaceSet:Z

    .line 35
    iput v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->prevBufPercent:I

    .line 36
    iput v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->seekTo:I

    .line 45
    iput-object p1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->textureView:Landroid/view/TextureView;

    .line 47
    new-instance v0, Lcom/vkcoffee/android/media/PlayerWrapper$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/media/PlayerWrapper$1;-><init>(Lcom/vkcoffee/android/media/PlayerWrapper;)V

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 78
    return-void
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/media/PlayerWrapper;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/PlayerWrapper;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/media/PlayerWrapper;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/PlayerWrapper;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/media/PlayerWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/PlayerWrapper;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayerPrepared()V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/media/PlayerWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/PlayerWrapper;

    .prologue
    .line 14
    iget v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->prevBufPercent:I

    return v0
.end method

.method static synthetic access$302(Lcom/vkcoffee/android/media/PlayerWrapper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/PlayerWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->prevBufPercent:I

    return p1
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/media/PlayerWrapper;)Lcom/vkcoffee/android/media/PlayerWrapper$PlayerStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/PlayerWrapper;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->listener:Lcom/vkcoffee/android/media/PlayerWrapper$PlayerStateListener;

    return-object v0
.end method

.method private hwPlayerPrepared()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->listener:Lcom/vkcoffee/android/media/PlayerWrapper$PlayerStateListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->listener:Lcom/vkcoffee/android/media/PlayerWrapper$PlayerStateListener;

    iget-object v1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/media/PlayerWrapper$PlayerStateListener;->onPlayerReady(II)V

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/media/PlayerWrapper$7;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/media/PlayerWrapper$7;-><init>(Lcom/vkcoffee/android/media/PlayerWrapper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 223
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 224
    iget v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->seekTo:I

    if-lez v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->seekTo:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->seekTo:I

    .line 228
    :cond_1
    return-void
.end method

.method private initHWPlayer(Ljava/lang/String;)V
    .locals 3
    .param p1, "ds"    # Ljava/lang/String;

    .prologue
    .line 101
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    .line 102
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 103
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/vkcoffee/android/media/PlayerWrapper$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/media/PlayerWrapper$2;-><init>(Lcom/vkcoffee/android/media/PlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 109
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/vkcoffee/android/media/PlayerWrapper$3;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/media/PlayerWrapper$3;-><init>(Lcom/vkcoffee/android/media/PlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 122
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/vkcoffee/android/media/PlayerWrapper$4;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/media/PlayerWrapper$4;-><init>(Lcom/vkcoffee/android/media/PlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 130
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/vkcoffee/android/media/PlayerWrapper$5;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/media/PlayerWrapper$5;-><init>(Lcom/vkcoffee/android/media/PlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 142
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/vkcoffee/android/media/PlayerWrapper$6;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/media/PlayerWrapper$6;-><init>(Lcom/vkcoffee/android/media/PlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 158
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initNativePlayer(Ljava/lang/String;)V
    .locals 0
    .param p1, "ds"    # Ljava/lang/String;

    .prologue
    .line 197
    return-void
.end method


# virtual methods
.method public getDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->dataSource:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->useHWPlayer:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 265
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->nativePlayer:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-virtual {v0}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->getPosition()I

    move-result v0

    goto :goto_0
.end method

.method public init(Ljava/lang/String;)V
    .locals 4
    .param p1, "ds"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 81
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, "apiLevel":I
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const-string/jumbo v1, ".flv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    :cond_0
    iput-boolean v2, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->useHWPlayer:Z

    .line 84
    if-ge v0, v3, :cond_1

    .line 85
    iget-object v1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 87
    :cond_1
    iput-object p1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->dataSource:Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/media/PlayerWrapper;->initNativePlayer(Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 90
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->useHWPlayer:Z

    .line 91
    if-ge v0, v3, :cond_3

    .line 92
    iget-object v1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 94
    :cond_3
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/media/PlayerWrapper;->initHWPlayer(Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->dataSource:Ljava/lang/String;

    goto :goto_0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->useHWPlayer:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->useHWPlayer:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->nativePlayer:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-virtual {v0}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->pause()V

    goto :goto_0
.end method

.method public play()V
    .locals 2

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->useHWPlayer:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 233
    iget-boolean v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->surfaceReady:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 243
    :cond_0
    return-void
.end method

.method public seek(I)V
    .locals 2
    .param p1, "sec"    # I

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->useHWPlayer:Z

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->nativePlayer:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->seek(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/vkcoffee/android/media/PlayerWrapper$PlayerStateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkcoffee/android/media/PlayerWrapper$PlayerStateListener;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->listener:Lcom/vkcoffee/android/media/PlayerWrapper$PlayerStateListener;

    .line 286
    return-void
.end method

.method public stopAndRelease()V
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->useHWPlayer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    .line 282
    :cond_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    goto :goto_1

    .line 272
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 311
    const-string/jumbo v0, "vk"

    const-string/jumbo v1, "==== SURFACE CHANGED!!"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 318
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->surfaceReady:Z

    .line 319
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, "==== SURFACE CREATED!!"

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iput-object p1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    .line 323
    iget-object v1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 324
    const/4 v0, 0x0

    .line 326
    .local v0, "p":Z
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 329
    :goto_0
    if-nez v0, :cond_1

    .line 330
    iget-object v1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 348
    .end local v0    # "p":Z
    :cond_0
    :goto_1
    return-void

    .line 332
    .restart local v0    # "p":Z
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->seekTo:I

    .line 333
    iget-object v1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 343
    iget-object v1, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->dataSource:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/media/PlayerWrapper;->initHWPlayer(Ljava/lang/String;)V

    goto :goto_1

    .line 327
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x0

    .line 352
    const-string/jumbo v0, "vk"

    const-string/jumbo v1, "==== SURFACE DESTROYED!!"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->surfaceReady:Z

    .line 354
    iput-object v2, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    .line 355
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 358
    :cond_0
    return-void
.end method

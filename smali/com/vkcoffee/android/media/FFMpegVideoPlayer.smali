.class public Lcom/vkcoffee/android/media/FFMpegVideoPlayer;
.super Lcom/vkcoffee/android/media/AbsVideoPlayer;
.source "FFMpegVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;
    }
.end annotation


# instance fields
.field private completed:Z

.field private conn:Ljava/net/HttpURLConnection;

.field private height:I

.field private in:Ljava/io/DataInputStream;

.field private ioOffset:I

.field private renderThread:Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;

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
    .line 32
    const-string/jumbo v0, "vkplayer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/TextureView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "texView"    # Landroid/view/TextureView;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/media/AbsVideoPlayer;-><init>(Landroid/content/Context;Landroid/view/TextureView;)V

    .line 36
    iput v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->width:I

    iput v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->height:I

    .line 39
    iput v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->ioOffset:I

    .line 42
    iput-boolean v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->running:Z

    .line 43
    iput-boolean v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->completed:Z

    .line 44
    iput v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->windowW:I

    iput v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->windowH:I

    .line 48
    new-instance v0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$1;-><init>(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)V

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    .prologue
    .line 29
    iget v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->windowW:I

    return v0
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/FFMpegVideoPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->windowW:I

    return p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    .prologue
    .line 29
    iget v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->windowH:I

    return v0
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/FFMpegVideoPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->windowH:I

    return p1
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->srcUrl:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;Ljava/net/URL;)Ljava/net/URL;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/FFMpegVideoPlayer;
    .param p1, "x1"    # Ljava/net/URL;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->srcUrl:Ljava/net/URL;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->conn:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/FFMpegVideoPlayer;
    .param p1, "x1"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->conn:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method static synthetic access$402(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;Ljava/io/DataInputStream;)Ljava/io/DataInputStream;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/FFMpegVideoPlayer;
    .param p1, "x1"    # Ljava/io/DataInputStream;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->in:Ljava/io/DataInputStream;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/FFMpegVideoPlayer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->doPlay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->running:Z

    return v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    .prologue
    .line 29
    iget v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->width:I

    return v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    .prologue
    .line 29
    iget v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->height:I

    return v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->fillFrame()V

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

    .line 167
    :try_start_0
    iget-object v3, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->in:Ljava/io/DataInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, p2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 168
    .local v0, "read":I
    iget v3, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->ioOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->ioOffset:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0    # "read":I
    :goto_0
    return v0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "vk"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    .line 173
    goto :goto_0
.end method

.method private ioSeek(JI)J
    .locals 5
    .param p1, "offset"    # J
    .param p3, "whence"    # I

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "result":Z
    if-nez p3, :cond_0

    .line 179
    long-to-int v1, p1

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->reconnectAndSeek(I)Z

    move-result v0

    .line 181
    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 182
    iget v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->ioOffset:I

    long-to-int v2, p1

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->reconnectAndSeek(I)Z

    move-result v0

    .line 184
    :cond_1
    if-nez v0, :cond_2

    .line 185
    const-wide/16 v2, -0x1

    .line 187
    :goto_0
    return-wide v2

    :cond_2
    iget v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->ioOffset:I

    int-to-long v2, v1

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
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->completed:Z

    .line 192
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    invoke-interface {v0}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onPlaybackCompleted()V

    .line 195
    :cond_0
    return-void
.end method

.method private playerReady(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    invoke-interface {v0, p1, p2}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onPlayerReady(II)V

    .line 141
    :cond_0
    iput p1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->width:I

    .line 142
    iput p2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->height:I

    .line 143
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$3;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$3;-><init>(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 156
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->texture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->texture:Landroid/graphics/SurfaceTexture;

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->renderThread:Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->texture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 160
    new-instance v0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;

    iget-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->texture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;-><init>(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->renderThread:Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;

    .line 161
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->renderThread:Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;

    invoke-virtual {v0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->start()V

    .line 163
    :cond_2
    return-void
.end method

.method private reconnectAndSeek(I)Z
    .locals 5
    .param p1, "offset"    # I

    .prologue
    .line 198
    const-string/jumbo v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reconnect and seek to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    invoke-interface {v1}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onEndOfBuffer()V

    .line 203
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 204
    iget-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 205
    iget-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->srcUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->conn:Ljava/net/HttpURLConnection;

    .line 206
    iget-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->conn:Ljava/net/HttpURLConnection;

    const-string/jumbo v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 208
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->in:Ljava/io/DataInputStream;

    .line 209
    iput p1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->ioOffset:I

    .line 210
    const-string/jumbo v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "offset after seek is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    invoke-interface {v1}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onPlaybackResumed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    iget-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    if-eqz v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onError(I)V

    .line 219
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPosition()I
    .locals 4

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->nativeGetPosition()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->nativePause()V

    .line 86
    return-void
.end method

.method public play()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->nativeResume()V

    .line 81
    return-void
.end method

.method public seek(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 90
    div-int/lit16 v0, p1, 0x3e8

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->nativeSeek(I)V

    .line 91
    return-void
.end method

.method public setDataSourceAndPrepare(Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "unused"    # I

    .prologue
    .line 59
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$2;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$2;-><init>(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 76
    return-void
.end method

.method public stopAndRelease()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->running:Z

    .line 96
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->renderThread:Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->renderThread:Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;

    invoke-virtual {v0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->finish()V

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->nativeStop()V

    .line 100
    return-void
.end method

.method protected surfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 110
    return-void
.end method

.method protected surfaceTextureReady(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->updateTexture()V

    .line 105
    return-void
.end method

.method updateTexture()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->texture:Landroid/graphics/SurfaceTexture;

    .line 120
    const-string/jumbo v0, "vk"

    const-string/jumbo v1, "surface texture ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

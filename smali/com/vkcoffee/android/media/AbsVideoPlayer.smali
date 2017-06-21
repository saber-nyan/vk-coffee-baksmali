.class public abstract Lcom/vkcoffee/android/media/AbsVideoPlayer;
.super Ljava/lang/Object;
.source "AbsVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;
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
.field protected context:Landroid/content/Context;

.field protected listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

.field protected textureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/TextureView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "texView"    # Landroid/view/TextureView;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/vkcoffee/android/media/AbsVideoPlayer;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/vkcoffee/android/media/AbsVideoPlayer;->textureView:Landroid/view/TextureView;

    .line 28
    new-instance v0, Lcom/vkcoffee/android/media/AbsVideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/media/AbsVideoPlayer$1;-><init>(Lcom/vkcoffee/android/media/AbsVideoPlayer;)V

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 52
    return-void
.end method

.method public static createPlayer(Landroid/content/Context;Landroid/view/TextureView;Ljava/lang/String;)Lcom/vkcoffee/android/media/AbsVideoPlayer;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textureView"    # Landroid/view/TextureView;
    .param p2, "dataSource"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 76
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".flv"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    :try_start_0
    new-instance v2, Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;-><init>(Landroid/content/Context;Landroid/view/TextureView;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-object v2

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "x":Ljava/lang/Throwable;
    const-string/jumbo v2, "vk"

    const-string/jumbo v3, "Error creating video player"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    const/4 v2, 0x0

    goto :goto_0

    .line 84
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_0
    new-instance v2, Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/media/NativeVideoPlayer;-><init>(Landroid/content/Context;Landroid/view/TextureView;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract getPosition()I
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract seek(I)V
.end method

.method public abstract setDataSourceAndPrepare(Ljava/lang/String;I)V
.end method

.method public setPlayerStateListener(Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vkcoffee/android/media/AbsVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    .line 56
    return-void
.end method

.method public abstract stopAndRelease()V
.end method

.method protected abstract surfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)V
.end method

.method protected abstract surfaceTextureReady(Landroid/graphics/SurfaceTexture;)V
.end method

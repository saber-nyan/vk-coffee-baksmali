.class public Lcom/vk/attachpicker/widget/TextureVideoView;
.super Landroid/view/TextureView;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAudioSession:I

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurface:Landroid/view/Surface;

.field mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 54
    const-string/jumbo v0, "TextureVideoView"

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->TAG:Ljava/lang/String;

    .line 73
    iput v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCurrentState:I

    .line 74
    iput v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mTargetState:I

    .line 77
    iput-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mSurface:Landroid/view/Surface;

    .line 78
    iput-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 318
    new-instance v0, Lcom/vk/attachpicker/widget/TextureVideoView$1;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/widget/TextureVideoView$1;-><init>(Lcom/vk/attachpicker/widget/TextureVideoView;)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 330
    new-instance v0, Lcom/vk/attachpicker/widget/TextureVideoView$2;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/widget/TextureVideoView$2;-><init>(Lcom/vk/attachpicker/widget/TextureVideoView;)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 376
    new-instance v0, Lcom/vk/attachpicker/widget/TextureVideoView$3;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/widget/TextureVideoView$3;-><init>(Lcom/vk/attachpicker/widget/TextureVideoView;)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 390
    new-instance v0, Lcom/vk/attachpicker/widget/TextureVideoView$4;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/widget/TextureVideoView$4;-><init>(Lcom/vk/attachpicker/widget/TextureVideoView;)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 400
    new-instance v0, Lcom/vk/attachpicker/widget/TextureVideoView$5;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/widget/TextureVideoView$5;-><init>(Lcom/vk/attachpicker/widget/TextureVideoView;)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 452
    new-instance v0, Lcom/vk/attachpicker/widget/TextureVideoView$6;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/widget/TextureVideoView$6;-><init>(Lcom/vk/attachpicker/widget/TextureVideoView;)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 504
    new-instance v0, Lcom/vk/attachpicker/widget/TextureVideoView$7;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/widget/TextureVideoView$7;-><init>(Lcom/vk/attachpicker/widget/TextureVideoView;)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 95
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->initVideoView()V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vk/attachpicker/widget/TextureVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->initVideoView()V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const-string/jumbo v0, "TextureVideoView"

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->TAG:Ljava/lang/String;

    .line 73
    iput v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCurrentState:I

    .line 74
    iput v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mTargetState:I

    .line 77
    iput-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mSurface:Landroid/view/Surface;

    .line 78
    iput-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 318
    new-instance v0, Lcom/vk/attachpicker/widget/TextureVideoView$1;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/widget/TextureVideoView$1;-><init>(Lcom/vk/attachpicker/widget/TextureVideoView;)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 330
    new-instance v0, Lcom/vk/attachpicker/widget/TextureVideoView$2;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/widget/TextureVideoView$2;-><init>(Lcom/vk/attachpicker/widget/TextureVideoView;)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 376
    new-instance v0, Lcom/vk/attachpicker/widget/TextureVideoView$3;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/widget/TextureVideoView$3;-><init>(Lcom/vk/attachpicker/widget/TextureVideoView;)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 390
    new-instance v0, Lcom/vk/attachpicker/widget/TextureVideoView$4;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/widget/TextureVideoView$4;-><init>(Lcom/vk/attachpicker/widget/TextureVideoView;)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 400
    new-instance v0, Lcom/vk/attachpicker/widget/TextureVideoView$5;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/widget/TextureVideoView$5;-><init>(Lcom/vk/attachpicker/widget/TextureVideoView;)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 452
    new-instance v0, Lcom/vk/attachpicker/widget/TextureVideoView$6;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/widget/TextureVideoView$6;-><init>(Lcom/vk/attachpicker/widget/TextureVideoView;)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 504
    new-instance v0, Lcom/vk/attachpicker/widget/TextureVideoView$7;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/widget/TextureVideoView$7;-><init>(Lcom/vk/attachpicker/widget/TextureVideoView;)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 105
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->initVideoView()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/widget/TextureVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;

    .prologue
    .line 52
    iget v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Lcom/vk/attachpicker/widget/TextureVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/widget/TextureVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;

    .prologue
    .line 52
    iget v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/vk/attachpicker/widget/TextureVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;

    .prologue
    .line 52
    iget v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/vk/attachpicker/widget/TextureVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$102(Lcom/vk/attachpicker/widget/TextureVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vk/attachpicker/widget/TextureVideoView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/vk/attachpicker/widget/TextureVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1600(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/vk/attachpicker/widget/TextureVideoView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;
    .param p1, "x1"    # Landroid/view/Surface;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/vk/attachpicker/widget/TextureVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$1800(Lcom/vk/attachpicker/widget/TextureVideoView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/widget/TextureVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/vk/attachpicker/widget/TextureVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$302(Lcom/vk/attachpicker/widget/TextureVideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$402(Lcom/vk/attachpicker/widget/TextureVideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$502(Lcom/vk/attachpicker/widget/TextureVideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$600(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/widget/MediaController;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vk/attachpicker/widget/TextureVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/TextureVideoView;

    .prologue
    .line 52
    iget v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 309
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 311
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 313
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 314
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 316
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 312
    goto :goto_0
.end method

.method private initVideoView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 189
    iput v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoWidth:I

    .line 190
    iput v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoHeight:I

    .line 191
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 192
    invoke-virtual {p0, v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->setFocusable(Z)V

    .line 193
    invoke-virtual {p0, v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->setFocusableInTouchMode(Z)V

    .line 194
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->requestFocus()Z

    .line 195
    iput v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCurrentState:I

    .line 196
    iput v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mTargetState:I

    .line 197
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 693
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo()V
    .locals 9

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 249
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mSurface:Landroid/view/Surface;

    if-nez v2, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    invoke-direct {p0, v8}, Lcom/vk/attachpicker/widget/TextureVideoView;->release(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 258
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v4, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 261
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 263
    iget v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mAudioSession:I

    if-eqz v2, :cond_2

    .line 264
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mAudioSession:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 268
    :goto_1
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 269
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 270
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 271
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 272
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 273
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 274
    const/4 v2, 0x0

    iput v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCurrentBufferPercentage:I

    .line 275
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 276
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 277
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 278
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 279
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 283
    const/4 v2, 0x1

    iput v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCurrentState:I

    .line 284
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, "ex":Ljava/io/IOException;
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    iput v7, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCurrentState:I

    .line 288
    iput v7, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mTargetState:I

    .line 289
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v6, v8}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 266
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v2

    iput v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mAudioSession:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 291
    :catch_1
    move-exception v1

    .line 292
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    iput v7, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCurrentState:I

    .line 294
    iput v7, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mTargetState:I

    .line 295
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v6, v8}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private release(Z)V
    .locals 4
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 545
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 547
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 548
    iput-object v3, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 549
    iput v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCurrentState:I

    .line 550
    if-eqz p1, :cond_0

    .line 551
    iput v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mTargetState:I

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 554
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 556
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 622
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 711
    iget-boolean v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public getAudioSessionId()I
    .locals 2

    .prologue
    .line 715
    iget v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mAudioSession:I

    if-nez v1, :cond_0

    .line 716
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 717
    .local v0, "foo":Landroid/media/MediaPlayer;
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mAudioSession:I

    .line 718
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 720
    .end local v0    # "foo":Landroid/media/MediaPlayer;
    :cond_0
    iget v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mAudioSession:I

    return v1
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 687
    iget v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCurrentBufferPercentage:I

    .line 689
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 666
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 658
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 175
    const-class v0, Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 181
    const-class v0, Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 577
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    const/16 v2, 0xa4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x52

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    move v0, v1

    .line 584
    .local v0, "isKeyCodeSupported":Z
    :goto_0
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_8

    .line 585
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_4

    .line 587
    :cond_0
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 588
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->pause()V

    .line 589
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 613
    :cond_1
    :goto_1
    return v1

    .line 577
    .end local v0    # "isKeyCodeSupported":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 591
    .restart local v0    # "isKeyCodeSupported":Z
    :cond_3
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->start()V

    .line 592
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 595
    :cond_4
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_5

    .line 596
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 597
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->start()V

    .line 598
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 601
    :cond_5
    const/16 v2, 0x56

    if-eq p1, v2, :cond_6

    const/16 v2, 0x7f

    if-ne p1, v2, :cond_7

    .line 603
    :cond_6
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 604
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->pause()V

    .line 605
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    goto :goto_1

    .line 609
    :cond_7
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->toggleMediaControlsVisiblity()V

    .line 613
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    .line 113
    iget v6, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoWidth:I

    invoke-static {v6, p1}, Lcom/vk/attachpicker/widget/TextureVideoView;->getDefaultSize(II)I

    move-result v3

    .line 114
    .local v3, "width":I
    iget v6, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoHeight:I

    invoke-static {v6, p2}, Lcom/vk/attachpicker/widget/TextureVideoView;->getDefaultSize(II)I

    move-result v0

    .line 115
    .local v0, "height":I
    iget v6, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoWidth:I

    if-lez v6, :cond_0

    iget v6, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoHeight:I

    if-lez v6, :cond_0

    .line 117
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 118
    .local v4, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 119
    .local v5, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 120
    .local v1, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 122
    .local v2, "heightSpecSize":I
    if-ne v4, v7, :cond_2

    if-ne v1, v7, :cond_2

    .line 124
    move v3, v5

    .line 125
    move v0, v2

    .line 128
    iget v6, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoHeight:I

    mul-int/2addr v7, v3

    if-ge v6, v7, :cond_1

    .line 130
    iget v6, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoHeight:I

    div-int v3, v6, v7

    .line 169
    .end local v1    # "heightSpecMode":I
    .end local v2    # "heightSpecSize":I
    .end local v4    # "widthSpecMode":I
    .end local v5    # "widthSpecSize":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->setMeasuredDimension(II)V

    .line 170
    return-void

    .line 131
    .restart local v1    # "heightSpecMode":I
    .restart local v2    # "heightSpecSize":I
    .restart local v4    # "widthSpecMode":I
    .restart local v5    # "widthSpecSize":I
    :cond_1
    iget v6, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoHeight:I

    mul-int/2addr v7, v3

    if-le v6, v7, :cond_0

    .line 133
    iget v6, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoHeight:I

    mul-int/2addr v6, v3

    iget v7, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoWidth:I

    div-int v0, v6, v7

    goto :goto_0

    .line 135
    :cond_2
    if-ne v4, v7, :cond_3

    .line 137
    move v3, v5

    .line 138
    iget v6, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoHeight:I

    mul-int/2addr v6, v3

    iget v7, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoWidth:I

    div-int v0, v6, v7

    .line 139
    if-ne v1, v8, :cond_0

    if-le v0, v2, :cond_0

    .line 141
    move v0, v2

    goto :goto_0

    .line 143
    :cond_3
    if-ne v1, v7, :cond_4

    .line 145
    move v0, v2

    .line 146
    iget v6, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoHeight:I

    div-int v3, v6, v7

    .line 147
    if-ne v4, v8, :cond_0

    if-le v3, v5, :cond_0

    .line 149
    move v3, v5

    goto :goto_0

    .line 153
    :cond_4
    iget v3, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoWidth:I

    .line 154
    iget v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoHeight:I

    .line 155
    if-ne v1, v8, :cond_5

    if-le v0, v2, :cond_5

    .line 157
    move v0, v2

    .line 158
    iget v6, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoHeight:I

    div-int v3, v6, v7

    .line 160
    :cond_5
    if-ne v4, v8, :cond_0

    if-le v3, v5, :cond_0

    .line 162
    move v3, v5

    .line 163
    iget v6, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoHeight:I

    mul-int/2addr v6, v3

    iget v7, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mVideoWidth:I

    div-int v0, v6, v7

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 561
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->toggleMediaControlsVisiblity()V

    .line 563
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 569
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->toggleMediaControlsVisiblity()V

    .line 571
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 635
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 638
    iput v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCurrentState:I

    .line 641
    :cond_0
    iput v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mTargetState:I

    .line 642
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 1
    .param p1, "desiredSize"    # I
    .param p2, "measureSpec"    # I

    .prologue
    .line 185
    invoke-static {p1, p2}, Lcom/vk/attachpicker/widget/TextureVideoView;->getDefaultSize(II)I

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->openVideo()V

    .line 650
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 673
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mSeekWhenPrepared:I

    .line 677
    :goto_0
    return-void

    .line 675
    :cond_0
    iput p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/widget/MediaController;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 304
    :cond_0
    iput-object p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaController:Landroid/widget/MediaController;

    .line 305
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->attachMediaController()V

    .line 306
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 479
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 492
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 502
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 468
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 206
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 215
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mUri:Landroid/net/Uri;

    .line 229
    iput-object p2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mHeaders:Ljava/util/Map;

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mSeekWhenPrepared:I

    .line 231
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->openVideo()V

    .line 232
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->requestLayout()V

    .line 233
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->invalidate()V

    .line 234
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 626
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 628
    iput v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCurrentState:I

    .line 630
    :cond_0
    iput v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mTargetState:I

    .line 631
    return-void
.end method

.method public stopPlayback()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 237
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 239
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 240
    iput-object v3, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 241
    iput v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mCurrentState:I

    .line 242
    iput v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView;->mTargetState:I

    .line 243
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/TextureVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 244
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 246
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->release(Z)V

    .line 646
    return-void
.end method

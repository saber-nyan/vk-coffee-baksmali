.class public Lcom/vk/attachpicker/widget/PagerVideoPlayer;
.super Landroid/widget/FrameLayout;
.source "PagerVideoPlayer.java"

# interfaces
.implements Lcom/vk/attachpicker/events/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/widget/PagerVideoPlayer$VideoProgress;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private onEverySecond:Ljava/lang/Runnable;

.field private playButton:Landroid/widget/ImageView;

.field private playerContainer:Landroid/widget/FrameLayout;

.field private final position:I

.field private final tempPauseListener:Lcom/vk/attachpicker/events/NotificationListener;

.field private final tempPlayListener:Lcom/vk/attachpicker/events/NotificationListener;

.field private final tempProgressListener:Lcom/vk/attachpicker/events/NotificationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/attachpicker/events/NotificationListener",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final videoPath:Ljava/lang/String;

.field private videoView:Lcom/vk/attachpicker/widget/TextureVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "position"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->handler:Landroid/os/Handler;

    .line 135
    new-instance v0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer$1;-><init>(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->onEverySecond:Ljava/lang/Runnable;

    .line 152
    invoke-static {p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)Lcom/vk/attachpicker/events/NotificationListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->tempPauseListener:Lcom/vk/attachpicker/events/NotificationListener;

    .line 159
    invoke-static {p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$2;->lambdaFactory$(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)Lcom/vk/attachpicker/events/NotificationListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->tempPlayListener:Lcom/vk/attachpicker/events/NotificationListener;

    .line 166
    invoke-static {p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$3;->lambdaFactory$(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)Lcom/vk/attachpicker/events/NotificationListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->tempProgressListener:Lcom/vk/attachpicker/events/NotificationListener;

    .line 31
    invoke-virtual {p2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoPath:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->position:I

    .line 33
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)Lcom/vk/attachpicker/widget/TextureVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    .prologue
    .line 18
    iget v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->position:I

    return v0
.end method

.method static synthetic access$200(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->onEverySecond:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkVideoView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 52
    iget-object v1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vk/attachpicker/widget/TextureVideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    .line 54
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 55
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 56
    iget-object v1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->playerContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    iget-object v2, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$5;->lambdaFactory$(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 64
    iget-object v1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$6;->lambdaFactory$(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 69
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x2

    .line 37
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->playerContainer:Landroid/widget/FrameLayout;

    .line 38
    iget-object v2, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->playerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->addView(Landroid/view/View;)V

    .line 40
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->playButton:Landroid/widget/ImageView;

    .line 41
    iget-object v2, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->playButton:Landroid/widget/ImageView;

    const v3, 0x7f020299

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 43
    .local v1, "playLp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 44
    iget-object v2, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, "clickOverlay":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->addView(Landroid/view/View;)V

    .line 48
    invoke-static {p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$4;->lambdaFactory$(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method private onInvisible()V
    .locals 3

    .prologue
    .line 114
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x5

    iget v2, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/events/NotificationCenter;->fireEvent(ILjava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->pause()V

    .line 117
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->suspend()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    .line 119
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->playerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->playButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    return-void
.end method

.method private onStart()V
    .locals 3

    .prologue
    .line 131
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x4

    iget v2, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/events/NotificationCenter;->fireEvent(ILjava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method

.method private onVisible()V
    .locals 4

    .prologue
    .line 106
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/vk/attachpicker/events/NotificationCenter;->addListener(ILcom/vk/attachpicker/events/NotificationListener;)V

    .line 107
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x6

    iget v2, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->position:I

    iget-object v3, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->tempPauseListener:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vk/attachpicker/events/NotificationCenter;->addListener(IILcom/vk/attachpicker/events/NotificationListener;)V

    .line 108
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x7

    iget v2, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->position:I

    iget-object v3, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->tempPlayListener:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vk/attachpicker/events/NotificationCenter;->addListener(IILcom/vk/attachpicker/events/NotificationListener;)V

    .line 109
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    const/16 v1, 0x8

    iget v2, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->position:I

    iget-object v3, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->tempProgressListener:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vk/attachpicker/events/NotificationCenter;->addListener(IILcom/vk/attachpicker/events/NotificationListener;)V

    .line 110
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->playButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    return-void
.end method

.method private playPause()V
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->checkVideoView()V

    .line 74
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->pause()V

    .line 80
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->playButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x5

    iget v2, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/events/NotificationCenter;->fireEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->start()V

    .line 84
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->playButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->onStart()V

    goto :goto_0
.end method


# virtual methods
.method synthetic lambda$checkVideoView$48(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->onStart()V

    .line 61
    invoke-static {p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$7;->lambdaFactory$(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/attachpicker/Picker;->run(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method synthetic lambda$checkVideoView$49(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->playButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x5

    iget v2, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/events/NotificationCenter;->fireEvent(ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method synthetic lambda$init$46(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->playPause()V

    return-void
.end method

.method synthetic lambda$new$50(IILjava/lang/Object;)V
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "eventId"    # I
    .param p3, "eventArgs"    # Ljava/lang/Object;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->pause()V

    .line 155
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    :cond_0
    return-void
.end method

.method synthetic lambda$new$51(IILjava/lang/Object;)V
    .locals 1
    .param p1, "eventType"    # I
    .param p2, "eventId"    # I
    .param p3, "eventArgs"    # Ljava/lang/Object;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->start()V

    .line 162
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->onStart()V

    .line 164
    :cond_0
    return-void
.end method

.method synthetic lambda$new$52(IILjava/lang/Float;)V
    .locals 3
    .param p1, "eventType"    # I
    .param p2, "eventId"    # I
    .param p3, "eventArgs"    # Ljava/lang/Float;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->getDuration()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->seekTo(I)V

    .line 170
    :cond_0
    return-void
.end method

.method synthetic lambda$null$47()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->seekTo(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 92
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->onVisible()V

    .line 93
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->onInvisible()V

    .line 98
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vk/attachpicker/events/NotificationCenter;->removeListener(Lcom/vk/attachpicker/events/NotificationListener;)V

    .line 99
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->tempPauseListener:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/events/NotificationCenter;->removeListener(Lcom/vk/attachpicker/events/NotificationListener;)V

    .line 100
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->tempPlayListener:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/events/NotificationCenter;->removeListener(Lcom/vk/attachpicker/events/NotificationListener;)V

    .line 101
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->tempProgressListener:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/events/NotificationCenter;->removeListener(Lcom/vk/attachpicker/events/NotificationListener;)V

    .line 102
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 103
    return-void
.end method

.method public onNotification(IILjava/lang/Object;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "eventId"    # I
    .param p3, "eventArgs"    # Ljava/lang/Object;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->onInvisible()V

    .line 127
    return-void
.end method

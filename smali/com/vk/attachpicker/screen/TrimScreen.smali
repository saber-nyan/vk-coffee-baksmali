.class public Lcom/vk/attachpicker/screen/TrimScreen;
.super Lcom/vk/attachpicker/simplescreen/BaseScreen;
.source "TrimScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/screen/TrimScreen$Delegate;
    }
.end annotation


# static fields
.field public static final MIN_TIME_FRAME:I = 0x3e8


# instance fields
.field private final UPDATE_STEP:I

.field private bottomShadow:Landroid/view/View;

.field private clickHandler:Landroid/view/View;

.field private closeButton:Landroid/view/View;

.field private closeButtonContainer:Landroid/view/View;

.field private container:Landroid/widget/FrameLayout;

.field private controlsEnabled:Z

.field private final delegate:Lcom/vk/attachpicker/screen/TrimScreen$Delegate;

.field private final handler:Landroid/os/Handler;

.field private leftProgressText:Landroid/widget/TextView;

.field private final locker:Lcom/vk/attachpicker/util/OrientationLocker;

.field private onEverySecond:Ljava/lang/Runnable;

.field private playButton:Landroid/view/View;

.field private prevProgress:F

.field private final preview:Landroid/graphics/Bitmap;

.field private previewView:Landroid/widget/ImageView;

.field private rightProgressText:Landroid/widget/TextView;

.field private seekOnNextStart:I

.field private shouldPlayOpenAnimation:Z

.field private timelineView:Lcom/vk/attachpicker/videotrim/VideoTimelineView;

.field private trimPanel:Landroid/view/View;

.field private videoDuration:I

.field private final videoPath:Ljava/lang/String;

.field private final videoUri:Landroid/net/Uri;

.field private videoView:Lcom/vk/attachpicker/widget/TextureVideoView;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;Lcom/vk/attachpicker/screen/TrimScreen$Delegate;)V
    .locals 2
    .param p1, "videoUri"    # Landroid/net/Uri;
    .param p2, "preview"    # Landroid/graphics/Bitmap;
    .param p3, "delegate"    # Lcom/vk/attachpicker/screen/TrimScreen$Delegate;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;-><init>()V

    .line 44
    const/16 v0, 0x10

    iput v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->UPDATE_STEP:I

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->handler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/vk/attachpicker/util/OrientationLocker;

    invoke-direct {v0}, Lcom/vk/attachpicker/util/OrientationLocker;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->locker:Lcom/vk/attachpicker/util/OrientationLocker;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->seekOnNextStart:I

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->controlsEnabled:Z

    .line 487
    new-instance v0, Lcom/vk/attachpicker/screen/TrimScreen$5;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/screen/TrimScreen$5;-><init>(Lcom/vk/attachpicker/screen/TrimScreen;)V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->onEverySecond:Ljava/lang/Runnable;

    .line 75
    iput-object p1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoUri:Landroid/net/Uri;

    .line 76
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoPath:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/vk/attachpicker/screen/TrimScreen;->delegate:Lcom/vk/attachpicker/screen/TrimScreen$Delegate;

    .line 78
    iput-object p2, p0, Lcom/vk/attachpicker/screen/TrimScreen;->preview:Landroid/graphics/Bitmap;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/widget/TextureVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/TrimScreen;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/screen/TrimScreen;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/TrimScreen;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->onEverySecond:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vk/attachpicker/screen/TrimScreen;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/TrimScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/screen/TrimScreen;->setControlsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1101(Lcom/vk/attachpicker/screen/TrimScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/TrimScreen;

    .prologue
    .line 40
    invoke-super {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->finish()V

    return-void
.end method

.method static synthetic access$1200(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/screen/TrimScreen$Delegate;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/TrimScreen;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->delegate:Lcom/vk/attachpicker/screen/TrimScreen$Delegate;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vk/attachpicker/screen/TrimScreen;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/TrimScreen;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vk/attachpicker/screen/TrimScreen;)F
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/TrimScreen;

    .prologue
    .line 40
    iget v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->prevProgress:F

    return v0
.end method

.method static synthetic access$302(Lcom/vk/attachpicker/screen/TrimScreen;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/TrimScreen;
    .param p1, "x1"    # F

    .prologue
    .line 40
    iput p1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->prevProgress:F

    return p1
.end method

.method static synthetic access$400(Lcom/vk/attachpicker/screen/TrimScreen;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/TrimScreen;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->playButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vk/attachpicker/screen/TrimScreen;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/TrimScreen;

    .prologue
    .line 40
    iget v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoDuration:I

    return v0
.end method

.method static synthetic access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/TrimScreen;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->timelineView:Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vk/attachpicker/screen/TrimScreen;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/TrimScreen;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/screen/TrimScreen;->progressOnNextStart(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/vk/attachpicker/screen/TrimScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/TrimScreen;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/TrimScreen;->updateTrimText()V

    return-void
.end method

.method static synthetic access$900(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/util/OrientationLocker;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/TrimScreen;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->locker:Lcom/vk/attachpicker/util/OrientationLocker;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/vk/attachpicker/screen/TrimScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/attachpicker/screen/TrimScreen;->openAnimation()V

    return-void
.end method

.method private closeAnimation()V
    .locals 15

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/TrimScreen;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 303
    .local v7, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->locker:Lcom/vk/attachpicker/util/OrientationLocker;

    invoke-virtual {v1, v7}, Lcom/vk/attachpicker/util/OrientationLocker;->lockOrientation(Landroid/app/Activity;)V

    .line 304
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/vk/attachpicker/screen/TrimScreen;->setControlsEnabled(Z)V

    .line 307
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->preview:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/vk/attachpicker/util/BitmapUtils;->getAspectRatio(Landroid/graphics/Bitmap;)F

    move-result v0

    .line 309
    .local v0, "ar":F
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->container:Landroid/widget/FrameLayout;

    .line 310
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen;->container:Landroid/widget/FrameLayout;

    .line 311
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 309
    invoke-static/range {v0 .. v6}, Lcom/vk/attachpicker/crop/CropUtils;->calculatePosition(FFFFFFF)Landroid/graphics/RectF;

    move-result-object v8

    .line 314
    .local v8, "editorRect":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->container:Landroid/widget/FrameLayout;

    .line 315
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen;->container:Landroid/widget/FrameLayout;

    .line 316
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/16 v3, 0x6c

    invoke-static {v3}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 314
    invoke-static/range {v0 .. v6}, Lcom/vk/attachpicker/crop/CropUtils;->calculatePosition(FFFFFFF)Landroid/graphics/RectF;

    move-result-object v13

    .line 319
    .local v13, "viewerRect":Landroid/graphics/RectF;
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v9, v1, v2

    .line 320
    .local v9, "scaleBefore":F
    iget v1, v13, Landroid/graphics/RectF;->top:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    sub-float v12, v1, v2

    .line 321
    .local v12, "translationYBefore":F
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v1, v2

    .line 323
    .local v11, "translationXBefore":F
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 324
    .local v10, "set":Landroid/animation/AnimatorSet;
    sget-object v1, Lcom/vk/attachpicker/util/AnimationUtils;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 326
    const/16 v1, 0x9

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen;->closeButtonContainer:Landroid/view/View;

    const-string/jumbo v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    .line 327
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen;->container:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "translationX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v14, 0x0

    aput v14, v5, v6

    const/4 v6, 0x1

    aput v11, v5, v6

    .line 328
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen;->container:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "translationY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v14, 0x0

    aput v14, v5, v6

    const/4 v6, 0x1

    aput v12, v5, v6

    .line 329
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen;->container:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "scaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v5, v6

    const/4 v6, 0x1

    aput v9, v5, v6

    .line 330
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen;->container:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "scaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v5, v6

    const/4 v6, 0x1

    aput v9, v5, v6

    .line 331
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen;->playButton:Landroid/view/View;

    const-string/jumbo v4, "scaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v5, v6

    const/4 v6, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v14, v9

    aput v14, v5, v6

    .line 332
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen;->playButton:Landroid/view/View;

    const-string/jumbo v4, "scaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v5, v6

    const/4 v6, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v14, v9

    aput v14, v5, v6

    .line 333
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen;->trimPanel:Landroid/view/View;

    const-string/jumbo v4, "translationY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v14, 0x0

    aput v14, v5, v6

    const/4 v6, 0x1

    iget-object v14, p0, Lcom/vk/attachpicker/screen/TrimScreen;->trimPanel:Landroid/view/View;

    .line 334
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    aput v14, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen;->bottomShadow:Landroid/view/View;

    const-string/jumbo v4, "translationY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v14, 0x0

    aput v14, v5, v6

    const/4 v6, 0x1

    iget-object v14, p0, Lcom/vk/attachpicker/screen/TrimScreen;->trimPanel:Landroid/view/View;

    .line 335
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    aput v14, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 326
    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 337
    new-instance v1, Lcom/vk/attachpicker/screen/TrimScreen$3;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/screen/TrimScreen$3;-><init>(Lcom/vk/attachpicker/screen/TrimScreen;)V

    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 350
    const-wide/16 v2, 0xaf

    invoke-virtual {v10, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 351
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    .line 353
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->shouldPlayOpenAnimation:Z

    .line 354
    return-void

    .line 326
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private millisToText(I)Ljava/lang/String;
    .locals 12
    .param p1, "millis"    # I

    .prologue
    const-wide/16 v10, 0x3c

    .line 478
    div-int/lit16 v3, p1, 0x3e8

    int-to-long v4, v3

    .line 479
    .local v4, "seconds":J
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 480
    .local v0, "absSeconds":J
    const-string/jumbo v3, "%01d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/16 v8, 0xe10

    rem-long v8, v0, v8

    div-long/2addr v8, v10

    .line 482
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    rem-long v8, v0, v10

    .line 483
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    .line 480
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, "positive":Ljava/lang/String;
    return-object v2
.end method

.method private onSaveClicked()V
    .locals 14

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/TrimScreen;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 358
    .local v2, "a":Landroid/app/Activity;
    if-nez v2, :cond_0

    .line 427
    .end local v2    # "a":Landroid/app/Activity;
    :goto_0
    return-void

    .line 362
    .restart local v2    # "a":Landroid/app/Activity;
    :cond_0
    iget v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoDuration:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->timelineView:Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    invoke-virtual {v1}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getLeftProgress()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v10, v0

    .line 363
    .local v10, "startPosition":I
    iget v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoDuration:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->timelineView:Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    invoke-virtual {v1}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getRightProgress()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v8, v0

    .line 364
    .local v8, "endPosition":I
    sub-int v11, v8, v10

    .line 366
    .local v11, "timeVideo":I
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->timelineView:Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getLeftProgress()F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->timelineView:Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getRightProgress()F

    move-result v0

    const v1, 0x3f7d70a4    # 0.99f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 367
    check-cast v2, Lcom/vk/attachpicker/AttachResulter;

    .end local v2    # "a":Landroid/app/Activity;
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/vk/attachpicker/SelectionContext;->packSingleVideo(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/vk/attachpicker/AttachResulter;->setResultAndFinish(Landroid/content/Intent;)V

    goto :goto_0

    .line 370
    .restart local v2    # "a":Landroid/app/Activity;
    :cond_1
    if-ltz v10, :cond_2

    iget v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoDuration:I

    if-le v8, v0, :cond_3

    .line 371
    :cond_2
    check-cast v2, Lcom/vk/attachpicker/AttachResulter;

    .end local v2    # "a":Landroid/app/Activity;
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/vk/attachpicker/SelectionContext;->packSingleVideo(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/vk/attachpicker/AttachResulter;->setResultAndFinish(Landroid/content/Intent;)V

    goto :goto_0

    .line 375
    .restart local v2    # "a":Landroid/app/Activity;
    :cond_3
    new-instance v9, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v9}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 376
    .local v9, "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoPath:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 377
    const/16 v0, 0x9

    invoke-virtual {v9, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 379
    .local v6, "METADATA_KEY_DURATION":J
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoPath:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    .local v3, "file":Ljava/io/File;
    const/16 v0, 0x3e8

    if-ge v11, v0, :cond_4

    .line 383
    int-to-long v0, v8

    sub-long v0, v6, v0

    rsub-int v12, v11, 0x3e8

    int-to-long v12, v12

    cmp-long v0, v0, v12

    if-lez v0, :cond_5

    .line 384
    rsub-int v0, v11, 0x3e8

    add-int/2addr v8, v0

    .line 391
    :cond_4
    :goto_1
    move v4, v10

    .line 392
    .local v4, "finalStartPosition":I
    move v5, v8

    .line 393
    .local v5, "finalEndPosition":I
    new-instance v0, Lcom/vk/attachpicker/screen/TrimScreen$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vk/attachpicker/screen/TrimScreen$4;-><init>(Lcom/vk/attachpicker/screen/TrimScreen;Landroid/app/Activity;Ljava/io/File;II)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 425
    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/screen/TrimScreen$4;->execPool([Ljava/lang/Object;)Lcom/vk/attachpicker/util/AsyncTask;

    goto/16 :goto_0

    .line 385
    .end local v4    # "finalStartPosition":I
    .end local v5    # "finalEndPosition":I
    :cond_5
    rsub-int v0, v11, 0x3e8

    if-le v10, v0, :cond_4

    .line 386
    rsub-int v0, v11, 0x3e8

    sub-int/2addr v10, v0

    goto :goto_1
.end method

.method private onStart()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 465
    return-void
.end method

.method private openAnimation()V
    .locals 15

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/TrimScreen;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 254
    .local v7, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->locker:Lcom/vk/attachpicker/util/OrientationLocker;

    invoke-virtual {v1, v7}, Lcom/vk/attachpicker/util/OrientationLocker;->lockOrientation(Landroid/app/Activity;)V

    .line 255
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/vk/attachpicker/screen/TrimScreen;->setControlsEnabled(Z)V

    .line 257
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->preview:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/vk/attachpicker/util/BitmapUtils;->getAspectRatio(Landroid/graphics/Bitmap;)F

    move-result v0

    .line 259
    .local v0, "ar":F
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->container:Landroid/widget/FrameLayout;

    .line 260
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen;->container:Landroid/widget/FrameLayout;

    .line 261
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 259
    invoke-static/range {v0 .. v6}, Lcom/vk/attachpicker/crop/CropUtils;->calculatePosition(FFFFFFF)Landroid/graphics/RectF;

    move-result-object v8

    .line 264
    .local v8, "editorRect":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->container:Landroid/widget/FrameLayout;

    .line 265
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen;->container:Landroid/widget/FrameLayout;

    .line 266
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/16 v3, 0x6c

    invoke-static {v3}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 264
    invoke-static/range {v0 .. v6}, Lcom/vk/attachpicker/crop/CropUtils;->calculatePosition(FFFFFFF)Landroid/graphics/RectF;

    move-result-object v13

    .line 269
    .local v13, "viewerRect":Landroid/graphics/RectF;
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v9, v1, v2

    .line 270
    .local v9, "scaleBefore":F
    iget v1, v13, Landroid/graphics/RectF;->top:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    sub-float v12, v1, v2

    .line 271
    .local v12, "translationYBefore":F
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v1, v2

    .line 273
    .local v11, "translationXBefore":F
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 274
    .local v10, "set":Landroid/animation/AnimatorSet;
    sget-object v1, Lcom/vk/attachpicker/util/AnimationUtils;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 276
    const/16 v1, 0x9

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen;->closeButtonContainer:Landroid/view/View;

    const-string/jumbo v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    .line 277
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen;->container:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "translationX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v11, v5, v6

    const/4 v6, 0x1

    const/4 v14, 0x0

    aput v14, v5, v6

    .line 278
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen;->container:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "translationY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v12, v5, v6

    const/4 v6, 0x1

    const/4 v14, 0x0

    aput v14, v5, v6

    .line 279
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen;->container:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "scaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v9, v5, v6

    const/4 v6, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v5, v6

    .line 280
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen;->container:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "scaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v9, v5, v6

    const/4 v6, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v5, v6

    .line 281
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen;->playButton:Landroid/view/View;

    const-string/jumbo v4, "scaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v14, v9

    aput v14, v5, v6

    const/4 v6, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v5, v6

    .line 282
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen;->playButton:Landroid/view/View;

    const-string/jumbo v4, "scaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v14, v9

    aput v14, v5, v6

    const/4 v6, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v5, v6

    .line 283
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen;->trimPanel:Landroid/view/View;

    const-string/jumbo v4, "translationY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget-object v14, p0, Lcom/vk/attachpicker/screen/TrimScreen;->trimPanel:Landroid/view/View;

    .line 284
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    aput v14, v5, v6

    const/4 v6, 0x1

    const/4 v14, 0x0

    aput v14, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen;->bottomShadow:Landroid/view/View;

    const-string/jumbo v4, "translationY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget-object v14, p0, Lcom/vk/attachpicker/screen/TrimScreen;->trimPanel:Landroid/view/View;

    .line 285
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    aput v14, v5, v6

    const/4 v6, 0x1

    const/4 v14, 0x0

    aput v14, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 276
    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 287
    new-instance v1, Lcom/vk/attachpicker/screen/TrimScreen$2;

    invoke-direct {v1, p0, v7}, Lcom/vk/attachpicker/screen/TrimScreen$2;-><init>(Lcom/vk/attachpicker/screen/TrimScreen;Landroid/app/Activity;)V

    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 295
    const-wide/16 v2, 0xaf

    invoke-virtual {v10, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 296
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    .line 298
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->shouldPlayOpenAnimation:Z

    .line 299
    return-void

    .line 276
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private playPause()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->pause()V

    .line 432
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->playButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 442
    :goto_0
    return-void

    .line 434
    :cond_0
    iget v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->seekOnNextStart:I

    if-ltz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    iget v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->seekOnNextStart:I

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->seekTo(I)V

    .line 436
    const/4 v0, -0x1

    iput v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->seekOnNextStart:I

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->start()V

    .line 439
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->playButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 440
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/TrimScreen;->onStart()V

    goto :goto_0
.end method

.method private progressOnNextStart(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 468
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->prevProgress:F

    .line 469
    iput p1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->seekOnNextStart:I

    .line 470
    return-void
.end method

.method private setControlsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->controlsEnabled:Z

    .line 249
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->closeButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 250
    return-void
.end method

.method private updateTrimText()V
    .locals 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->leftProgressText:Landroid/widget/TextView;

    iget v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoDuration:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen;->timelineView:Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getLeftProgress()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/vk/attachpicker/screen/TrimScreen;->millisToText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->rightProgressText:Landroid/widget/TextView;

    iget v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoDuration:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen;->timelineView:Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getRightProgress()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/vk/attachpicker/screen/TrimScreen;->millisToText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    return-void
.end method


# virtual methods
.method public createView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v3, 0x4

    .line 83
    const v1, 0x7f03012a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f100308

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->previewView:Landroid/widget/ImageView;

    .line 86
    const v1, 0x7f100347

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->timelineView:Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    .line 87
    const v1, 0x7f100348

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->leftProgressText:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f100349

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->rightProgressText:Landroid/widget/TextView;

    .line 89
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->leftProgressText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->rightProgressText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    const v1, 0x7f100346

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->trimPanel:Landroid/view/View;

    .line 92
    const v1, 0x7f1002e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->bottomShadow:Landroid/view/View;

    .line 94
    const v1, 0x7f1002f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->container:Landroid/widget/FrameLayout;

    .line 95
    const v1, 0x7f100344

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/widget/TextureVideoView;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    .line 96
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/TrimScreen$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/screen/TrimScreen;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 114
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/TrimScreen$$Lambda$2;->lambdaFactory$(Lcom/vk/attachpicker/screen/TrimScreen;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 118
    const v1, 0x7f100345

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->playButton:Landroid/view/View;

    .line 119
    const v1, 0x7f1002d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->clickHandler:Landroid/view/View;

    .line 120
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->clickHandler:Landroid/view/View;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/TrimScreen$$Lambda$3;->lambdaFactory$(Lcom/vk/attachpicker/screen/TrimScreen;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->timelineView:Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->setVideoPath(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->timelineView:Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    new-instance v2, Lcom/vk/attachpicker/screen/TrimScreen$1;

    invoke-direct {v2, p0}, Lcom/vk/attachpicker/screen/TrimScreen$1;-><init>(Lcom/vk/attachpicker/screen/TrimScreen;)V

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->setDelegate(Lcom/vk/attachpicker/videotrim/VideoTimelineView$VideoTimelineViewDelegate;)V

    .line 201
    const v1, 0x7f100341

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->closeButtonContainer:Landroid/view/View;

    .line 202
    const v1, 0x7f100342

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->closeButton:Landroid/view/View;

    .line 203
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->closeButton:Landroid/view/View;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/TrimScreen$$Lambda$4;->lambdaFactory$(Lcom/vk/attachpicker/screen/TrimScreen;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const v1, 0x7f100337

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0}, Lcom/vk/attachpicker/screen/TrimScreen$$Lambda$5;->lambdaFactory$(Lcom/vk/attachpicker/screen/TrimScreen;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->preview:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->previewView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 213
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->shouldPlayOpenAnimation:Z

    .line 216
    :cond_0
    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->delegate:Lcom/vk/attachpicker/screen/TrimScreen$Delegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/TrimScreen;->closeAnimation()V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-super {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->finish()V

    goto :goto_0
.end method

.method synthetic lambda$createView$153(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoDuration:I

    .line 99
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->timelineView:Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    iget v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoDuration:I

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->setDuration(I)V

    .line 100
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/TrimScreen;->onStart()V

    .line 103
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->leftProgressText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->rightProgressText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/TrimScreen;->updateTrimText()V

    .line 106
    invoke-static {p0}, Lcom/vk/attachpicker/screen/TrimScreen$$Lambda$7;->lambdaFactory$(Lcom/vk/attachpicker/screen/TrimScreen;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/attachpicker/Picker;->run(Ljava/lang/Runnable;)V

    .line 109
    invoke-static {p0}, Lcom/vk/attachpicker/screen/TrimScreen$$Lambda$8;->lambdaFactory$(Lcom/vk/attachpicker/screen/TrimScreen;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lcom/vk/attachpicker/Picker;->runDelayed(Ljava/lang/Runnable;J)V

    .line 113
    return-void
.end method

.method synthetic lambda$createView$154(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->timelineView:Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getLeftProgress()F

    move-result v0

    iget v1, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoDuration:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/screen/TrimScreen;->progressOnNextStart(I)V

    .line 116
    return-void
.end method

.method synthetic lambda$createView$155(Landroid/view/View;)V
    .locals 0
    .param p1, "v1"    # Landroid/view/View;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/TrimScreen;->playPause()V

    .line 122
    return-void
.end method

.method synthetic lambda$createView$156(Landroid/view/View;)V
    .locals 0
    .param p1, "v1"    # Landroid/view/View;

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/TrimScreen;->finish()V

    .line 205
    return-void
.end method

.method synthetic lambda$createView$157(Landroid/view/View;)V
    .locals 0
    .param p1, "v1"    # Landroid/view/View;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/TrimScreen;->onSaveClicked()V

    .line 209
    return-void
.end method

.method synthetic lambda$null$151()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->seekTo(I)V

    .line 108
    return-void
.end method

.method synthetic lambda$null$152()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->previewView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->previewView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 229
    iget-boolean v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->controlsEnabled:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/TrimScreen;->finish()V

    .line 233
    :cond_0
    return v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 451
    invoke-super {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->onDestroy()V

    .line 452
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->pause()V

    .line 453
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->videoView:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->suspend()V

    .line 454
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->timelineView:Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->destroy()V

    .line 455
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 446
    invoke-super {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->onPause()V

    .line 447
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->onResume()V

    .line 222
    iget-boolean v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->shouldPlayOpenAnimation:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->timelineView:Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/TrimScreen$$Lambda$6;->lambdaFactory$(Lcom/vk/attachpicker/screen/TrimScreen;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vk/attachpicker/util/Utils;->runOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 225
    :cond_0
    return-void
.end method

.method public onTopPaddingChanged(I)V
    .locals 2
    .param p1, "topPadding"    # I

    .prologue
    const/4 v1, 0x0

    .line 459
    invoke-super {p0, p1}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->onTopPaddingChanged(I)V

    .line 460
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen;->closeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 461
    return-void
.end method

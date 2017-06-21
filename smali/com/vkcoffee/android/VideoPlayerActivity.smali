.class public Lcom/vkcoffee/android/VideoPlayerActivity;
.super Lcom/vkcoffee/android/VKActivity;
.source "VideoPlayerActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;,
        Lcom/vkcoffee/android/VideoPlayerActivity$InsetsFrameLayout;
    }
.end annotation


# static fields
.field public static final QUALITY_OPTIONS:[Ljava/lang/String;


# instance fields
.field private addedID:I

.field private adding:Z

.field private changingSysUiVisibility:Z

.field private completed:Z

.field private content:Landroid/widget/FrameLayout;

.field private controlBar:Landroid/view/View;

.field private controlsWrap:Landroid/view/View;

.field private curQuality:I

.field private endMenu:Landroid/view/View;

.field private endMenuScrim:Landroid/view/View;

.field private file:Lcom/vkcoffee/android/api/VideoFile;

.field private fill:Z

.field private height:I

.field private hideUIRunnable:Ljava/lang/Runnable;

.field private insetsView:Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;

.field private interpolatorIn:Landroid/view/animation/Interpolator;

.field private interpolatorOut:Landroid/view/animation/Interpolator;

.field private needSeekTo:I

.field private playButton:Landroid/widget/ImageView;

.field private player:Lcom/vkcoffee/android/media/AbsVideoPlayer;

.field private playing:Z

.field private post:Lcom/vkcoffee/android/NewsEntry;

.field private progress:Landroid/widget/ProgressBar;

.field private qualityMenu:Landroid/support/v7/widget/PopupMenu;

.field private qualitySelector:Landroid/widget/TextView;

.field private ready:Z

.field private receiver:Landroid/content/BroadcastReceiver;

.field private referrer:Ljava/lang/String;

.field private resizeAnim:Landroid/animation/Animator;

.field private resizeButton:Landroid/widget/ImageView;

.field private seekbar:Landroid/widget/SeekBar;

.field private seeking:Z

.field private texScaleCrop:F

.field private texScaleFit:F

.field private texView:Landroid/view/TextureView;

.field private time1:Landroid/widget/TextView;

.field private time2:Landroid/widget/TextView;

.field private toolbar:Landroid/support/v7/widget/Toolbar;

.field private trackRunnable:Ljava/lang/Runnable;

.field private uiVisible:Z

.field private useVigo:Z

.field private visibilityAnim:Landroid/animation/Animator;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "240"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "360"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "480"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "720"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "1080"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkcoffee/android/VideoPlayerActivity;->QUALITY_OPTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 70
    invoke-direct {p0}, Lcom/vkcoffee/android/VKActivity;-><init>()V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->curQuality:I

    .line 83
    iput v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->texScaleFit:F

    iput v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->texScaleCrop:F

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->uiVisible:Z

    .line 103
    new-instance v1, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;

    const-wide v2, 0x3fe28f5c28f5c28fL    # 0.58

    const-wide v4, 0x3fe8a3d70a3d70a4L    # 0.77

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;-><init>(DDDD)V

    iput-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->interpolatorIn:Landroid/view/animation/Interpolator;

    .line 104
    new-instance v5, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;

    const-wide/16 v8, 0x0

    const-wide v10, 0x3fdeb851eb851eb8L    # 0.48

    const-wide v12, 0x3fd51eb851eb851fL    # 0.33

    invoke-direct/range {v5 .. v13}, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;-><init>(DDDD)V

    iput-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->interpolatorOut:Landroid/view/animation/Interpolator;

    .line 106
    new-instance v0, Lcom/vkcoffee/android/VideoPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$1;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 1149
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/VideoPlayerActivity;)Lcom/vkcoffee/android/api/VideoFile;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/VideoPlayerActivity;Lcom/vkcoffee/android/api/VideoFile;)Lcom/vkcoffee/android/api/VideoFile;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/VideoPlayerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/VideoPlayerActivity;->switchQuality(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/VideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->playing:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/vkcoffee/android/VideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->playing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->playButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->resize()V

    return-void
.end method

.method static synthetic access$1300(Lcom/vkcoffee/android/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->toggleLike()V

    return-void
.end method

.method static synthetic access$1400(Lcom/vkcoffee/android/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->share()V

    return-void
.end method

.method static synthetic access$1500(Lcom/vkcoffee/android/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->addToAlbum()V

    return-void
.end method

.method static synthetic access$1600(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->time1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/vkcoffee/android/VideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->seeking:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/vkcoffee/android/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->cancelHideUI()V

    return-void
.end method

.method static synthetic access$1900(Lcom/vkcoffee/android/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->startFile()V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/support/v7/widget/PopupMenu;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->qualityMenu:Landroid/support/v7/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/vkcoffee/android/VideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->changingSysUiVisibility:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/vkcoffee/android/VideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->changingSysUiVisibility:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/vkcoffee/android/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->updateTextureViewScale()V

    return-void
.end method

.method static synthetic access$2200(Lcom/vkcoffee/android/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->width:I

    return v0
.end method

.method static synthetic access$2300(Lcom/vkcoffee/android/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->height:I

    return v0
.end method

.method static synthetic access$2400(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/view/TextureView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->texView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/vkcoffee/android/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/vkcoffee/android/VideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->curQuality:I

    return v0
.end method

.method static synthetic access$2800(Lcom/vkcoffee/android/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->updateEndMenuIcons()V

    return-void
.end method

.method static synthetic access$2900(Lcom/vkcoffee/android/VideoPlayerActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/VideoPlayerActivity;->setEndMenuVisible(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/VideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->completed:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->content:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/vkcoffee/android/VideoPlayerActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->texScaleFit:F

    return v0
.end method

.method static synthetic access$3102(Lcom/vkcoffee/android/VideoPlayerActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;
    .param p1, "x1"    # F

    .prologue
    .line 70
    iput p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->texScaleFit:F

    return p1
.end method

.method static synthetic access$3200(Lcom/vkcoffee/android/VideoPlayerActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->texScaleCrop:F

    return v0
.end method

.method static synthetic access$3202(Lcom/vkcoffee/android/VideoPlayerActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;
    .param p1, "x1"    # F

    .prologue
    .line 70
    iput p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->texScaleCrop:F

    return p1
.end method

.method static synthetic access$3300(Lcom/vkcoffee/android/VideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->fill:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->resizeButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/vkcoffee/android/VideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->useVigo:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/vkcoffee/android/VideoPlayerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/VideoPlayerActivity;->setQualityByNetwork(I)V

    return-void
.end method

.method static synthetic access$3702(Lcom/vkcoffee/android/VideoPlayerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->trackRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/vkcoffee/android/VideoPlayerActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->resizeAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/vkcoffee/android/VideoPlayerActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->visibilityAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/VideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->uiVisible:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->controlsWrap:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/vkcoffee/android/VideoPlayerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->hideUIRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/vkcoffee/android/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->addVideo()V

    return-void
.end method

.method static synthetic access$4302(Lcom/vkcoffee/android/VideoPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->addedID:I

    return p1
.end method

.method static synthetic access$4402(Lcom/vkcoffee/android/VideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->adding:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/vkcoffee/android/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->updateAddedState()V

    return-void
.end method

.method static synthetic access$4600(Lcom/vkcoffee/android/VideoPlayerActivity;)Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->insetsView:Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/VideoPlayerActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/VideoPlayerActivity;->setUIVisibility(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/VideoPlayerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/VideoPlayerActivity;->hideUIDelayed(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/VideoPlayerActivity;)Lcom/vkcoffee/android/media/AbsVideoPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->player:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/VideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->ready:Z

    return v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->replay()V

    return-void
.end method

.method private addToAlbum()V
    .locals 3

    .prologue
    .line 1116
    new-instance v0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;-><init>(Landroid/content/Context;)V

    .line 1117
    .local v0, "helper":Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;
    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;->showAlbumsDialog(ILcom/vkcoffee/android/api/VideoFile;)V

    .line 1118
    return-void
.end method

.method private addVideo()V
    .locals 4

    .prologue
    .line 1061
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->adding:Z

    .line 1062
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->cancelHideUI()V

    .line 1063
    iget v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->addedID:I

    if-nez v0, :cond_0

    .line 1064
    new-instance v0, Lcom/vkcoffee/android/api/video/VideoAdd;

    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v1, v1, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v2, v2, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/video/VideoAdd;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/VideoPlayerActivity$33;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$33;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;Landroid/content/Context;)V

    .line 1065
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/video/VideoAdd;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1086
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1113
    :goto_0
    return-void

    .line 1088
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/api/wall/WallDelete;

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    iget v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->addedID:I

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/api/wall/WallDelete;-><init>(III)V

    new-instance v1, Lcom/vkcoffee/android/VideoPlayerActivity$34;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$34;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;Landroid/content/Context;)V

    .line 1089
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/wall/WallDelete;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1111
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method

.method private cancelHideUI()V
    .locals 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->hideUIRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 936
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->hideUIRunnable:Ljava/lang/Runnable;

    .line 939
    :cond_0
    return-void
.end method

.method private getMaxQuality()I
    .locals 11

    .prologue
    const/16 v10, 0x1e0

    .line 619
    const/16 v2, 0x168

    .line 620
    .local v2, "fromScreen":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 621
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 622
    .local v7, "screenSize":I
    const/16 v8, 0x400

    if-lt v7, v8, :cond_1

    .line 623
    const/16 v2, 0x438

    .line 629
    :cond_0
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v8

    if-nez v8, :cond_3

    .line 657
    .end local v2    # "fromScreen":I
    :goto_1
    return v2

    .line 624
    .restart local v2    # "fromScreen":I
    :cond_1
    const/16 v8, 0x320

    if-lt v7, v8, :cond_2

    .line 625
    const/16 v2, 0x2d0

    goto :goto_0

    .line 626
    :cond_2
    if-le v7, v10, :cond_0

    .line 627
    const/16 v2, 0x1e0

    goto :goto_0

    .line 632
    :cond_3
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 633
    .local v5, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v3, 0x0

    .line 634
    .local v3, "hasBack":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 635
    invoke-static {v4, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 636
    iget v8, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v8, :cond_6

    .line 637
    const/4 v3, 0x1

    .line 641
    :cond_4
    const/4 v1, 0x0

    .line 642
    .local v1, "fromCamera":I
    if-eqz v3, :cond_5

    .line 644
    const/4 v8, 0x1

    :try_start_0
    invoke-static {v8}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v6

    .line 645
    .local v6, "profile":Landroid/media/CamcorderProfile;
    iget v8, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v9, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    const/16 v9, 0x438

    if-lt v8, v9, :cond_7

    .line 646
    const/16 v1, 0x438

    .line 657
    .end local v6    # "profile":Landroid/media/CamcorderProfile;
    :cond_5
    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    .line 634
    .end local v1    # "fromCamera":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 647
    .restart local v1    # "fromCamera":I
    .restart local v6    # "profile":Landroid/media/CamcorderProfile;
    :cond_7
    :try_start_1
    iget v8, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v9, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/16 v9, 0x2d0

    if-lt v8, v9, :cond_8

    .line 648
    const/16 v1, 0x2d0

    goto :goto_3

    .line 649
    :cond_8
    iget v8, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v9, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-lt v8, v10, :cond_9

    .line 650
    const/16 v1, 0x1e0

    goto :goto_3

    .line 652
    :cond_9
    const/16 v1, 0x168

    goto :goto_3

    .line 654
    .end local v6    # "profile":Landroid/media/CamcorderProfile;
    :catch_0
    move-exception v8

    goto :goto_3
.end method

.method private hideUIDelayed(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 922
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->hideUIRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 923
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 925
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/VideoPlayerActivity$29;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$29;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    iput-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->hideUIRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 932
    return-void
.end method

.method private openYoutubeApp(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 772
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 773
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 774
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 775
    .local v0, "foundApp":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 777
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "com.google.android.youtube"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 778
    const/4 v0, 0x1

    .line 779
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-nez v0, :cond_2

    .line 784
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 786
    :cond_2
    const/16 v4, 0x2904

    invoke-virtual {p0, v2, v4}, Lcom/vkcoffee/android/VideoPlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 787
    const/high16 v4, 0x10a0000

    const v5, 0x10a0001

    invoke-virtual {p0, v4, v5}, Lcom/vkcoffee/android/VideoPlayerActivity;->overridePendingTransition(II)V

    .line 788
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->trackExternalView()V

    .line 789
    return-void
.end method

.method private playEmbed(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 792
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 793
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    const/16 v1, 0x2904

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 795
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->overridePendingTransition(II)V

    .line 796
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->trackExternalView()V

    .line 797
    return-void
.end method

.method private replay()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 949
    iput-boolean v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->completed:Z

    .line 950
    invoke-direct {p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->setEndMenuVisible(Z)V

    .line 951
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->invalidateOptionsMenu()V

    .line 952
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->player:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->ready:Z

    if-nez v0, :cond_1

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->hideUIDelayed(I)V

    .line 956
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 957
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 958
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->player:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/media/AbsVideoPlayer;->seek(I)V

    .line 960
    :cond_2
    const-string/jumbo v0, "video_play"

    invoke-static {v0}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string/jumbo v1, "video_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v3, v3, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v3, v3, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string/jumbo v1, "quality"

    iget v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->curQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string/jumbo v1, "position"

    const-string/jumbo v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string/jumbo v1, "source"

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->referrer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->sendNow()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 961
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->player:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    invoke-virtual {v0}, Lcom/vkcoffee/android/media/AbsVideoPlayer;->play()V

    .line 962
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->playButton:Landroid/widget/ImageView;

    const v1, 0x7f0201b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 963
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->playing:Z

    goto :goto_0
.end method

.method private resize()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 844
    iget-boolean v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->fill:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->fill:Z

    .line 845
    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->resizeAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 846
    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->resizeAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 848
    :cond_0
    iget-object v4, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->resizeButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->fill:Z

    if-eqz v1, :cond_2

    const v1, 0x7f02023c

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 849
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 850
    .local v0, "set":Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v4, v1, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->texView:Landroid/view/TextureView;

    const-string/jumbo v6, "scaleX"

    new-array v7, v2, [F

    iget-boolean v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->fill:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->texScaleCrop:F

    :goto_2
    aput v1, v7, v3

    .line 851
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v4, v3

    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->texView:Landroid/view/TextureView;

    const-string/jumbo v6, "scaleY"

    new-array v7, v2, [F

    iget-boolean v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->fill:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->texScaleCrop:F

    :goto_3
    aput v1, v7, v3

    .line 852
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v4, v2

    .line 850
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 854
    new-instance v1, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;

    const-wide v2, 0x3fe28f5c28f5c28fL    # 0.58

    const-wide v4, 0x3fe8a3d70a3d70a4L    # 0.77

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;-><init>(DDDD)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 855
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 856
    iput-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->resizeAnim:Landroid/animation/Animator;

    .line 857
    new-instance v1, Lcom/vkcoffee/android/VideoPlayerActivity$26;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$26;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 863
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 864
    return-void

    .end local v0    # "set":Landroid/animation/AnimatorSet;
    :cond_1
    move v1, v3

    .line 844
    goto :goto_0

    .line 848
    :cond_2
    const v1, 0x7f02023b

    goto :goto_1

    .line 850
    .restart local v0    # "set":Landroid/animation/AnimatorSet;
    :cond_3
    iget v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->texScaleFit:F

    goto :goto_2

    .line 851
    :cond_4
    iget v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->texScaleFit:F

    goto :goto_3
.end method

.method private setEndMenuVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1130
    iget-object v3, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->endMenu:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 1131
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->endMenuScrim:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 1132
    return-void

    :cond_0
    move v0, v2

    .line 1130
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1131
    goto :goto_1
.end method

.method private setQualityByNetwork(I)V
    .locals 6
    .param p1, "n"    # I

    .prologue
    .line 662
    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, "netType":Ljava/lang/String;
    const-string/jumbo v3, "edge"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 664
    const/4 v0, 0x0

    .line 674
    .local v0, "defQuality":I
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/VideoPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "video_quality_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 676
    add-int/lit8 v3, p1, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 677
    .local v2, "q":I
    new-instance v3, Lcom/vkcoffee/android/VideoPlayerActivity$22;

    invoke-direct {v3, p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity$22;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;I)V

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/VideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 683
    return-void

    .line 665
    .end local v0    # "defQuality":I
    .end local v2    # "q":I
    :cond_0
    const-string/jumbo v3, "3g"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 666
    const/4 v0, 0x2

    .restart local v0    # "defQuality":I
    goto :goto_0

    .line 667
    .end local v0    # "defQuality":I
    :cond_1
    const-string/jumbo v3, "wifi"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "ethernet"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 668
    :cond_2
    const/16 v0, 0x63

    .restart local v0    # "defQuality":I
    goto :goto_0

    .line 669
    .end local v0    # "defQuality":I
    :cond_3
    const-string/jumbo v3, "lte"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 670
    const/4 v0, 0x3

    .restart local v0    # "defQuality":I
    goto :goto_0

    .line 672
    .end local v0    # "defQuality":I
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "defQuality":I
    goto :goto_0
.end method

.method private setUIVisibility(Z)V
    .locals 11
    .param p1, "visible"    # Z

    .prologue
    const/4 v10, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 867
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->cancelHideUI()V

    .line 868
    iget-boolean v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->uiVisible:Z

    if-ne v1, p1, :cond_0

    .line 919
    :goto_0
    return-void

    .line 871
    :cond_0
    iput-boolean p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->uiVisible:Z

    .line 872
    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->visibilityAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    .line 873
    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->visibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 875
    :cond_1
    iput-boolean v8, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->changingSysUiVisibility:Z

    .line 876
    if-eqz p1, :cond_2

    .line 877
    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->controlsWrap:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 878
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    and-int/lit8 v2, v2, -0x7

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 879
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 880
    .local v0, "set":Landroid/animation/AnimatorSet;
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string/jumbo v3, "alpha"

    new-array v4, v8, [F

    aput v6, v4, v7

    .line 881
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v7

    .line 882
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->controlBar:Landroid/view/View;

    const-string/jumbo v3, "alpha"

    new-array v4, v8, [F

    aput v6, v4, v7

    .line 883
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v10

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->controlBar:Landroid/view/View;

    const-string/jumbo v4, "translationY"

    new-array v5, v8, [F

    aput v9, v5, v7

    .line 884
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->insetsView:Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;

    const-string/jumbo v4, "alpha"

    new-array v5, v8, [F

    aput v6, v5, v7

    .line 885
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 880
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 887
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 888
    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->interpolatorOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 889
    iput-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->visibilityAnim:Landroid/animation/Animator;

    .line 890
    new-instance v1, Lcom/vkcoffee/android/VideoPlayerActivity$27;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$27;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 896
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 898
    .end local v0    # "set":Landroid/animation/AnimatorSet;
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit8 v2, v2, 0x4

    or-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 899
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 900
    .restart local v0    # "set":Landroid/animation/AnimatorSet;
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string/jumbo v3, "alpha"

    new-array v4, v8, [F

    aput v9, v4, v7

    .line 901
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 902
    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->controlBar:Landroid/view/View;

    const-string/jumbo v3, "alpha"

    new-array v4, v8, [F

    aput v9, v4, v7

    .line 903
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v10

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->controlBar:Landroid/view/View;

    const-string/jumbo v4, "translationY"

    new-array v5, v8, [F

    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->controlBar:Landroid/view/View;

    .line 904
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->insetsView:Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;

    const-string/jumbo v4, "alpha"

    new-array v5, v8, [F

    aput v9, v5, v7

    .line 905
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 900
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 907
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 908
    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->interpolatorIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 909
    iput-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->visibilityAnim:Landroid/animation/Animator;

    .line 910
    new-instance v1, Lcom/vkcoffee/android/VideoPlayerActivity$28;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$28;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 917
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method private share()V
    .locals 3

    .prologue
    .line 942
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {v2}, Lcom/vkcoffee/android/api/VideoFile;->convertToPost()Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    .line 943
    .local v0, "e":Lcom/vkcoffee/android/NewsEntry;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkcoffee/android/RepostActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 944
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "post"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 945
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 946
    return-void
.end method

.method private startFile()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 507
    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->seekbar:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v7, v7, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    mul-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 508
    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v6, v6, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    const/16 v7, 0xe10

    if-ge v6, v7, :cond_0

    .line 509
    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->time2:Landroid/widget/TextView;

    const-string/jumbo v7, "%d:%02d"

    new-array v8, v12, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v9, v9, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    div-int/lit8 v9, v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v9, v9, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    rem-int/lit8 v9, v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    :goto_0
    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {v6}, Lcom/vkcoffee/android/api/VideoFile;->convertToPost()Lcom/vkcoffee/android/NewsEntry;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    .line 514
    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v6, v6, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v6, v6, Lcom/vkcoffee/android/api/VideoFile;->url360:Ljava/lang/String;

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v6, v6, Lcom/vkcoffee/android/api/VideoFile;->url480:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 515
    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v6, v6, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v6, v6, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    const-string/jumbo v7, "http://www.youtube.com/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 516
    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v6, v6, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/vkcoffee/android/VideoPlayerActivity;->openYoutubeApp(Ljava/lang/String;)V

    .line 616
    :goto_1
    return-void

    .line 511
    :cond_0
    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->time2:Landroid/widget/TextView;

    const-string/jumbo v7, "%d:%02d:%02d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v9, v9, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    div-int/lit16 v9, v9, 0xe10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v9, v9, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    div-int/lit8 v9, v9, 0x3c

    rem-int/lit8 v9, v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    iget-object v9, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v9, v9, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    rem-int/lit8 v9, v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 518
    :cond_1
    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v6, v6, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 519
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->finish()V

    goto :goto_1

    .line 522
    :cond_2
    const-string/jumbo v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ext="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v8, v8, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; embed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v8, v8, Lcom/vkcoffee/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v6, v6, Lcom/vkcoffee/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 524
    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v6, v6, Lcom/vkcoffee/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/vkcoffee/android/VideoPlayerActivity;->playEmbed(Ljava/lang/String;)V

    goto :goto_1

    .line 526
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    iget-object v7, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v7, v7, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 528
    .local v1, "intent":Landroid/content/Intent;
    const v6, 0x18894

    :try_start_0
    invoke-virtual {p0, v1, v6}, Lcom/vkcoffee/android/VideoPlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 529
    :catch_0
    move-exception v6

    goto/16 :goto_1

    .line 533
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    const/4 v4, 0x1

    .line 534
    .local v4, "n":I
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getMaxQuality()I

    move-result v3

    .line 535
    .local v3, "mq":I
    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v6, v6, Lcom/vkcoffee/android/api/VideoFile;->url360:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 536
    add-int/lit8 v4, v4, 0x1

    .line 538
    :cond_5
    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v6, v6, Lcom/vkcoffee/android/api/VideoFile;->url480:Ljava/lang/String;

    if-eqz v6, :cond_6

    const/16 v6, 0x1e0

    if-lt v3, v6, :cond_6

    .line 539
    add-int/lit8 v4, v4, 0x1

    .line 541
    :cond_6
    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v6, v6, Lcom/vkcoffee/android/api/VideoFile;->url720:Ljava/lang/String;

    if-eqz v6, :cond_7

    const/16 v6, 0x2d0

    if-lt v3, v6, :cond_7

    .line 542
    add-int/lit8 v4, v4, 0x1

    .line 544
    :cond_7
    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v6, v6, Lcom/vkcoffee/android/api/VideoFile;->url1080:Ljava/lang/String;

    if-eqz v6, :cond_8

    const/16 v6, 0x438

    if-lt v3, v6, :cond_8

    .line 545
    add-int/lit8 v4, v4, 0x1

    .line 548
    :cond_8
    if-le v4, v11, :cond_b

    .line 549
    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->qualityMenu:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {v6}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/Menu;->clear()V

    .line 550
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v4, :cond_9

    .line 551
    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->qualityMenu:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {v6}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    sget-object v7, Lcom/vkcoffee/android/VideoPlayerActivity;->QUALITY_OPTIONS:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-interface {v6, v10, v0, v0, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 553
    :cond_9
    move v2, v4

    .line 554
    .local v2, "maxQuality":I
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v10}, Lcom/vkcoffee/android/VideoPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string/jumbo v7, "use_vigo"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 555
    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/vkcoffee/android/VKApplication;->getVigo(Landroid/content/Context;)Lcom/vkcoffee/android/media/Vigo;

    move-result-object v5

    .line 557
    .local v5, "vigo":Lcom/vkcoffee/android/media/Vigo;
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/vkcoffee/android/VideoPlayerActivity$20;

    invoke-direct {v7, p0, v5, v2}, Lcom/vkcoffee/android/VideoPlayerActivity$20;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;Lcom/vkcoffee/android/media/Vigo;I)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 594
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 596
    .end local v5    # "vigo":Lcom/vkcoffee/android/media/Vigo;
    :cond_a
    invoke-direct {p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->setQualityByNetwork(I)V

    goto/16 :goto_1

    .line 599
    .end local v0    # "i":I
    .end local v2    # "maxQuality":I
    :cond_b
    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->qualitySelector:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 601
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/vkcoffee/android/VideoPlayerActivity$21;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$21;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    const-wide/16 v8, 0x32

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1
.end method

.method private switchQuality(I)V
    .locals 9
    .param p1, "q"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 686
    iget v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->curQuality:I

    if-ne v5, p1, :cond_0

    .line 746
    :goto_0
    return-void

    .line 693
    :cond_0
    iput p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->curQuality:I

    .line 694
    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->player:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    if-eqz v5, :cond_1

    .line 695
    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->player:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    invoke-virtual {v5}, Lcom/vkcoffee/android/media/AbsVideoPlayer;->getPosition()I

    move-result v5

    iput v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->needSeekTo:I

    .line 696
    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->player:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    invoke-virtual {v5}, Lcom/vkcoffee/android/media/AbsVideoPlayer;->stopAndRelease()V

    .line 697
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->player:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    .line 699
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    sget-object v5, Lcom/vkcoffee/android/VideoPlayerActivity;->QUALITY_OPTIONS:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-direct {v1, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 700
    .local v1, "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v5

    const-string/jumbo v6, "F"

    invoke-virtual {v5, v6}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v3

    .line 701
    .local v3, "sp":Landroid/text/Spannable;
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201df

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 702
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    const/4 v5, -0x1

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 703
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v2, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 704
    const/16 v5, 0x2710

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 705
    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-direct {v5, v2, v8}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {v3, v5, v7, v8, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 706
    const-string/jumbo v5, " "

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 707
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 708
    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->qualitySelector:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v4, v5, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 710
    .local v4, "url":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 727
    :goto_1
    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 729
    move-object v0, v4

    .line 734
    .local v0, "_url":Ljava/lang/String;
    new-instance v5, Lcom/vkcoffee/android/VideoPlayerActivity$23;

    invoke-direct {v5, p0, v0}, Lcom/vkcoffee/android/VideoPlayerActivity$23;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/VideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 712
    .end local v0    # "_url":Ljava/lang/String;
    :pswitch_0
    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v4, v5, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 713
    goto :goto_1

    .line 715
    :pswitch_1
    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v4, v5, Lcom/vkcoffee/android/api/VideoFile;->url360:Ljava/lang/String;

    .line 716
    goto :goto_1

    .line 718
    :pswitch_2
    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v4, v5, Lcom/vkcoffee/android/api/VideoFile;->url480:Ljava/lang/String;

    .line 719
    goto :goto_1

    .line 721
    :pswitch_3
    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v4, v5, Lcom/vkcoffee/android/api/VideoFile;->url720:Ljava/lang/String;

    .line 722
    goto :goto_1

    .line 724
    :pswitch_4
    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v4, v5, Lcom/vkcoffee/android/api/VideoFile;->url1080:Ljava/lang/String;

    goto :goto_1

    .line 710
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private toggleLike()V
    .locals 3

    .prologue
    .line 1126
    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-boolean v0, v0, Lcom/vkcoffee/android/api/VideoFile;->liked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, p0, v2}, Lcom/vkcoffee/android/data/Posts;->like(Lcom/vkcoffee/android/NewsEntry;ZLandroid/app/Activity;Ljava/lang/String;)V

    .line 1127
    return-void

    .line 1126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private trackExternalView()V
    .locals 4

    .prologue
    .line 800
    new-instance v0, Lcom/vkcoffee/android/VideoPlayerActivity$24;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$24;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->trackRunnable:Ljava/lang/Runnable;

    .line 807
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->trackRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 808
    return-void
.end method

.method private updateAddedState()V
    .locals 4

    .prologue
    .line 1048
    new-instance v0, Lcom/vkcoffee/android/api/video/VideoIsAdded;

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v2, v2, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    iget-object v3, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v3, v3, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/api/video/VideoIsAdded;-><init>(III)V

    new-instance v1, Lcom/vkcoffee/android/VideoPlayerActivity$32;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$32;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    .line 1049
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/video/VideoIsAdded;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1057
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1058
    return-void
.end method

.method private updateEndMenuIcons()V
    .locals 4

    .prologue
    const v3, 0x7f020177

    .line 1121
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->endMenu:Landroid/view/View;

    const v1, 0x7f100400

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-boolean v1, v1, Lcom/vkcoffee/android/api/VideoFile;->liked:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, -0x8b5d2a

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1122
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->endMenu:Landroid/view/View;

    const v1, 0x7f100402

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->addedID:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v1, v1, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v1, v2, :cond_2

    :cond_0
    const v1, 0x7f020141

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1123
    return-void

    .line 1121
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 1122
    :cond_2
    const v1, 0x7f020120

    goto :goto_1
.end method

.method private updateTextureViewScale()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->texView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/VideoPlayerActivity$19;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$19;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 504
    return-void
.end method


# virtual methods
.method public initPlayer(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 749
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".flv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "_flv"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 750
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkcoffee/android/VideoPlayerProxyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 751
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 752
    const-string/jumbo v1, "_flv"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 753
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 754
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->finish()V

    .line 769
    :goto_0
    return-void

    .line 758
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.PLAYER_CONTROL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 759
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "action"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 760
    const-string/jumbo v1, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->texView:Landroid/view/TextureView;

    invoke-static {p0, v1, p1}, Lcom/vkcoffee/android/media/AbsVideoPlayer;->createPlayer(Landroid/content/Context;Landroid/view/TextureView;Ljava/lang/String;)Lcom/vkcoffee/android/media/AbsVideoPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->player:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    .line 763
    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->player:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    if-nez v1, :cond_1

    .line 764
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/VideoPlayerActivity;->onError(I)V

    goto :goto_0

    .line 767
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->player:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/media/AbsVideoPlayer;->setPlayerStateListener(Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;)V

    .line 768
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->player:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    iget-boolean v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->useVigo:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->curQuality:I

    add-int/lit8 v1, v1, 0x2

    :goto_1
    invoke-virtual {v2, p1, v1}, Lcom/vkcoffee/android/media/AbsVideoPlayer;->setDataSourceAndPrepare(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->finish()V

    .line 812
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f1003fa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 119
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v2, 0x7f030198

    invoke-static {p0, v2, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, "contentView":Landroid/view/View;
    new-instance v1, Lcom/vkcoffee/android/VideoPlayerActivity$InsetsFrameLayout;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$InsetsFrameLayout;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;Landroid/content/Context;)V

    .line 123
    .local v1, "wrap":Lcom/vkcoffee/android/VideoPlayerActivity$InsetsFrameLayout;
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/VideoPlayerActivity$InsetsFrameLayout;->addView(Landroid/view/View;)V

    .line 124
    iput-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->content:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->setContentView(Landroid/view/View;)V

    .line 126
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_4

    .line 127
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 128
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 129
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 133
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 135
    iput-boolean v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->changingSysUiVisibility:Z

    .line 136
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x700

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 138
    const v2, 0x7f100112

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    iput-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 139
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 140
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 142
    const v2, 0x7f1003fb

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    iput-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->texView:Landroid/view/TextureView;

    .line 143
    const v2, 0x7f100144

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->progress:Landroid/widget/ProgressBar;

    .line 144
    const v2, 0x7f100404

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->playButton:Landroid/widget/ImageView;

    .line 145
    const v2, 0x7f100408

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->resizeButton:Landroid/widget/ImageView;

    .line 146
    const v2, 0x7f100409

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->qualitySelector:Landroid/widget/TextView;

    .line 147
    const v2, 0x7f100406

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->time1:Landroid/widget/TextView;

    .line 148
    const v2, 0x7f100407

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->time2:Landroid/widget/TextView;

    .line 149
    const v2, 0x7f100405

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->seekbar:Landroid/widget/SeekBar;

    .line 150
    const v2, 0x7f100403

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->controlBar:Landroid/view/View;

    .line 151
    const v2, 0x7f1003fe

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->controlsWrap:Landroid/view/View;

    .line 152
    const v2, 0x7f1003ff

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->endMenu:Landroid/view/View;

    .line 153
    const v2, 0x7f1003fd

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->endMenuScrim:Landroid/view/View;

    .line 154
    new-instance v2, Landroid/support/v7/widget/PopupMenu;

    iget-object v3, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->qualitySelector:Landroid/widget/TextView;

    invoke-direct {v2, p0, v3}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->qualityMenu:Landroid/support/v7/widget/PopupMenu;

    .line 155
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->qualityMenu:Landroid/support/v7/widget/PopupMenu;

    new-instance v3, Lcom/vkcoffee/android/VideoPlayerActivity$2;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$2;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 164
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->qualitySelector:Landroid/widget/TextView;

    new-instance v3, Lcom/vkcoffee/android/VideoPlayerActivity$3;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$3;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/VideoPlayerActivity$4;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$4;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    new-instance v2, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;

    invoke-direct {v2, p0, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->insetsView:Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;

    .line 183
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->insetsView:Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 185
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->playButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/vkcoffee/android/VideoPlayerActivity$5;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$5;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->resizeButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/vkcoffee/android/VideoPlayerActivity$6;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$6;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v2, 0x7f100400

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/VideoPlayerActivity$7;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$7;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const v2, 0x7f100401

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/VideoPlayerActivity$8;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$8;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    const v2, 0x7f100402

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/VideoPlayerActivity$9;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$9;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->seekbar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/vkcoffee/android/VideoPlayerActivity$10;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$10;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 259
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/api/VideoFile;

    iput-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    .line 260
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "referrer"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->referrer:Ljava/lang/String;

    .line 262
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v2, v2, Lcom/vkcoffee/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-boolean v2, v2, Lcom/vkcoffee/android/api/VideoFile;->processing:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v2, v2, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v2, v2, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->controlsWrap:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iput-boolean v4, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->uiVisible:Z

    .line 267
    new-instance v2, Lcom/vkcoffee/android/api/video/VideoGetById;

    iget-object v3, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v3, v3, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    iget-object v4, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v4, v4, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkcoffee/android/api/VideoFile;->accessKey:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/vkcoffee/android/api/video/VideoGetById;-><init>(IILjava/lang/String;)V

    new-instance v3, Lcom/vkcoffee/android/VideoPlayerActivity$11;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$11;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    .line 268
    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/video/VideoGetById;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 292
    invoke-virtual {v2, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 297
    :goto_1
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v2, v2, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v2, v3, :cond_2

    .line 298
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->updateAddedState()V

    .line 301
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.vkcoffee.android.POST_UPDATED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v2, v3, v4, v7}, Lcom/vkcoffee/android/VideoPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/VideoPlayerActivity$12;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$12;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 321
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_3

    .line 322
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 325
    :cond_3
    new-instance v2, Lcom/vkcoffee/android/VideoPlayerActivity$13;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$13;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 331
    return-void

    .line 130
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0xc000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 294
    :cond_5
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->startFile()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v6, 0x7f100458

    const v4, 0x7f1000a2

    const v5, 0x7f020176

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 967
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v3, 0x7f110013

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 968
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-boolean v0, v0, Lcom/vkcoffee/android/api/VideoFile;->canAdd:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->completed:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 969
    const v0, 0x7f100219

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->completed:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 970
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->completed:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 971
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->addedID:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v0, v0, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v0, v4, :cond_5

    :cond_0
    const v0, 0x7f020140

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 972
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-boolean v0, v0, Lcom/vkcoffee/android/api/VideoFile;->liked:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, -0x8b5d2a

    invoke-direct {v0, v4, v5}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    :goto_4
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 973
    const v0, 0x7f10044e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v3, v3, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v3, v4, :cond_1

    move v2, v1

    :cond_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 974
    return v1

    :cond_2
    move v0, v2

    .line 968
    goto :goto_0

    :cond_3
    move v0, v2

    .line 969
    goto :goto_1

    :cond_4
    move v0, v2

    .line 970
    goto :goto_2

    .line 971
    :cond_5
    const v0, 0x7f02011f

    goto :goto_3

    .line 972
    :cond_6
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    .line 815
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 816
    invoke-super {p0}, Lcom/vkcoffee/android/VKActivity;->onDestroy()V

    .line 818
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->player:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    if-eqz v2, :cond_0

    .line 819
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->player:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    invoke-virtual {v2}, Lcom/vkcoffee/android/media/AbsVideoPlayer;->stopAndRelease()V

    .line 820
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.PLAYER_CONTROL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 821
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "action"

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 822
    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 826
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "_flv"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 827
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 828
    .local v1, "timer":Ljava/util/Timer;
    new-instance v2, Lcom/vkcoffee/android/VideoPlayerActivity$25;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$25;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 837
    .end local v1    # "timer":Ljava/util/Timer;
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->trackRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 838
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->trackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 839
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->trackRunnable:Ljava/lang/Runnable;

    .line 841
    :cond_2
    return-void
.end method

.method public onEndOfBuffer()V
    .locals 1

    .prologue
    .line 466
    new-instance v0, Lcom/vkcoffee/android/VideoPlayerActivity$17;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$17;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 472
    return-void
.end method

.method public onError(I)V
    .locals 4
    .param p1, "errCode"    # I

    .prologue
    .line 413
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Video player error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 417
    new-instance v1, Lcom/vkcoffee/android/VideoPlayerActivity$16;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/VideoPlayerActivity$16;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;I)V

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 457
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->finish()V

    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v9, 0x7f1000a2

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 978
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v8, 0x102002c

    if-ne v6, v8, :cond_0

    .line 979
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->onBackPressed()V

    move v6, v7

    .line 1044
    :goto_0
    return v6

    .line 982
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    if-ne v6, v9, :cond_2

    iget-boolean v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->adding:Z

    if-nez v6, :cond_2

    .line 984
    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v6, v6, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    sget v8, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v6, v8, :cond_1

    .line 985
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->addToAlbum()V

    move v6, v7

    .line 986
    goto :goto_0

    .line 990
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-ge v6, v8, :cond_4

    .line 991
    new-instance v5, Landroid/widget/PopupMenu;

    invoke-virtual {p0, v9}, Lcom/vkcoffee/android/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 992
    .local v5, "pm":Landroid/widget/PopupMenu;
    const/4 v0, 0x0

    .line 1004
    .local v0, "anchor":Landroid/view/View;
    :goto_1
    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    iget v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->addedID:I

    if-nez v6, :cond_5

    const v6, 0x7f080585

    :goto_2
    invoke-interface {v8, v10, v10, v10, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1005
    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    const v8, 0x7f080586

    invoke-interface {v6, v10, v7, v10, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1006
    invoke-virtual {v5}, Landroid/widget/PopupMenu;->show()V

    .line 1007
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->cancelHideUI()V

    .line 1008
    new-instance v6, Lcom/vkcoffee/android/VideoPlayerActivity$30;

    invoke-direct {v6, p0, v0}, Lcom/vkcoffee/android/VideoPlayerActivity$30;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1017
    new-instance v6, Lcom/vkcoffee/android/VideoPlayerActivity$31;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$31;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1029
    .end local v0    # "anchor":Landroid/view/View;
    .end local v5    # "pm":Landroid/widget/PopupMenu;
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v8, 0x7f10044e

    if-ne v6, v8, :cond_3

    .line 1030
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/vkcoffee/android/ReportContentActivity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1031
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "itemID"

    iget-object v8, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v8, v8, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1032
    const-string/jumbo v6, "ownerID"

    iget-object v8, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget v8, v8, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1033
    const-string/jumbo v6, "type"

    const-string/jumbo v8, "video"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1034
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1036
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v8, 0x7f100458

    if-ne v6, v8, :cond_6

    .line 1037
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->toggleLike()V

    move v6, v7

    .line 1038
    goto/16 :goto_0

    .line 994
    :cond_4
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 995
    .restart local v0    # "anchor":Landroid/view/View;
    invoke-virtual {p0, v9}, Lcom/vkcoffee/android/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 996
    .local v2, "itemView":Landroid/view/View;
    const/4 v6, 0x2

    new-array v3, v6, [I

    fill-array-data v3, :array_0

    .line 997
    .local v3, "loc":[I
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 998
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    const/16 v8, 0xa

    const/16 v9, 0x33

    invoke-direct {v4, v6, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 999
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    aget v6, v3, v10

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1000
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1001
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1002
    new-instance v5, Landroid/widget/PopupMenu;

    const/4 v6, 0x5

    invoke-direct {v5, p0, v0, v6}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .restart local v5    # "pm":Landroid/widget/PopupMenu;
    goto/16 :goto_1

    .line 1004
    .end local v2    # "itemView":Landroid/view/View;
    .end local v3    # "loc":[I
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    const v6, 0x7f080592

    goto/16 :goto_2

    .line 1040
    .end local v0    # "anchor":Landroid/view/View;
    .end local v5    # "pm":Landroid/widget/PopupMenu;
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v8, 0x7f100219

    if-ne v6, v8, :cond_7

    .line 1041
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->share()V

    move v6, v7

    .line 1042
    goto/16 :goto_0

    .line 1044
    :cond_7
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto/16 :goto_0

    .line 996
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 341
    invoke-super {p0}, Lcom/vkcoffee/android/VKActivity;->onPause()V

    .line 342
    iget-boolean v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->playing:Z

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->player:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    invoke-virtual {v0}, Lcom/vkcoffee/android/media/AbsVideoPlayer;->pause()V

    .line 344
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->playButton:Landroid/widget/ImageView;

    const v1, 0x7f0201c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 345
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->player:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    invoke-virtual {v0}, Lcom/vkcoffee/android/media/AbsVideoPlayer;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->needSeekTo:I

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->playing:Z

    .line 347
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->setUIVisibility(Z)V

    .line 348
    invoke-direct {p0}, Lcom/vkcoffee/android/VideoPlayerActivity;->cancelHideUI()V

    .line 350
    :cond_0
    return-void
.end method

.method public onPlaybackCompleted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 392
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->file:Lcom/vkcoffee/android/api/VideoFile;

    iget-boolean v0, v0, Lcom/vkcoffee/android/api/VideoFile;->repeat:Z

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->player:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/media/AbsVideoPlayer;->seek(I)V

    .line 394
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->player:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    invoke-virtual {v0}, Lcom/vkcoffee/android/media/AbsVideoPlayer;->play()V

    .line 409
    :goto_0
    return-void

    .line 397
    :cond_0
    iput-boolean v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->playing:Z

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->completed:Z

    .line 399
    new-instance v0, Lcom/vkcoffee/android/VideoPlayerActivity$15;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$15;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPlaybackResumed()V
    .locals 1

    .prologue
    .line 476
    new-instance v0, Lcom/vkcoffee/android/VideoPlayerActivity$18;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$18;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 482
    return-void
.end method

.method public onPlayerReady(II)V
    .locals 3
    .param p1, "videoW"    # I
    .param p2, "videoH"    # I

    .prologue
    const/4 v2, -0x1

    .line 354
    iput p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->width:I

    .line 355
    iput p2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->height:I

    .line 356
    iget v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->needSeekTo:I

    if-eq v0, v2, :cond_0

    .line 357
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->player:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    iget v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->needSeekTo:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/media/AbsVideoPlayer;->seek(I)V

    .line 358
    iput v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->needSeekTo:I

    .line 360
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/VideoPlayerActivity$14;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$14;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->ready:Z

    .line 380
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->player:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    invoke-virtual {v0}, Lcom/vkcoffee/android/media/AbsVideoPlayer;->play()V

    .line 381
    return-void
.end method

.method public onUpdateBuffered(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    .line 461
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->seekbar:Landroid/widget/SeekBar;

    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 462
    return-void
.end method

.method public onUpdatePlaybackPosition(I)V
    .locals 1
    .param p1, "sec"    # I

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->seeking:Z

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 388
    :cond_0
    return-void
.end method

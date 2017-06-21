.class public Lcom/vkcoffee/android/PhotoViewer;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/PhotoView$DismissListener;
.implements Lcom/vkcoffee/android/ui/PhotoView$NavigationListener;
.implements Lcom/vkcoffee/android/ui/ActivityResulter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;,
        Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;,
        Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;,
        Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;,
        Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallbackAdapter;,
        Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;
    }
.end annotation


# static fields
.field public static final ACTION_UPDATE_ALBUM_COVER:Ljava/lang/String; = "com.vkcoffee.android.UPDATE_ALBUM_COVER"

.field public static final ACTION_UPDATE_PHOTO:Ljava/lang/String; = "com.vkcoffee.android.UPDATE_PHOTO"

.field private static final SELECT_ALBUM_RESULT:I = 0x3ff


# instance fields
.field private activity:Landroid/app/Activity;

.field private adapter:Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;

.field private bottomView:Landroid/view/View;

.field private buttonClickListener:Landroid/view/View$OnClickListener;

.field private callback:Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;

.field private comments:Landroid/widget/TextView;

.field private contentView:Landroid/widget/FrameLayout;

.field private controlsVisible:Z

.field private curPhoto:Lcom/vkcoffee/android/Photo;

.field public curPos:I

.field private currentVisAnim:Landroid/animation/Animator;

.field private description:Landroid/widget/TextView;

.field private detector:Landroid/view/GestureDetector;

.field private displayTotal:I

.field private docUrl:Ljava/lang/String;

.field private fromAlbumId:I

.field private fromAlbumOwner:I

.field private isAdmin:Z

.field private likes:Landroid/widget/TextView;

.field private liking:Z

.field private location:Landroid/widget/TextView;

.field private photoInfoReq:Lme/grishka/appkit/api/APIRequest;

.field private photoLoaded:Z

.field private photoView:Lcom/vkcoffee/android/ui/PhotoView;

.field private photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private prevBgAlpha:F

.field private reposts:Landroid/widget/TextView;

.field private scrim:Landroid/view/View;

.field private tags:Landroid/widget/TextView;

.field private tagsView:Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;

.field private title:Ljava/lang/String;

.field private tmpRect:Landroid/graphics/Rect;

.field private tmpRect2:Landroid/graphics/Rect;

.field private toolbar:Landroid/support/v7/widget/Toolbar;

.field useBig:Z

.field useSmall:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "docUrl"    # Ljava/lang/String;
    .param p3, "docTitle"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect2:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->photos:Ljava/util/ArrayList;

    .line 131
    iput-boolean v1, p0, Lcom/vkcoffee/android/PhotoViewer;->controlsVisible:Z

    .line 132
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/vkcoffee/android/PhotoViewer;->prevBgAlpha:F

    .line 142
    new-instance v0, Lcom/vkcoffee/android/PhotoViewer$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/PhotoViewer$1;-><init>(Lcom/vkcoffee/android/PhotoViewer;)V

    iput-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->buttonClickListener:Landroid/view/View$OnClickListener;

    .line 167
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    new-instance v4, Lcom/vkcoffee/android/PhotoViewer$2;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/PhotoViewer$2;-><init>(Lcom/vkcoffee/android/PhotoViewer;)V

    invoke-direct {v0, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->detector:Landroid/view/GestureDetector;

    .line 200
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/16 v3, 0x14

    if-ge v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/PhotoViewer;->useSmall:Z

    .line 201
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/16 v3, 0x64

    if-lt v0, v3, :cond_2

    sget v0, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    .line 202
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    .line 203
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    :cond_0
    :goto_1
    iput-boolean v1, p0, Lcom/vkcoffee/android/PhotoViewer;->useBig:Z

    .line 228
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    .line 229
    new-instance v0, Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallbackAdapter;

    invoke-direct {v0}, Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallbackAdapter;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->callback:Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;

    .line 230
    iput-object p3, p0, Lcom/vkcoffee/android/PhotoViewer;->title:Ljava/lang/String;

    .line 231
    iput-object p2, p0, Lcom/vkcoffee/android/PhotoViewer;->docUrl:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->photos:Ljava/util/ArrayList;

    new-instance v1, Lcom/vkcoffee/android/Photo;

    invoke-direct {v1}, Lcom/vkcoffee/android/Photo;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-direct {p0, v2}, Lcom/vkcoffee/android/PhotoViewer;->initView(I)V

    .line 234
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/PhotoViewer;->setTitle(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->bottomView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    return-void

    :cond_1
    move v0, v2

    .line 200
    goto :goto_0

    :cond_2
    move v1, v2

    .line 203
    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;ILcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "pos"    # I
    .param p4, "callback"    # Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/Photo;",
            ">;I",
            "Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/Photo;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect2:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->photos:Ljava/util/ArrayList;

    .line 131
    iput-boolean v1, p0, Lcom/vkcoffee/android/PhotoViewer;->controlsVisible:Z

    .line 132
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/vkcoffee/android/PhotoViewer;->prevBgAlpha:F

    .line 142
    new-instance v0, Lcom/vkcoffee/android/PhotoViewer$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/PhotoViewer$1;-><init>(Lcom/vkcoffee/android/PhotoViewer;)V

    iput-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->buttonClickListener:Landroid/view/View$OnClickListener;

    .line 167
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    new-instance v4, Lcom/vkcoffee/android/PhotoViewer$2;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/PhotoViewer$2;-><init>(Lcom/vkcoffee/android/PhotoViewer;)V

    invoke-direct {v0, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->detector:Landroid/view/GestureDetector;

    .line 200
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/16 v3, 0x14

    if-ge v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/PhotoViewer;->useSmall:Z

    .line 201
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/16 v3, 0x64

    if-lt v0, v3, :cond_2

    sget v0, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    .line 202
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    .line 203
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    :cond_0
    :goto_1
    iput-boolean v1, p0, Lcom/vkcoffee/android/PhotoViewer;->useBig:Z

    .line 214
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    .line 215
    iput-object p4, p0, Lcom/vkcoffee/android/PhotoViewer;->callback:Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;

    .line 216
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 217
    invoke-direct {p0, p3}, Lcom/vkcoffee/android/PhotoViewer;->initView(I)V

    .line 218
    return-void

    :cond_1
    move v0, v2

    .line 200
    goto :goto_0

    :cond_2
    move v1, v2

    .line 203
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/PhotoViewer;)Lcom/vkcoffee/android/Photo;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    return-object v0
.end method

.method static synthetic access$0877778(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->go()V

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/PhotoViewer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/PhotoViewer;->like(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->scrim:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/PhotoViewer;)Landroid/support/v7/widget/Toolbar;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/PhotoViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vkcoffee/android/PhotoViewer;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->detector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->doDismiss()V

    return-void
.end method

.method static synthetic access$1500(Lcom/vkcoffee/android/PhotoViewer;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vkcoffee/android/PhotoViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->location:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/vkcoffee/android/PhotoViewer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->photos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/vkcoffee/android/PhotoViewer;Lme/grishka/appkit/api/APIRequest;)Lme/grishka/appkit/api/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;
    .param p1, "x1"    # Lme/grishka/appkit/api/APIRequest;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer;->photoInfoReq:Lme/grishka/appkit/api/APIRequest;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->deletePhoto()V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->openComments()V

    return-void
.end method

.method static synthetic access$2000(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->editDescription()V

    return-void
.end method

.method static synthetic access$2100(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->movePhoto()V

    return-void
.end method

.method static synthetic access$2200(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->makeCover()V

    return-void
.end method

.method static synthetic access$2300(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->broadcastUpdate()V

    return-void
.end method

.method static synthetic access$2402(Lcom/vkcoffee/android/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/vkcoffee/android/PhotoViewer;->liking:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->doShowTags()V

    return-void
.end method

.method static synthetic access$2602(Lcom/vkcoffee/android/PhotoViewer;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer;->currentVisAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/vkcoffee/android/PhotoViewer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->docUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/vkcoffee/android/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/vkcoffee/android/PhotoViewer;->photoLoaded:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->invalidateMenu()V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->showTags()V

    return-void
.end method

.method static synthetic access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect2:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->repost()V

    return-void
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->openLocation()V

    return-void
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->toggleControls()V

    return-void
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/PhotoViewer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->bottomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/PhotoViewer;)Lcom/vkcoffee/android/ui/PhotoView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->photoView:Lcom/vkcoffee/android/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->doDismiss()V

    return-void
.end method

.method private broadcastUpdate()V
    .locals 8

    .prologue
    const/4 v3, -0x1

    .line 1074
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "com.vkcoffee.android.POST_UPDATED"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1075
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "post_id"

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v1, v1, Lcom/vkcoffee/android/Photo;->postID:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1076
    const-string/jumbo v0, "owner_id"

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v1, v1, Lcom/vkcoffee/android/Photo;->ownerID:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1079
    const-string/jumbo v0, "likes"

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v1, v1, Lcom/vkcoffee/android/Photo;->nLikes:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1080
    const-string/jumbo v0, "liked"

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-boolean v1, v1, Lcom/vkcoffee/android/Photo;->isLiked:Z

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1082
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    const-string/jumbo v1, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v7, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1083
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v0, v0, Lcom/vkcoffee/android/Photo;->ownerID:I

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v1, v1, Lcom/vkcoffee/android/Photo;->postID:I

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v2, v2, Lcom/vkcoffee/android/Photo;->nLikes:I

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-boolean v5, v4, Lcom/vkcoffee/android/Photo;->isLiked:Z

    const/4 v6, 0x0

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/vkcoffee/android/cache/NewsfeedCache;->update(IIIIIZZ)V

    .line 1084
    return-void
.end method

.method private deletePhoto()V
    .locals 3

    .prologue
    .line 859
    new-instance v0, Lcom/vkcoffee/android/api/photos/PhotosDelete;

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v1, v1, Lcom/vkcoffee/android/Photo;->ownerID:I

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v2, v2, Lcom/vkcoffee/android/Photo;->id:I

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/photos/PhotosDelete;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/PhotoViewer$15;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/PhotoViewer$15;-><init>(Lcom/vkcoffee/android/PhotoViewer;Landroid/content/Context;)V

    .line 860
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosDelete;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    .line 870
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    .line 871
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 872
    return-void
.end method

.method private doDismiss()V
    .locals 3

    .prologue
    .line 529
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 530
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->contentView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .end local v0    # "wm":Landroid/view/WindowManager;
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->callback:Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;

    invoke-interface {v1}, Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;->onDismissed()V

    .line 534
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    check-cast v1, Lcom/vkcoffee/android/ui/ResulterProvider;

    invoke-interface {v1, p0}, Lcom/vkcoffee/android/ui/ResulterProvider;->unregisterActivityResult(Lcom/vkcoffee/android/ui/ActivityResulter;)V

    .line 535
    return-void

    .line 531
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private doShowTags()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1064
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->tagsView:Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->tagsView:Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->setVisibility(I)V

    .line 1071
    :goto_0
    return-void

    .line 1068
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->toggleControls()V

    .line 1070
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->tagsView:Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->setVisibility(I)V

    goto :goto_0
.end method

.method private editDescription()V
    .locals 5

    .prologue
    .line 897
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 898
    .local v1, "ed":Landroid/widget/EditText;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLines(I)V

    .line 899
    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 900
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-object v2, v2, Lcom/vkcoffee/android/Photo;->descr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 901
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 902
    const v2, 0x7f080347

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 903
    new-instance v2, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08014f

    .line 904
    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 905
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080451

    new-instance v4, Lcom/vkcoffee/android/PhotoViewer$17;

    invoke-direct {v4, p0, v1}, Lcom/vkcoffee/android/PhotoViewer$17;-><init>(Lcom/vkcoffee/android/PhotoViewer;Landroid/widget/EditText;)V

    .line 906
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0800b7

    const/4 v4, 0x0

    .line 922
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 923
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 924
    .local v0, "dlg":Landroid/app/AlertDialog;
    new-instance v2, Lcom/vkcoffee/android/PhotoViewer$18;

    invoke-direct {v2, p0, v1}, Lcom/vkcoffee/android/PhotoViewer$18;-><init>(Lcom/vkcoffee/android/PhotoViewer;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 931
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 932
    return-void
.end method

.method private getCurrentPhotoAsPost()Lcom/vkcoffee/android/NewsEntry;
    .locals 11

    .prologue
    const-wide v6, -0x3f3e6c0000000000L    # -9000.0

    .line 1111
    new-instance v0, Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkcoffee/android/NewsEntry;-><init>()V

    .line 1112
    .local v0, "e":Lcom/vkcoffee/android/NewsEntry;
    const/4 v2, 0x1

    iput v2, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 1113
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v2, v2, Lcom/vkcoffee/android/Photo;->id:I

    iput v2, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 1114
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v2, v2, Lcom/vkcoffee/android/Photo;->ownerID:I

    iput v2, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .line 1115
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v2, v2, Lcom/vkcoffee/android/Photo;->userID:I

    iput v2, v0, Lcom/vkcoffee/android/NewsEntry;->userID:I

    .line 1116
    iget-object v2, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v3, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/attachments/PhotoAttachment;-><init>(Lcom/vkcoffee/android/Photo;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v2, v2, Lcom/vkcoffee/android/Photo;->date:I

    iput v2, v0, Lcom/vkcoffee/android/NewsEntry;->time:I

    .line 1121
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v2, v2, Lcom/vkcoffee/android/Photo;->nLikes:I

    iput v2, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 1122
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v2, v2, Lcom/vkcoffee/android/Photo;->nComments:I

    iput v2, v0, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    .line 1123
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-object v2, v2, Lcom/vkcoffee/android/Photo;->user:Lcom/vkcoffee/android/UserProfile;

    if-eqz v2, :cond_0

    .line 1124
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-object v2, v2, Lcom/vkcoffee/android/Photo;->user:Lcom/vkcoffee/android/UserProfile;

    iget-object v2, v2, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    .line 1125
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-object v2, v2, Lcom/vkcoffee/android/Photo;->user:Lcom/vkcoffee/android/UserProfile;

    iget-object v2, v2, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkcoffee/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 1127
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-wide v2, v2, Lcom/vkcoffee/android/Photo;->lat:D

    cmpl-double v2, v2, v6

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-wide v2, v2, Lcom/vkcoffee/android/Photo;->lon:D

    cmpl-double v2, v2, v6

    if-eqz v2, :cond_1

    .line 1128
    new-instance v1, Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-wide v2, v2, Lcom/vkcoffee/android/Photo;->lat:D

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-wide v4, v4, Lcom/vkcoffee/android/Photo;->lon:D

    const-string/jumbo v6, ""

    iget-object v7, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-object v7, v7, Lcom/vkcoffee/android/Photo;->geoAddress:Ljava/lang/String;

    const/16 v8, -0x2328

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vkcoffee/android/attachments/GeoAttachment;-><init>(DDLjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 1129
    .local v1, "geo":Lcom/vkcoffee/android/attachments/GeoAttachment;
    iget-object v2, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    .end local v1    # "geo":Lcom/vkcoffee/android/attachments/GeoAttachment;
    :cond_1
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-boolean v3, v3, Lcom/vkcoffee/android/Photo;->isLiked:Z

    invoke-virtual {v0, v2, v3}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 1132
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-boolean v3, v3, Lcom/vkcoffee/android/Photo;->canComment:Z

    invoke-virtual {v0, v2, v3}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 1133
    return-object v0
.end method

.method private getURL()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x7a

    const/16 v3, 0x79

    const/16 v2, 0x77

    .line 342
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v1

    iget-object v0, v1, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    .line 358
    .local v0, "s":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 346
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    invoke-virtual {v1, v4}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    invoke-virtual {v1, v4}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v1

    iget-object v0, v1, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    .line 349
    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 350
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 351
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v1

    iget-object v0, v1, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    .line 353
    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 355
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v1

    iget-object v0, v1, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0
.end method

.method private go()V
    .locals 3

    .prologue
    .line 241
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    const-class v2, Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://www.google.com/searchbyimage?site=search&sa=X&image_url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 243
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 244
    return-void
.end method

.method private initView(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/4 v10, -0x2

    const/4 v9, 0x1

    const v8, 0x7f0f00c3

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 243
    new-instance v1, Lcom/vkcoffee/android/ui/PhotoView;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/ui/PhotoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->photoView:Lcom/vkcoffee/android/ui/PhotoView;

    .line 244
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->photoView:Lcom/vkcoffee/android/ui/PhotoView;

    new-instance v2, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;

    invoke-direct {v2, p0, v6}, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;-><init>(Lcom/vkcoffee/android/PhotoViewer;Lcom/vkcoffee/android/PhotoViewer$1;)V

    iput-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->adapter:Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/PhotoView;->setAdapter(Lcom/vkcoffee/android/ui/PhotoView$PhotoViewerAdapter;)V

    .line 245
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->photoView:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v1, p1}, Lcom/vkcoffee/android/ui/PhotoView;->setPosition(I)V

    .line 246
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->photoView:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/ui/PhotoView;->setDismissListener(Lcom/vkcoffee/android/ui/PhotoView$DismissListener;)V

    .line 247
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->photoView:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/ui/PhotoView;->setNavigationListener(Lcom/vkcoffee/android/ui/PhotoView$NavigationListener;)V

    .line 249
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->photoView:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/PhotoView;->getOverlayView()Landroid/view/View;

    move-result-object v0

    .line 250
    .local v0, "overlay":Landroid/view/View;
    new-instance v1, Lcom/vkcoffee/android/PhotoViewer$3;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/PhotoViewer$3;-><init>(Lcom/vkcoffee/android/PhotoViewer;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->scrim:Landroid/view/View;

    .line 297
    new-instance v1, Lcom/vkcoffee/android/PhotoViewer$4;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2, v0}, Lcom/vkcoffee/android/PhotoViewer$4;-><init>(Lcom/vkcoffee/android/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->contentView:Landroid/widget/FrameLayout;

    .line 358
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->photoView:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 359
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 360
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 361
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->contentView:Landroid/widget/FrameLayout;

    const/16 v2, 0x700

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 362
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 363
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->scrim:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 364
    new-instance v1, Landroid/support/v7/widget/Toolbar;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    const v4, 0x7f0c009e

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 366
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f020110

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 367
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v2, Lcom/vkcoffee/android/PhotoViewer$5;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/PhotoViewer$5;-><init>(Lcom/vkcoffee/android/PhotoViewer;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v7}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 375
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f0c0187

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 377
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 378
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/PhotoViewer$6;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/PhotoViewer$6;-><init>(Lcom/vkcoffee/android/PhotoViewer;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/16 v5, 0x30

    invoke-direct {v3, v4, v10, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    const v2, 0x7f03010b

    invoke-static {v1, v2, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->bottomView:Landroid/view/View;

    .line 409
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->bottomView:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/16 v5, 0x50

    invoke-direct {v3, v4, v10, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->bottomView:Landroid/view/View;

    const v2, 0x7f1002d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->likes:Landroid/widget/TextView;

    .line 412
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->bottomView:Landroid/view/View;

    const v2, 0x7f1002d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->comments:Landroid/widget/TextView;

    .line 413
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->bottomView:Landroid/view/View;

    const v2, 0x7f1002d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->tags:Landroid/widget/TextView;

    .line 414
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->bottomView:Landroid/view/View;

    const v2, 0x7f1002d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->reposts:Landroid/widget/TextView;

    .line 415
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->bottomView:Landroid/view/View;

    const v2, 0x7f1002ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->description:Landroid/widget/TextView;

    .line 416
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->bottomView:Landroid/view/View;

    const v2, 0x7f1002cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->location:Landroid/widget/TextView;

    .line 418
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->location:Landroid/widget/TextView;

    new-instance v2, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, -0x66000001

    invoke-direct {v2, v3, v4}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v1, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 420
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->likes:Landroid/widget/TextView;

    new-instance v2, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->likes:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 421
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->comments:Landroid/widget/TextView;

    new-instance v2, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->comments:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 422
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->tags:Landroid/widget/TextView;

    new-instance v2, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->tags:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 423
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->reposts:Landroid/widget/TextView;

    new-instance v2, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->reposts:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 425
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->likes:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->comments:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->tags:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->reposts:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->location:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 432
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 433
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 434
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->contentView:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/vkcoffee/android/PhotoViewer$7;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/PhotoViewer$7;-><init>(Lcom/vkcoffee/android/PhotoViewer;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 447
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/PhotoViewer;->onPositionChanged(I)V

    .line 448
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/PhotoViewer;->onPositionConfirmed(I)V

    .line 449
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->loadUsers()V

    .line 450
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v2, Lcom/vkcoffee/android/PhotoViewer$8;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/PhotoViewer$8;-><init>(Lcom/vkcoffee/android/PhotoViewer;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 456
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->invalidateMenu()V

    .line 458
    new-instance v1, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;-><init>(Lcom/vkcoffee/android/PhotoViewer;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->tagsView:Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;

    .line 459
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->tagsView:Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->setVisibility(I)V

    .line 460
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->photoView:Lcom/vkcoffee/android/ui/PhotoView;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->tagsView:Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/PhotoView;->addOverlayView(Landroid/view/View;)V

    .line 461
    return-void
.end method

.method private invalidateMenu()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 465
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/PhotoViewer;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 466
    return-void
.end method

.method private like(Z)V
    .locals 9
    .param p1, "liked"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 968
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/vkcoffee/android/Auth;->ensureLoggedIn(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    iget-object v8, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    .line 972
    .local v8, "curPhoto":Lcom/vkcoffee/android/Photo;
    iput-boolean p1, v8, Lcom/vkcoffee/android/Photo;->isLiked:Z

    .line 973
    if-eqz p1, :cond_2

    .line 974
    iget v0, v8, Lcom/vkcoffee/android/Photo;->nLikes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/vkcoffee/android/Photo;->nLikes:I

    .line 978
    :goto_1
    iget-boolean v0, p0, Lcom/vkcoffee/android/PhotoViewer;->liking:Z

    if-nez v0, :cond_0

    .line 981
    iput-boolean v5, p0, Lcom/vkcoffee/android/PhotoViewer;->liking:Z

    .line 982
    new-instance v0, Lcom/vkcoffee/android/api/wall/WallLike;

    iget v2, v8, Lcom/vkcoffee/android/Photo;->ownerID:I

    iget v3, v8, Lcom/vkcoffee/android/Photo;->id:I

    iget-object v7, v8, Lcom/vkcoffee/android/Photo;->accessKey:Ljava/lang/String;

    move v1, p1

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/vkcoffee/android/api/wall/WallLike;-><init>(ZIIZIILjava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/PhotoViewer$20;

    invoke-direct {v1, p0, v8, p1}, Lcom/vkcoffee/android/PhotoViewer$20;-><init>(Lcom/vkcoffee/android/PhotoViewer;Lcom/vkcoffee/android/Photo;Z)V

    .line 983
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/wall/WallLike;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1024
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 976
    :cond_2
    iget v0, v8, Lcom/vkcoffee/android/Photo;->nLikes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v8, Lcom/vkcoffee/android/Photo;->nLikes:I

    goto :goto_1
.end method

.method private loadPhotoInfo()V
    .locals 5

    .prologue
    .line 693
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-boolean v1, v1, Lcom/vkcoffee/android/Photo;->infoLoaded:Z

    if-nez v1, :cond_1

    .line 694
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->photoInfoReq:Lme/grishka/appkit/api/APIRequest;

    if-eqz v1, :cond_0

    .line 695
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->photoInfoReq:Lme/grishka/appkit/api/APIRequest;

    invoke-virtual {v1}, Lme/grishka/appkit/api/APIRequest;->cancel()V

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    .line 698
    .local v0, "p":Lcom/vkcoffee/android/Photo;
    new-instance v1, Lcom/vkcoffee/android/api/photos/PhotosGetInfo;

    iget v2, v0, Lcom/vkcoffee/android/Photo;->ownerID:I

    iget v3, v0, Lcom/vkcoffee/android/Photo;->id:I

    iget-object v4, v0, Lcom/vkcoffee/android/Photo;->accessKey:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/api/photos/PhotosGetInfo;-><init>(IILjava/lang/String;)V

    new-instance v2, Lcom/vkcoffee/android/PhotoViewer$12;

    invoke-direct {v2, p0, v0}, Lcom/vkcoffee/android/PhotoViewer$12;-><init>(Lcom/vkcoffee/android/PhotoViewer;Lcom/vkcoffee/android/Photo;)V

    .line 699
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/photos/PhotosGetInfo;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    .line 718
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->photoInfoReq:Lme/grishka/appkit/api/APIRequest;

    .line 720
    .end local v0    # "p":Lcom/vkcoffee/android/Photo;
    :cond_1
    return-void
.end method

.method private loadUsers()V
    .locals 4

    .prologue
    .line 668
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/Photo;

    .line 671
    .local v1, "p":Lcom/vkcoffee/android/Photo;
    iget-object v3, v1, Lcom/vkcoffee/android/Photo;->user:Lcom/vkcoffee/android/UserProfile;

    if-nez v3, :cond_0

    iget v3, v1, Lcom/vkcoffee/android/Photo;->userID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 672
    iget v3, v1, Lcom/vkcoffee/android/Photo;->userID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 675
    .end local v1    # "p":Lcom/vkcoffee/android/Photo;
    :cond_1
    const-string/jumbo v2, "vk"

    const-string/jumbo v3, "LOAD USERS"

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    new-instance v2, Lcom/vkcoffee/android/PhotoViewer$11;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/PhotoViewer$11;-><init>(Lcom/vkcoffee/android/PhotoViewer;)V

    invoke-static {v0, v2}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    .line 690
    return-void
.end method

.method private makeCover()V
    .locals 4

    .prologue
    .line 944
    new-instance v0, Lcom/vkcoffee/android/api/photos/PhotosMakeCover;

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v1, v1, Lcom/vkcoffee/android/Photo;->ownerID:I

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v2, v2, Lcom/vkcoffee/android/Photo;->id:I

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v3, v3, Lcom/vkcoffee/android/Photo;->albumID:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/api/photos/PhotosMakeCover;-><init>(III)V

    new-instance v1, Lcom/vkcoffee/android/PhotoViewer$19;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/PhotoViewer$19;-><init>(Lcom/vkcoffee/android/PhotoViewer;Landroid/content/Context;)V

    .line 945
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosMakeCover;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    .line 963
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    .line 964
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 965
    return-void
.end method

.method private movePhoto()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 935
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 936
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "select_album"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 937
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    const v3, 0x7f0802ae

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const-string/jumbo v1, "uid"

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v2, v2, Lcom/vkcoffee/android/Photo;->ownerID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 939
    const-string/jumbo v1, "only_upload"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 940
    new-instance v1, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v2, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-direct {v1, v2, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    const/16 v3, 0x3ff

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/navigation/Navigator;->forResult(Landroid/app/Activity;I)V

    .line 941
    return-void
.end method

.method private openComments()V
    .locals 3

    .prologue
    .line 1028
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v1, v1, Lcom/vkcoffee/android/Photo;->albumID:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 1035
    :goto_0
    return-void

    .line 1031
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1032
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "entry"

    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->getCurrentPhotoAsPost()Lcom/vkcoffee/android/NewsEntry;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1033
    const-string/jumbo v1, "photo_viewer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1034
    const-class v1, Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private openLocation()V
    .locals 6

    .prologue
    .line 1138
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "geo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-wide v4, v4, Lcom/vkcoffee/android/Photo;->lat:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-wide v4, v4, Lcom/vkcoffee/android/Photo;->lon:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "?z=18&q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-wide v4, v4, Lcom/vkcoffee/android/Photo;->lat:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-wide v4, v4, Lcom/vkcoffee/android/Photo;->lon:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1139
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1140
    :catch_0
    move-exception v1

    .line 1141
    .local v1, "x":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ActivityUtils;->requireGoogleMaps(Landroid/app/Activity;Z)Z

    goto :goto_0
.end method

.method private repost()V
    .locals 3

    .prologue
    .line 1038
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    const-class v2, Lcom/vkcoffee/android/RepostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1039
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "post"

    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->getCurrentPhotoAsPost()Lcom/vkcoffee/android/NewsEntry;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1040
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1041
    return-void
.end method

.method private savePhoto()V
    .locals 14

    .prologue
    const/16 v13, 0x7a

    const/16 v11, 0x79

    const/16 v9, 0x77

    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 818
    iget-object v7, p0, Lcom/vkcoffee/android/PhotoViewer;->docUrl:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 819
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "temp_doc"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 820
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 821
    new-instance v3, Ljava/io/File;

    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/PhotoViewer;->title:Ljava/lang/String;

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 822
    .local v3, "path":Ljava/io/File;
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 823
    iget-object v7, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    const v9, 0x7f08017f

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 856
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "path":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "VK"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 828
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 829
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 831
    :cond_2
    const/4 v6, 0x0

    .line 832
    .local v6, "url":Ljava/lang/String;
    iget-object v7, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    invoke-virtual {v7, v9}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 833
    iget-object v7, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    invoke-virtual {v7, v9}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v7

    iget-object v6, v7, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    .line 841
    :goto_1
    if-eqz v6, :cond_0

    .line 844
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 845
    .local v5, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/app/DownloadManager$Request;

    invoke-direct {v4, v5}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 846
    .local v4, "req":Landroid/app/DownloadManager$Request;
    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 848
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xe

    if-lt v7, v8, :cond_3

    .line 849
    invoke-virtual {v4, v10}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 850
    invoke-virtual {v4}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 852
    :cond_3
    iget-object v7, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    const-string/jumbo v8, "download"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    .line 853
    .local v2, "mgr":Landroid/app/DownloadManager;
    if-eqz v2, :cond_0

    .line 854
    invoke-virtual {v2, v4}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    goto :goto_0

    .line 834
    .end local v2    # "mgr":Landroid/app/DownloadManager;
    .end local v4    # "req":Landroid/app/DownloadManager$Request;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_4
    iget-object v7, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    invoke-virtual {v7, v13}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 835
    iget-object v7, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    invoke-virtual {v7, v13}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v7

    iget-object v6, v7, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    goto :goto_1

    .line 836
    :cond_5
    iget-object v7, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    invoke-virtual {v7, v11}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 837
    iget-object v7, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    invoke-virtual {v7, v11}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v7

    iget-object v6, v7, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    goto :goto_1

    .line 839
    :cond_6
    iget-object v7, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    const/16 v8, 0x78

    invoke-virtual {v7, v8}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v7

    iget-object v6, v7, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    goto :goto_1
.end method

.method private setBottomBarData(IIIIZLjava/lang/String;)V
    .locals 5
    .param p1, "likes"    # I
    .param p2, "comments"    # I
    .param p3, "tags"    # I
    .param p4, "reposts"    # I
    .param p5, "liked"    # Z
    .param p6, "descr"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 724
    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->description:Landroid/widget/TextView;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->description:Landroid/widget/TextView;

    invoke-static {p6}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/vkcoffee/android/LinkParser;->truncatePost(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->likes:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 727
    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->likes:Landroid/widget/TextView;

    if-lez p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->comments:Landroid/widget/TextView;

    if-lez p2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->tags:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->tags:Landroid/widget/TextView;

    if-lez p3, :cond_3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 731
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->reposts:Landroid/widget/TextView;

    if-lez p4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    return-void

    :cond_0
    move v0, v2

    .line 724
    goto/16 :goto_0

    .line 727
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    .line 728
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2

    :cond_3
    move v2, v1

    .line 730
    goto :goto_3

    .line 731
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_4
.end method

.method private showEditDialog()V
    .locals 5

    .prologue
    .line 875
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08014e

    .line 876
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    const v4, 0x7f08014f

    .line 877
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    const v4, 0x7f0802ad

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    const v4, 0x7f08029b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/vkcoffee/android/PhotoViewer$16;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/PhotoViewer$16;-><init>(Lcom/vkcoffee/android/PhotoViewer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 893
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 894
    return-void
.end method

.method private showTags()V
    .locals 4

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v0, v0, Lcom/vkcoffee/android/Photo;->nTags:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-object v0, v0, Lcom/vkcoffee/android/Photo;->tags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1045
    new-instance v0, Lcom/vkcoffee/android/api/photos/PhotosGetTags;

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v1, v1, Lcom/vkcoffee/android/Photo;->ownerID:I

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v2, v2, Lcom/vkcoffee/android/Photo;->id:I

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-object v3, v3, Lcom/vkcoffee/android/Photo;->accessKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/api/photos/PhotosGetTags;-><init>(IILjava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/PhotoViewer$21;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/PhotoViewer$21;-><init>(Lcom/vkcoffee/android/PhotoViewer;Landroid/content/Context;)V

    .line 1046
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosGetTags;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    .line 1053
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    .line 1054
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1060
    :goto_0
    return-void

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-object v0, v0, Lcom/vkcoffee/android/Photo;->tags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1056
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->doShowTags()V

    goto :goto_0

    .line 1058
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    const v1, 0x7f08034b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private toggleControls()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1087
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->tagsView:Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 1088
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->tagsView:Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;

    invoke-virtual {v1, v4}, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->setVisibility(I)V

    .line 1090
    :cond_0
    iget-boolean v1, p0, Lcom/vkcoffee/android/PhotoViewer;->controlsVisible:Z

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/vkcoffee/android/PhotoViewer;->controlsVisible:Z

    .line 1091
    iget-object v5, p0, Lcom/vkcoffee/android/PhotoViewer;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-boolean v1, p0, Lcom/vkcoffee/android/PhotoViewer;->controlsVisible:Z

    if-eqz v1, :cond_5

    move v1, v3

    :goto_1
    invoke-static {v5, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 1092
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->docUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1093
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->bottomView:Landroid/view/View;

    iget-boolean v5, p0, Lcom/vkcoffee/android/PhotoViewer;->controlsVisible:Z

    if-eqz v5, :cond_1

    move v4, v3

    :cond_1
    invoke-static {v1, v4}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 1095
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->currentVisAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    .line 1096
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->currentVisAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1098
    :cond_3
    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->scrim:Landroid/view/View;

    const-string/jumbo v5, "gradientsAlpha"

    new-array v2, v2, [I

    iget-boolean v1, p0, Lcom/vkcoffee/android/PhotoViewer;->controlsVisible:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x99

    :goto_2
    aput v1, v2, v3

    invoke-static {v4, v5, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1099
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1100
    new-instance v1, Lcom/vkcoffee/android/PhotoViewer$22;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/PhotoViewer$22;-><init>(Lcom/vkcoffee/android/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1106
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1107
    iput-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->currentVisAnim:Landroid/animation/Animator;

    .line 1108
    return-void

    .end local v0    # "oa":Landroid/animation/ObjectAnimator;
    :cond_4
    move v1, v3

    .line 1090
    goto :goto_0

    :cond_5
    move v1, v4

    .line 1091
    goto :goto_1

    :cond_6
    move v1, v3

    .line 1098
    goto :goto_2
.end method


# virtual methods
.method public appendPhotos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 662
    .local p1, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/Photo;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 663
    iget v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPos:I

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/PhotoViewer;->onPositionChanged(I)V

    .line 664
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->loadUsers()V

    .line 665
    return-void
.end method

.method public dismiss()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 509
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 510
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 511
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->callback:Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->photoView:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/PhotoView;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect2:Landroid/graphics/Rect;

    invoke-interface {v1, v2, v3, v4}, Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;->getPhotoBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 512
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->photoView:Lcom/vkcoffee/android/ui/PhotoView;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->adapter:Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->photoView:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/PhotoView;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;->getThumb(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/vkcoffee/android/ui/PhotoView;->setThumb(Landroid/graphics/Bitmap;Z)V

    .line 514
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->photoView:Lcom/vkcoffee/android/ui/PhotoView;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0}, Lcom/vkcoffee/android/PhotoViewer$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/vkcoffee/android/ui/PhotoView;->animateOut(Landroid/graphics/Rect;IILjava/lang/Runnable;)V

    .line 525
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->contentView:Landroid/widget/FrameLayout;

    const-string/jumbo v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 517
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    new-instance v1, Lcom/vkcoffee/android/PhotoViewer$9;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/PhotoViewer$9;-><init>(Lcom/vkcoffee/android/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 523
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1147
    const/16 v1, 0x3ff

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 1148
    const-string/jumbo v1, "album"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/PhotoAlbum;

    .line 1149
    .local v0, "album":Lcom/vkcoffee/android/api/PhotoAlbum;
    new-instance v1, Lcom/vkcoffee/android/api/photos/PhotosMove;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v2, v2, Lcom/vkcoffee/android/Photo;->ownerID:I

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v3, v3, Lcom/vkcoffee/android/Photo;->id:I

    iget v4, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/api/photos/PhotosMove;-><init>(III)V

    new-instance v2, Lcom/vkcoffee/android/PhotoViewer$23;

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3, v0}, Lcom/vkcoffee/android/PhotoViewer$23;-><init>(Lcom/vkcoffee/android/PhotoViewer;Landroid/content/Context;Lcom/vkcoffee/android/api/PhotoAlbum;)V

    .line 1150
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/photos/PhotosMove;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    .line 1166
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    .line 1167
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1169
    .end local v0    # "album":Lcom/vkcoffee/android/api/PhotoAlbum;
    :cond_0
    return-void
.end method

.method public onBackgroundAlphaChanged(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 555
    iget v0, p0, Lcom/vkcoffee/android/PhotoViewer;->prevBgAlpha:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 562
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->scrim:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 559
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setAlpha(F)V

    .line 560
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->bottomView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 561
    iput p1, p0, Lcom/vkcoffee/android/PhotoViewer;->prevBgAlpha:F

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, -0x7

    const/16 v8, -0xf

    .line 176
    const/4 v2, 0x1

    .line 177
    .local v2, "z":Z
    const v6, 0x7f11000a

    invoke-virtual {p2, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 178
    const v6, 0x7f10044a

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 179
    .local v0, "findItem":Landroid/view/MenuItem;
    iget-object v6, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v6, v6, Lcom/vkcoffee/android/Photo;->id:I

    if-eqz v6, :cond_9

    sget v6, Lcom/vkcoffee/android/Global;->uid:I

    if-lez v6, :cond_9

    iget-boolean v6, p0, Lcom/vkcoffee/android/PhotoViewer;->isAdmin:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v6, v6, Lcom/vkcoffee/android/Photo;->albumID:I

    if-gtz v6, :cond_0

    iget-object v6, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v6, v6, Lcom/vkcoffee/android/Photo;->albumID:I

    if-eq v6, v9, :cond_0

    iget-object v6, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v6, v6, Lcom/vkcoffee/android/Photo;->albumID:I

    if-ne v6, v8, :cond_9

    :cond_0
    move v3, v4

    .line 180
    .local v3, "z2":Z
    :goto_0
    if-eqz v3, :cond_a

    iget-object v6, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-object v6, v6, Lcom/vkcoffee/android/Photo;->geoAddress:Ljava/lang/String;

    if-eqz v6, :cond_a

    :goto_1
    iget-object v5, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v6, v6, Lcom/vkcoffee/android/Photo;->ownerID:I

    iget-object v7, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v7, v7, Lcom/vkcoffee/android/Photo;->id:I

    invoke-static {p1, v4, v5, v6, v7}, Lcom/vkcoffee/android/PhotoStatic;->delLoc(Landroid/view/Menu;ZLandroid/app/Activity;II)V

    .line 182
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 183
    const v4, 0x7f100446

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 184
    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v4, v4, Lcom/vkcoffee/android/Photo;->id:I

    if-eqz v4, :cond_1

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    if-lez v4, :cond_1

    iget-boolean v4, p0, Lcom/vkcoffee/android/PhotoViewer;->isAdmin:Z

    if-nez v4, :cond_b

    .line 185
    :cond_1
    const/4 v3, 0x0

    .line 190
    :goto_2
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 191
    const v4, 0x7f10044c

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 192
    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v4, v4, Lcom/vkcoffee/android/Photo;->id:I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v4, v4, Lcom/vkcoffee/android/Photo;->ownerID:I

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v4, v4, Lcom/vkcoffee/android/Photo;->id:I

    if-eqz v4, :cond_2

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    if-gtz v4, :cond_c

    .line 193
    :cond_2
    const/4 v3, 0x0

    .line 197
    :goto_3
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 198
    const v4, 0x7f10000e

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 200
    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v4, v4, Lcom/vkcoffee/android/Photo;->id:I

    if-eqz v4, :cond_d

    .line 201
    const/4 v3, 0x1

    .line 205
    :goto_4
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 206
    const v4, 0x7f10043c

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 207
    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v4, v4, Lcom/vkcoffee/android/Photo;->id:I

    if-eqz v4, :cond_3

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    if-gtz v4, :cond_e

    .line 208
    :cond_3
    const/4 v3, 0x0

    .line 212
    :goto_5
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 213
    const v4, 0x7f10044d

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 214
    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v4, v4, Lcom/vkcoffee/android/Photo;->albumID:I

    if-gtz v4, :cond_4

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v4, v4, Lcom/vkcoffee/android/Photo;->albumID:I

    const/4 v5, -0x6

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v4, v4, Lcom/vkcoffee/android/Photo;->albumID:I

    if-eq v4, v9, :cond_4

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v4, v4, Lcom/vkcoffee/android/Photo;->albumID:I

    if-ne v4, v8, :cond_f

    .line 215
    :cond_4
    const/4 v3, 0x1

    .line 219
    :goto_6
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 220
    const v4, 0x7f10044e

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 221
    .local v1, "findItem2":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v4, v4, Lcom/vkcoffee/android/Photo;->ownerID:I

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v4, v4, Lcom/vkcoffee/android/Photo;->id:I

    if-eqz v4, :cond_5

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    if-gtz v4, :cond_6

    .line 222
    :cond_5
    const/4 v2, 0x0

    .line 224
    :cond_6
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 227
    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->docUrl:Ljava/lang/String;

    if-nez v4, :cond_7

    .line 228
    const-string v4, "\u041d\u0430\u0439\u0442\u0438 \u0432 Google"

    invoke-interface {p1, v4}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/PhotoViewer$10000;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/PhotoViewer$10000;-><init>(Lcom/vkcoffee/android/PhotoViewer;)V

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 235
    :cond_7
    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->docUrl:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 236
    const v4, 0x7f10044b

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-boolean v5, p0, Lcom/vkcoffee/android/PhotoViewer;->photoLoaded:Z

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 238
    :cond_8
    return-void

    .end local v1    # "findItem2":Landroid/view/MenuItem;
    .end local v3    # "z2":Z
    :cond_9
    move v3, v5

    .line 179
    goto/16 :goto_0

    .restart local v3    # "z2":Z
    :cond_a
    move v4, v5

    .line 180
    goto/16 :goto_1

    .line 187
    :cond_b
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 195
    :cond_c
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 203
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 210
    :cond_e
    const/4 v3, 0x1

    goto :goto_5

    .line 217
    :cond_f
    const/4 v3, 0x0

    goto :goto_6
.end method

.method public onDismiss()V
    .locals 0

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer;->dismiss()V

    .line 540
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v9, 0x1

    .line 749
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f10044a

    if-ne v4, v5, :cond_0

    .line 750
    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v4, v4, Lcom/vkcoffee/android/Photo;->albumID:I

    const/4 v5, -0x7

    if-ne v4, v5, :cond_8

    .line 751
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->editDescription()V

    .line 756
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f10044b

    if-ne v4, v5, :cond_1

    .line 757
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->savePhoto()V

    .line 759
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f100446

    if-ne v4, v5, :cond_2

    .line 760
    new-instance v4, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v5, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0800f4

    .line 761
    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080124

    .line 762
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0805c0

    new-instance v6, Lcom/vkcoffee/android/PhotoViewer$13;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/PhotoViewer$13;-><init>(Lcom/vkcoffee/android/PhotoViewer;)V

    .line 763
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0802d7

    const/4 v6, 0x0

    .line 770
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 771
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 773
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f10000e

    if-ne v4, v5, :cond_3

    .line 774
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "http://vk.com/photo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v5, v5, Lcom/vkcoffee/android/Photo;->ownerID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v5, v5, Lcom/vkcoffee/android/Photo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 775
    .local v3, "ln":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    const-string/jumbo v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 776
    .local v0, "cm":Landroid/text/ClipboardManager;
    invoke-virtual {v0, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 777
    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    const v5, 0x7f080290

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 779
    .end local v0    # "cm":Landroid/text/ClipboardManager;
    .end local v3    # "ln":Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f10043c

    if-ne v4, v5, :cond_4

    .line 780
    new-instance v1, Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {v1}, Lcom/vkcoffee/android/NewsEntry;-><init>()V

    .line 781
    .local v1, "e":Lcom/vkcoffee/android/NewsEntry;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 782
    iget-object v4, v1, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v5, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    iget-object v6, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/attachments/PhotoAttachment;-><init>(Lcom/vkcoffee/android/Photo;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    iput v9, v1, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 784
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    const-class v5, Lcom/vkcoffee/android/RepostActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 785
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "post"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 786
    const-string/jumbo v4, "msg"

    invoke-virtual {v2, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 787
    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 789
    .end local v1    # "e":Lcom/vkcoffee/android/NewsEntry;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f10044c

    if-ne v4, v5, :cond_5

    .line 790
    new-instance v4, Lcom/vkcoffee/android/api/photos/PhotosCopy;

    iget-object v5, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v5, v5, Lcom/vkcoffee/android/Photo;->ownerID:I

    iget-object v6, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v6, v6, Lcom/vkcoffee/android/Photo;->id:I

    iget-object v7, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-object v7, v7, Lcom/vkcoffee/android/Photo;->accessKey:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lcom/vkcoffee/android/api/photos/PhotosCopy;-><init>(IILjava/lang/String;)V

    new-instance v5, Lcom/vkcoffee/android/PhotoViewer$14;

    iget-object v6, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-direct {v5, p0, v6}, Lcom/vkcoffee/android/PhotoViewer$14;-><init>(Lcom/vkcoffee/android/PhotoViewer;Landroid/content/Context;)V

    .line 791
    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/photos/PhotosCopy;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    .line 797
    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/PhotoViewer;->contentView:Landroid/widget/FrameLayout;

    .line 798
    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 800
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f10044d

    if-ne v4, v5, :cond_6

    .line 801
    iget v4, p0, Lcom/vkcoffee/android/PhotoViewer;->fromAlbumId:I

    iget-object v5, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v5, v5, Lcom/vkcoffee/android/Photo;->albumID:I

    if-ne v4, v5, :cond_9

    iget v4, p0, Lcom/vkcoffee/android/PhotoViewer;->fromAlbumOwner:I

    iget-object v5, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v5, v5, Lcom/vkcoffee/android/Photo;->ownerID:I

    if-ne v4, v5, :cond_9

    .line 802
    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer;->dismiss()V

    .line 807
    :cond_6
    :goto_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f10044e

    if-ne v4, v5, :cond_7

    .line 808
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    const-class v5, Lcom/vkcoffee/android/ReportContentActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 809
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "itemID"

    iget-object v5, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v5, v5, Lcom/vkcoffee/android/Photo;->id:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 810
    const-string/jumbo v4, "ownerID"

    iget-object v5, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v5, v5, Lcom/vkcoffee/android/Photo;->ownerID:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 811
    const-string/jumbo v4, "type"

    const-string/jumbo v5, "photo"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 814
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_7
    return v9

    .line 753
    :cond_8
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->showEditDialog()V

    goto/16 :goto_0

    .line 804
    :cond_9
    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vkontakte://vk.com/album"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v8, v8, Lcom/vkcoffee/android/Photo;->ownerID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v8, v8, Lcom/vkcoffee/android/Photo;->albumID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onPositionChanged(I)V
    .locals 14
    .param p1, "pos"    # I

    .prologue
    const v5, 0x7f080398

    const/4 v3, 0x2

    const-wide v12, -0x3f3e6c0000000000L    # -9000.0

    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 566
    iput p1, p0, Lcom/vkcoffee/android/PhotoViewer;->curPos:I

    .line 567
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->docUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 569
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    iget v0, p0, Lcom/vkcoffee/android/PhotoViewer;->displayTotal:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/vkcoffee/android/PhotoViewer;->displayTotal:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v11

    invoke-virtual {v2, v5, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 574
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->callback:Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;

    invoke-interface {v0}, Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;->isMoreAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->callback:Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;

    invoke-interface {v0}, Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;->loadMore()V

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Photo;

    iput-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    .line 578
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-boolean v0, v0, Lcom/vkcoffee/android/Photo;->infoLoaded:Z

    if-eqz v0, :cond_7

    .line 579
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v1, v0, Lcom/vkcoffee/android/Photo;->nLikes:I

    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v2, v0, Lcom/vkcoffee/android/Photo;->nComments:I

    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v3, v0, Lcom/vkcoffee/android/Photo;->nTags:I

    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-boolean v5, v0, Lcom/vkcoffee/android/Photo;->isLiked:Z

    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-object v6, v0, Lcom/vkcoffee/android/Photo;->descr:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/PhotoViewer;->setBottomBarData(IIIIZLjava/lang/String;)V

    .line 583
    :goto_2
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-boolean v0, v0, Lcom/vkcoffee/android/Photo;->infoLoaded:Z

    if-nez v0, :cond_2

    .line 584
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer;->loadPhotoInfo()V

    .line 586
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v0, v0, Lcom/vkcoffee/android/Photo;->ownerID:I

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v0, v0, Lcom/vkcoffee/android/Photo;->ownerID:I

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v0, v0, Lcom/vkcoffee/android/Photo;->userID:I

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget v0, v0, Lcom/vkcoffee/android/Photo;->ownerID:I

    neg-int v0, v0

    invoke-static {v0}, Lcom/vkcoffee/android/data/Groups;->isGroupAdmin(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    move v0, v11

    :goto_3
    iput-boolean v0, p0, Lcom/vkcoffee/android/PhotoViewer;->isAdmin:Z

    .line 587
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-wide v0, v0, Lcom/vkcoffee/android/Photo;->lat:D

    cmpl-double v0, v0, v12

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    iget-wide v0, v0, Lcom/vkcoffee/android/Photo;->lon:D

    cmpl-double v0, v0, v12

    if-eqz v0, :cond_a

    .line 588
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->location:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 589
    iget-object v10, p0, Lcom/vkcoffee/android/PhotoViewer;->curPhoto:Lcom/vkcoffee/android/Photo;

    .line 590
    .local v10, "curPhoto":Lcom/vkcoffee/android/Photo;
    iget-object v0, v10, Lcom/vkcoffee/android/Photo;->geoAddress:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 591
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->location:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/PhotoViewer$10;

    invoke-direct {v1, p0, v10}, Lcom/vkcoffee/android/PhotoViewer$10;-><init>(Lcom/vkcoffee/android/PhotoViewer;Lcom/vkcoffee/android/Photo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 640
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 647
    .end local v10    # "curPhoto":Lcom/vkcoffee/android/Photo;
    :goto_4
    return-void

    .line 569
    :cond_4
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto/16 :goto_0

    .line 571
    :cond_5
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    iget v0, p0, Lcom/vkcoffee/android/PhotoViewer;->displayTotal:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/vkcoffee/android/PhotoViewer;->displayTotal:I

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v11

    invoke-virtual {v2, v5, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5

    .line 581
    :cond_7
    const-string/jumbo v9, ""

    move-object v3, p0

    move v5, v4

    move v6, v4

    move v7, v4

    move v8, v4

    invoke-direct/range {v3 .. v9}, Lcom/vkcoffee/android/PhotoViewer;->setBottomBarData(IIIIZLjava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    move v0, v4

    .line 586
    goto :goto_3

    .line 642
    .restart local v10    # "curPhoto":Lcom/vkcoffee/android/Photo;
    :cond_9
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->location:Landroid/widget/TextView;

    iget-object v1, v10, Lcom/vkcoffee/android/Photo;->geoAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 645
    .end local v10    # "curPhoto":Lcom/vkcoffee/android/Photo;
    :cond_a
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->location:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method public onPositionConfirmed(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 659
    return-void
.end method

.method public onPrepareDismiss()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 544
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 545
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 546
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->callback:Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->photoView:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/PhotoView;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect2:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2, v3}, Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;->getPhotoBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 547
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 548
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 549
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->photoView:Lcom/vkcoffee/android/ui/PhotoView;

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/PhotoView;->setThumbBounds(Landroid/graphics/Rect;)V

    .line 550
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->tagsView:Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->setVisibility(I)V

    .line 551
    return-void
.end method

.method public setAlbumIDs(II)V
    .locals 0
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 480
    iput p1, p0, Lcom/vkcoffee/android/PhotoViewer;->fromAlbumOwner:I

    .line 481
    iput p2, p0, Lcom/vkcoffee/android/PhotoViewer;->fromAlbumId:I

    .line 482
    return-void
.end method

.method public setDisplayTotal(I)V
    .locals 1
    .param p1, "t"    # I

    .prologue
    .line 475
    iput p1, p0, Lcom/vkcoffee/android/PhotoViewer;->displayTotal:I

    .line 476
    iget v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPos:I

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/PhotoViewer;->onPositionChanged(I)V

    .line 477
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->photoView:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/PhotoView;->setPosition(I)V

    .line 240
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer;->title:Ljava/lang/String;

    .line 470
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 471
    iget v0, p0, Lcom/vkcoffee/android/PhotoViewer;->curPos:I

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/PhotoViewer;->onPositionChanged(I)V

    .line 472
    return-void
.end method

.method public show()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v1, -0x1

    const/4 v7, 0x0

    .line 485
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 486
    .local v6, "wm":Landroid/view/WindowManager;
    const v4, 0x10100

    .line 487
    .local v4, "windowFlags":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 488
    const/high16 v2, -0x80000000

    or-int/2addr v4, v2

    .line 492
    :cond_0
    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 497
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->contentView:Landroid/widget/FrameLayout;

    invoke-interface {v6, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 499
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 500
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->callback:Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->photoView:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/PhotoView;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect2:Landroid/graphics/Rect;

    invoke-interface {v1, v2, v3, v8}, Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;->getPhotoBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 501
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 502
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->photoView:Lcom/vkcoffee/android/ui/PhotoView;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->adapter:Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->photoView:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/PhotoView;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;->getThumb(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->adapter:Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;

    iget-object v8, p0, Lcom/vkcoffee/android/PhotoViewer;->photoView:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/PhotoView;->getPosition()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;->isCached(I)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v1, v2, v5}, Lcom/vkcoffee/android/ui/PhotoView;->setThumb(Landroid/graphics/Bitmap;Z)V

    .line 503
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->photoView:Lcom/vkcoffee/android/ui/PhotoView;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/vkcoffee/android/PhotoViewer;->tmpRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v5}, Lcom/vkcoffee/android/ui/PhotoView;->animateIn(Landroid/graphics/Rect;II)V

    .line 505
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer;->activity:Landroid/app/Activity;

    check-cast v1, Lcom/vkcoffee/android/ui/ResulterProvider;

    invoke-interface {v1, p0}, Lcom/vkcoffee/android/ui/ResulterProvider;->registerActivityResult(Lcom/vkcoffee/android/ui/ActivityResulter;)V

    .line 506
    return-void

    .line 489
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 490
    const/high16 v2, 0xc000000

    or-int/2addr v4, v2

    goto :goto_0

    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    move v5, v7

    .line 502
    goto :goto_1
.end method

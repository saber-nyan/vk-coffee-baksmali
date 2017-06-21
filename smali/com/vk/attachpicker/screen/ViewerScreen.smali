.class public Lcom/vk/attachpicker/screen/ViewerScreen;
.super Lcom/vk/attachpicker/simplescreen/BaseScreen;
.source "ViewerScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;,
        Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;,
        Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ImageViewer"

.field private static final handler:Landroid/os/Handler;

.field public static final interpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private actionBarView:Lcom/vk/attachpicker/widget/ViewerToolbar;

.field private final actionLock:Lcom/vk/attachpicker/util/TimeoutLock;

.field private animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

.field private final animationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private attachCounterView:Lcom/vk/attachpicker/widget/AttachCounterView;

.field private final backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private final backgroundDrawableAnimation:Landroid/graphics/drawable/ColorDrawable;

.field private bottomPadding:I

.field private bottomPanel:Landroid/view/View;

.field private containerView:Landroid/widget/FrameLayout;

.field private currentPosition:I

.field private dragY:F

.field private draggingDown:Z

.field private editButton:Lcom/vk/attachpicker/widget/EditButton;

.field private galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

.field private final isVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private maximumVelocity:I

.field private minimumVelocity:I

.field private moveStartX:F

.field private final openIndex:I

.field private final orientationLocker:Lcom/vk/attachpicker/util/OrientationLocker;

.field private parentActivity:Landroid/app/Activity;

.field private photoViewerProvider:Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;

.field private final photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/mediastore/MediaStoreEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final preventStyling:Z

.field private final provider:Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;

.field private final selectionContext:Lcom/vk/attachpicker/SelectionContext;

.field private final selectionUpdateListener:Lcom/vk/attachpicker/events/NotificationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/attachpicker/events/NotificationListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final singleMode:Z

.field private final thumb:Z

.field private final totalCount:I

.field private translationY:F

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private windowView:Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/vk/attachpicker/screen/ViewerScreen;->handler:Landroid/os/Handler;

    .line 84
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/screen/ViewerScreen;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;ILcom/vk/attachpicker/SelectionContext;Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;ZZZ)V
    .locals 5
    .param p2, "openIndex"    # I
    .param p3, "selectionContext"    # Lcom/vk/attachpicker/SelectionContext;
    .param p4, "provider"    # Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;
    .param p5, "preventStyling"    # Z
    .param p6, "singleMode"    # Z
    .param p7, "thumb"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/mediastore/MediaStoreEntry;",
            ">;I",
            "Lcom/vk/attachpicker/SelectionContext;",
            "Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;",
            "ZZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vk/attachpicker/mediastore/MediaStoreEntry;>;"
    const v2, 0x7f0f0075

    const/4 v4, 0x0

    .line 95
    invoke-direct {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v2}, Lcom/vk/attachpicker/Picker;->color(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 44
    new-instance v0, Lcom/vk/attachpicker/screen/ViewerScreen$1;

    invoke-static {v2}, Lcom/vk/attachpicker/Picker;->color(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen$1;-><init>(Lcom/vk/attachpicker/screen/ViewerScreen;I)V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->backgroundDrawableAnimation:Landroid/graphics/drawable/ColorDrawable;

    .line 50
    new-instance v0, Lcom/vk/attachpicker/util/TimeoutLock;

    const-wide/16 v2, 0x1f4

    invoke-direct {v0, v2, v3}, Lcom/vk/attachpicker/util/TimeoutLock;-><init>(J)V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionLock:Lcom/vk/attachpicker/util/TimeoutLock;

    .line 51
    new-instance v0, Lcom/vk/attachpicker/util/OrientationLocker;

    invoke-direct {v0}, Lcom/vk/attachpicker/util/OrientationLocker;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->orientationLocker:Lcom/vk/attachpicker/util/OrientationLocker;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->currentPosition:I

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->animationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->isVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    iput-boolean v4, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->draggingDown:Z

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->translationY:F

    .line 96
    iput p2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->openIndex:I

    .line 97
    iput-object p1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->photos:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->totalCount:I

    .line 99
    iput-object p4, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->provider:Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;

    .line 100
    iput-object p3, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    .line 101
    iput-boolean p5, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->preventStyling:Z

    .line 102
    iput-boolean p6, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->singleMode:Z

    .line 103
    iput-boolean p7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->thumb:Z

    .line 105
    invoke-static {p0, p3}, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/screen/ViewerScreen;Lcom/vk/attachpicker/SelectionContext;)Lcom/vk/attachpicker/events/NotificationListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->selectionUpdateListener:Lcom/vk/attachpicker/events/NotificationListener;

    .line 110
    return-void
.end method

.method private _internalOnTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 964
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->isAnimationInProgress()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->photoViewerProvider:Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;

    if-nez v9, :cond_1

    .line 1043
    :cond_0
    :goto_0
    return v8

    .line 968
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_3

    .line 969
    :cond_2
    iget-boolean v9, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->draggingDown:Z

    if-nez v9, :cond_0

    .line 970
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ne v9, v7, :cond_0

    .line 971
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->moveStartX:F

    .line 972
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->dragY:F

    .line 973
    iput-boolean v8, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->draggingDown:Z

    .line 974
    iget-object v7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->orientationLocker:Lcom/vk/attachpicker/util/OrientationLocker;

    iget-object v9, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v7, v9}, Lcom/vk/attachpicker/util/OrientationLocker;->lockOrientation(Landroid/app/Activity;)V

    .line 976
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->velocityTracker:Landroid/view/VelocityTracker;

    .line 977
    iget-object v7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 980
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    .line 981
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ne v9, v7, :cond_0

    .line 982
    iget-object v9, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_4

    .line 983
    iget-object v9, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 986
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->moveStartX:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 987
    .local v1, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->dragY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 988
    .local v2, "dy":F
    iget-boolean v9, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->draggingDown:Z

    if-nez v9, :cond_5

    invoke-direct {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->getCurrentZoom()F

    move-result v9

    cmpl-float v9, v9, v12

    if-nez v9, :cond_5

    const/16 v9, 0x1e

    invoke-static {v9}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v2, v9

    if-ltz v9, :cond_5

    div-float v9, v2, v13

    cmpl-float v9, v9, v1

    if-lez v9, :cond_5

    .line 989
    iput-boolean v7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->draggingDown:Z

    .line 990
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->dragY:F

    move v8, v7

    .line 991
    goto/16 :goto_0

    .line 992
    :cond_5
    iget-boolean v7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->draggingDown:Z

    if-eqz v7, :cond_7

    .line 993
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v9, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->dragY:F

    sub-float/2addr v7, v9

    iput v7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->translationY:F

    .line 994
    iget-object v7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->windowView:Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;

    invoke-virtual {v7}, Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v3, v7, v13

    .line 995
    .local v3, "maxValue":F
    iget v7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->translationY:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    div-float/2addr v7, v3

    sub-float v0, v12, v7

    .line 997
    .local v0, "dragScale":F
    iget-object v7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->backgroundDrawableAnimation:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v9, 0x42fe0000    # 127.0f

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 998
    iget-object v7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v9, 0x42fe0000    # 127.0f

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 999
    iget-object v7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    iget v9, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->translationY:F

    invoke-virtual {v7, v9}, Lcom/vk/attachpicker/widget/VkViewPager;->setTranslationY(F)V

    .line 1001
    const v4, 0x3f666666    # 0.9f

    .line 1003
    .local v4, "minScale":F
    cmpl-float v7, v0, v11

    if-ltz v7, :cond_6

    cmpg-float v7, v0, v12

    if-gtz v7, :cond_6

    .line 1004
    const v7, 0x3f666666    # 0.9f

    const v9, 0x3dccccd0    # 0.100000024f

    sub-float v10, v0, v11

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float v5, v7, v9

    .line 1008
    .local v5, "targetScale":F
    :goto_1
    iget-object v7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    invoke-virtual {v7, v5}, Lcom/vk/attachpicker/widget/VkViewPager;->setScaleX(F)V

    .line 1009
    iget-object v7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    invoke-virtual {v7, v5}, Lcom/vk/attachpicker/widget/VkViewPager;->setScaleY(F)V

    goto/16 :goto_0

    .line 1006
    .end local v5    # "targetScale":F
    :cond_6
    const v5, 0x3f666666    # 0.9f

    .restart local v5    # "targetScale":F
    goto :goto_1

    .line 1011
    .end local v0    # "dragScale":F
    .end local v3    # "maxValue":F
    .end local v4    # "minScale":F
    .end local v5    # "targetScale":F
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->moveStartX:F

    goto/16 :goto_0

    .line 1014
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-eq v9, v7, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_0

    .line 1016
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-eq v9, v7, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_b

    .line 1017
    :cond_a
    iget-object v9, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_b

    .line 1018
    iget-object v9, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1019
    iget-object v9, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1023
    :cond_b
    iget-boolean v9, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->draggingDown:Z

    if-eqz v9, :cond_10

    .line 1024
    const/4 v6, 0x1

    .line 1025
    .local v6, "validVelocity":Z
    iget-object v9, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_c

    .line 1026
    iget-object v9, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->minimumVelocity:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_e

    iget-object v9, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->maximumVelocity:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_e

    move v6, v7

    .line 1028
    :cond_c
    :goto_2
    iget v7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->dragY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v9, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->windowView:Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;

    invoke-virtual {v9}, Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40c00000    # 6.0f

    div-float/2addr v9, v10

    cmpl-float v7, v7, v9

    if-gtz v7, :cond_d

    if-eqz v6, :cond_f

    .line 1029
    :cond_d
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->animateOut()V

    .line 1033
    :goto_3
    iput-boolean v8, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->draggingDown:Z

    .line 1038
    .end local v6    # "validVelocity":Z
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_0

    iget-object v7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_0

    .line 1039
    iget-object v7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 1040
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->velocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .restart local v6    # "validVelocity":Z
    :cond_e
    move v6, v8

    .line 1026
    goto :goto_2

    .line 1031
    :cond_f
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->animateViewPagerToDefaultPosition()V

    goto :goto_3

    .line 1035
    .end local v6    # "validVelocity":Z
    :cond_10
    iget-object v7, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->orientationLocker:Lcom/vk/attachpicker/util/OrientationLocker;

    iget-object v9, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v7, v9}, Lcom/vk/attachpicker/util/OrientationLocker;->unlockOrientation(Landroid/app/Activity;)V

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/screen/ViewerScreen;)Lcom/vk/attachpicker/widget/ViewerToolbar;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionBarView:Lcom/vk/attachpicker/widget/ViewerToolbar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/screen/ViewerScreen;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/vk/attachpicker/screen/ViewerScreen;->onPhotoOpened(IZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/vk/attachpicker/screen/ViewerScreen;)Lcom/vk/attachpicker/widget/ClippingView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vk/attachpicker/screen/ViewerScreen;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 36
    iget v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->bottomPadding:I

    return v0
.end method

.method static synthetic access$1200(Lcom/vk/attachpicker/screen/ViewerScreen;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->backgroundDrawableAnimation:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vk/attachpicker/screen/ViewerScreen;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->bottomPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vk/attachpicker/screen/ViewerScreen;)Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->windowView:Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vk/attachpicker/screen/ViewerScreen;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vk/attachpicker/screen/ViewerScreen;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->photos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/vk/attachpicker/screen/ViewerScreen;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/screen/ViewerScreen;->initPagerAdapter(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/vk/attachpicker/screen/ViewerScreen;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 36
    iget v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->openIndex:I

    return v0
.end method

.method static synthetic access$1902(Lcom/vk/attachpicker/screen/ViewerScreen;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;
    .param p1, "x1"    # F

    .prologue
    .line 36
    iput p1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->translationY:F

    return p1
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/vk/attachpicker/screen/ViewerScreen;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/vk/attachpicker/screen/ViewerScreen;Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;
    .param p1, "x1"    # Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/screen/ViewerScreen;->onPhotoClosed(Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/vk/attachpicker/screen/ViewerScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->closeImageViewer()V

    return-void
.end method

.method static synthetic access$2200(Lcom/vk/attachpicker/screen/ViewerScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->closeImageViewerInternal()V

    return-void
.end method

.method static synthetic access$2300(Lcom/vk/attachpicker/screen/ViewerScreen;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/screen/ViewerScreen;->_internalOnTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/vk/attachpicker/screen/ViewerScreen;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/screen/ViewerScreen;->setUpPhotoViewAttachers(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/vk/attachpicker/screen/ViewerScreen;)Lcom/vk/attachpicker/widget/EditButton;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vk/attachpicker/screen/ViewerScreen;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/screen/ViewerScreen;->setControlsEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/vk/attachpicker/screen/ViewerScreen;)Lcom/vk/attachpicker/util/OrientationLocker;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->orientationLocker:Lcom/vk/attachpicker/util/OrientationLocker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vk/attachpicker/screen/ViewerScreen;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->containerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vk/attachpicker/screen/ViewerScreen;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vk/attachpicker/screen/ViewerScreen;)Lcom/vk/attachpicker/widget/VkViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/vk/attachpicker/screen/ViewerScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->closeEditorAnimation()V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/vk/attachpicker/screen/ViewerScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->closeEditorAnimation()V

    return-void
.end method

.method private animateViewPagerToDefaultPosition()V
    .locals 11

    .prologue
    const/16 v10, 0xff

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 895
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 896
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    .line 897
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    const-string/jumbo v3, "scaleY"

    new-array v4, v8, [F

    aput v6, v4, v7

    .line 898
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    const-string/jumbo v3, "scaleX"

    new-array v4, v8, [F

    aput v6, v4, v7

    .line 899
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->backgroundDrawableAnimation:Landroid/graphics/drawable/ColorDrawable;

    const-string/jumbo v4, "alpha"

    new-array v5, v9, [I

    iget-object v6, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->backgroundDrawableAnimation:Landroid/graphics/drawable/ColorDrawable;

    .line 900
    invoke-virtual {v6}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v6

    aput v6, v5, v7

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    const-string/jumbo v4, "alpha"

    new-array v5, v9, [I

    iget-object v6, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 901
    invoke-virtual {v6}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v6

    aput v6, v5, v7

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 896
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 903
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 904
    new-instance v1, Lcom/vk/attachpicker/screen/ViewerScreen$12;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/screen/ViewerScreen$12;-><init>(Lcom/vk/attachpicker/screen/ViewerScreen;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 911
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 912
    return-void
.end method

.method private closeEditorAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 354
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->orientationLocker:Lcom/vk/attachpicker/util/OrientationLocker;

    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/util/OrientationLocker;->lockOrientation(Landroid/app/Activity;)V

    .line 355
    invoke-virtual {p0, v8}, Lcom/vk/attachpicker/screen/ViewerScreen;->setAnimationInProgress(Z)V

    .line 356
    invoke-direct {p0, v7}, Lcom/vk/attachpicker/screen/ViewerScreen;->setControlsEnabled(Z)V

    .line 358
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 359
    .local v0, "set":Landroid/animation/AnimatorSet;
    sget-object v1, Lcom/vk/attachpicker/util/AnimationUtils;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 361
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionBarView:Lcom/vk/attachpicker/widget/ViewerToolbar;

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    .line 362
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    .line 363
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->bottomPanel:Landroid/view/View;

    const-string/jumbo v3, "translationY"

    new-array v4, v6, [F

    iget-object v5, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->bottomPanel:Landroid/view/View;

    .line 364
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    const/4 v5, 0x0

    aput v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 361
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 366
    new-instance v1, Lcom/vk/attachpicker/screen/ViewerScreen$5;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/screen/ViewerScreen$5;-><init>(Lcom/vk/attachpicker/screen/ViewerScreen;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 374
    const-wide/16 v2, 0xaf

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 375
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 376
    return-void

    .line 361
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 362
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private closeImageViewer()V
    .locals 7

    .prologue
    .line 916
    :try_start_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 917
    .local v1, "set":Landroid/animation/AnimatorSet;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    .line 918
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    .line 917
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 920
    const-wide/16 v2, 0x42

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 922
    new-instance v2, Lcom/vk/attachpicker/screen/ViewerScreen$13;

    invoke-direct {v2, p0}, Lcom/vk/attachpicker/screen/ViewerScreen$13;-><init>(Lcom/vk/attachpicker/screen/ViewerScreen;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 936
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    :goto_0
    return-void

    .line 937
    :catch_0
    move-exception v0

    .line 938
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ImageViewer"

    invoke-static {v2, v0}, Lcom/vk/attachpicker/util/L;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 917
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private closeImageViewerInternal()V
    .locals 3

    .prologue
    .line 944
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->translationY:F

    .line 945
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/VkViewPager;->setTranslationY(F)V

    .line 946
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/VkViewPager;->setScaleX(F)V

    .line 947
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/VkViewPager;->setScaleY(F)V

    .line 949
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/ClippingView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 950
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->realDismiss()V

    .line 951
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    if-eqz v1, :cond_0

    .line 952
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/ClippingView;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 954
    :catch_0
    move-exception v0

    .line 955
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ImageViewer"

    invoke-static {v1, v0}, Lcom/vk/attachpicker/util/L;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getCurrentMediaStoreEntry()Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->photos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/VkViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    return-object v0
.end method

.method private getCurrentZoom()F
    .locals 2

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->getCurrentZoomableImageView()Lcom/vk/attachpicker/widget/ImageViewerImageView;

    move-result-object v0

    .line 869
    .local v0, "currentImageView":Lcom/vk/attachpicker/widget/ImageViewerImageView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->getPhotoViewAttacher()Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 870
    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->getPhotoViewAttacher()Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    .line 872
    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getCurrentZoomableImageView()Lcom/vk/attachpicker/widget/ImageViewerImageView;
    .locals 3

    .prologue
    .line 855
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    if-eqz v1, :cond_0

    .line 856
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/vk/attachpicker/widget/ImageViewerImageView;

    .line 857
    .local v0, "array":[Lcom/vk/attachpicker/widget/ImageViewerImageView;
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    invoke-static {p0, v0}, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$6;->lambdaFactory$(Lcom/vk/attachpicker/screen/ViewerScreen;[Lcom/vk/attachpicker/widget/ImageViewerImageView;)Lcom/vk/attachpicker/util/Screen$ViewCallback;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vk/attachpicker/util/Screen;->iterateOverViews(Landroid/view/ViewGroup;Lcom/vk/attachpicker/util/Screen$ViewCallback;)V

    .line 862
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 864
    .end local v0    # "array":[Lcom/vk/attachpicker/widget/ImageViewerImageView;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initPagerAdapter(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/mediastore/MediaStoreEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 823
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vk/attachpicker/mediastore/MediaStoreEntry;>;"
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    new-instance v1, Lcom/vk/attachpicker/screen/ViewerScreen$10;

    invoke-direct {v1, p0, p1}, Lcom/vk/attachpicker/screen/ViewerScreen$10;-><init>(Lcom/vk/attachpicker/screen/ViewerScreen;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/VkViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 852
    return-void
.end method

.method private onPhotoClosed(Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;)V
    .locals 2
    .param p1, "object"    # Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;

    .prologue
    .line 810
    if-eqz p1, :cond_0

    .line 811
    iget-object v0, p1, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->containerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 813
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->currentPosition:I

    .line 814
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->windowView:Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;

    new-instance v1, Lcom/vk/attachpicker/screen/ViewerScreen$9;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/screen/ViewerScreen$9;-><init>(Lcom/vk/attachpicker/screen/ViewerScreen;)V

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;->post(Ljava/lang/Runnable;)Z

    .line 820
    return-void
.end method

.method private onPhotoOpened(IZ)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 795
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->photoViewerProvider:Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->photoViewerProvider:Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;

    iget v3, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->currentPosition:I

    invoke-interface {v0, v3, p1}, Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;->onPhotoSwitch(II)V

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionBarView:Lcom/vk/attachpicker/widget/ViewerToolbar;

    iget-object v3, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->parentActivity:Landroid/app/Activity;

    const v4, 0x7f080365

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget v6, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->totalCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vk/attachpicker/widget/ViewerToolbar;->setTitle(Ljava/lang/String;)V

    .line 799
    iget-object v3, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionBarView:Lcom/vk/attachpicker/widget/ViewerToolbar;

    iget-object v4, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    invoke-virtual {v4, v0}, Lcom/vk/attachpicker/SelectionContext;->isSelected(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/vk/attachpicker/widget/ViewerToolbar;->setChecked(Z)V

    .line 800
    iget-object v3, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    iget-boolean v0, v0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isVideo:Z

    invoke-virtual {v3, v0}, Lcom/vk/attachpicker/widget/EditButton;->setTrimMode(Z)V

    .line 801
    iget-boolean v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->preventStyling:Z

    if-eqz v0, :cond_1

    .line 802
    invoke-direct {p0, v2, p2}, Lcom/vk/attachpicker/screen/ViewerScreen;->setEditButtonVisibility(ZZ)V

    .line 806
    :goto_0
    iput p1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->currentPosition:I

    .line 807
    return-void

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v0}, Lcom/vk/attachpicker/SelectionContext;->selectionCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    invoke-virtual {v0}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isCorrupted()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0, v0, p2}, Lcom/vk/attachpicker/screen/ViewerScreen;->setEditButtonVisibility(ZZ)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private openEditorAnimation(Ljava/lang/Runnable;)V
    .locals 9
    .param p1, "runAfter"    # Ljava/lang/Runnable;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 325
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->orientationLocker:Lcom/vk/attachpicker/util/OrientationLocker;

    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/util/OrientationLocker;->lockOrientation(Landroid/app/Activity;)V

    .line 326
    invoke-virtual {p0, v6}, Lcom/vk/attachpicker/screen/ViewerScreen;->setAnimationInProgress(Z)V

    .line 327
    invoke-direct {p0, v8}, Lcom/vk/attachpicker/screen/ViewerScreen;->setControlsEnabled(Z)V

    .line 329
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->getCurrentZoomableImageView()Lcom/vk/attachpicker/widget/ImageViewerImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->getCurrentZoomableImageView()Lcom/vk/attachpicker/widget/ImageViewerImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->getPhotoViewAttacher()Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v6}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setScale(FZ)V

    .line 333
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 334
    .local v0, "set":Landroid/animation/AnimatorSet;
    sget-object v1, Lcom/vk/attachpicker/util/AnimationUtils;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 336
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionBarView:Lcom/vk/attachpicker/widget/ViewerToolbar;

    const-string/jumbo v3, "alpha"

    new-array v4, v7, [F

    fill-array-data v4, :array_0

    .line 337
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    const-string/jumbo v3, "alpha"

    new-array v4, v7, [F

    fill-array-data v4, :array_1

    .line 338
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->bottomPanel:Landroid/view/View;

    const-string/jumbo v3, "translationY"

    new-array v4, v7, [F

    const/4 v5, 0x0

    aput v5, v4, v8

    iget-object v5, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->bottomPanel:Landroid/view/View;

    .line 339
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    .line 336
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 341
    new-instance v1, Lcom/vk/attachpicker/screen/ViewerScreen$4;

    invoke-direct {v1, p0, p1}, Lcom/vk/attachpicker/screen/ViewerScreen$4;-><init>(Lcom/vk/attachpicker/screen/ViewerScreen;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 349
    const-wide/16 v2, 0xaf

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 350
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 351
    return-void

    .line 336
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 337
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setControlsEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 792
    return-void
.end method

.method private setEditButtonVisibility(ZZ)V
    .locals 6
    .param p1, "visible"    # Z
    .param p2, "animated"    # Z

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 295
    if-eqz p2, :cond_1

    .line 296
    if-eqz p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    invoke-virtual {v0, v3}, Lcom/vk/attachpicker/widget/EditButton;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/EditButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 299
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 300
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 301
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 322
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/EditButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 305
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/vk/attachpicker/screen/ViewerScreen$3;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/screen/ViewerScreen$3;-><init>(Lcom/vk/attachpicker/screen/ViewerScreen;)V

    .line 306
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 311
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 314
    :cond_1
    if-eqz p1, :cond_2

    .line 315
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    invoke-virtual {v0, v2}, Lcom/vk/attachpicker/widget/EditButton;->setAlpha(F)V

    .line 316
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    invoke-virtual {v0, v3}, Lcom/vk/attachpicker/widget/EditButton;->setVisibility(I)V

    goto :goto_0

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/EditButton;->setAlpha(F)V

    .line 319
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/EditButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private setUpPhotoViewAttachers(I)V
    .locals 2
    .param p1, "currentPosition"    # I

    .prologue
    .line 880
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    new-instance v1, Lcom/vk/attachpicker/screen/ViewerScreen$11;

    invoke-direct {v1, p0, p1}, Lcom/vk/attachpicker/screen/ViewerScreen$11;-><init>(Lcom/vk/attachpicker/screen/ViewerScreen;I)V

    invoke-static {v0, v1}, Lcom/vk/attachpicker/util/Screen;->iterateOverViews(Landroid/view/ViewGroup;Lcom/vk/attachpicker/util/Screen$ViewCallback;)V

    .line 892
    :cond_0
    return-void
.end method


# virtual methods
.method public final $(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 960
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->windowView:Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public animateIn()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 379
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->isAnimationInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->openIndex:I

    invoke-direct {p0, v2, v4}, Lcom/vk/attachpicker/screen/ViewerScreen;->onPhotoOpened(IZ)V

    .line 386
    :try_start_0
    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->provider:Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;

    if-eqz v2, :cond_2

    .line 388
    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->provider:Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;

    iget v3, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->openIndex:I

    invoke-interface {v2, v3}, Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;->getPlaceForPhoto(I)Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;

    move-result-object v1

    .line 389
    .local v1, "object":Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 392
    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->provider:Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;

    iput-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->photoViewerProvider:Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;

    .line 395
    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->windowView:Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;

    iget-object v3, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->backgroundDrawableAnimation:Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v2, v3}, Lcom/vk/attachpicker/util/CompatUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 396
    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->backgroundDrawableAnimation:Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 397
    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->bottomPanel:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 398
    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/widget/EditButton;->setAlpha(F)V

    .line 399
    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionBarView:Lcom/vk/attachpicker/widget/ViewerToolbar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/widget/ViewerToolbar;->setAlpha(F)V

    .line 400
    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/widget/ClippingView;->setAlpha(F)V

    .line 402
    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/vk/attachpicker/screen/ViewerScreen$6;

    invoke-direct {v3, p0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen$6;-><init>(Lcom/vk/attachpicker/screen/ViewerScreen;Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 555
    .end local v1    # "object":Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ImageViewer"

    invoke-static {v2, v0}, Lcom/vk/attachpicker/util/L;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 557
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->closeImageViewerInternal()V

    .line 558
    invoke-virtual {p0, v4}, Lcom/vk/attachpicker/screen/ViewerScreen;->setIsVisible(Z)V

    .line 559
    invoke-virtual {p0, v4}, Lcom/vk/attachpicker/screen/ViewerScreen;->setAnimationInProgress(Z)V

    goto :goto_0

    .line 532
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->photoViewerProvider:Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;

    .line 534
    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->backgroundDrawableAnimation:Landroid/graphics/drawable/ColorDrawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 535
    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionBarView:Lcom/vk/attachpicker/widget/ViewerToolbar;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/widget/ViewerToolbar;->setAlpha(F)V

    .line 536
    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->bottomPanel:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 537
    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/widget/EditButton;->setAlpha(F)V

    .line 539
    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->photos:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/vk/attachpicker/screen/ViewerScreen;->initPagerAdapter(Ljava/util/ArrayList;)V

    .line 542
    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    iget v3, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->openIndex:I

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/widget/VkViewPager;->setCurrentItem(I)V

    .line 543
    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/widget/VkViewPager;->setVisibility(I)V

    .line 544
    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/widget/ClippingView;->setVisibility(I)V

    .line 545
    sget-object v2, Lcom/vk/attachpicker/screen/ViewerScreen;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/vk/attachpicker/screen/ViewerScreen$7;

    invoke-direct {v3, p0}, Lcom/vk/attachpicker/screen/ViewerScreen$7;-><init>(Lcom/vk/attachpicker/screen/ViewerScreen;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 551
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/vk/attachpicker/screen/ViewerScreen;->setControlsEnabled(Z)V

    .line 552
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/vk/attachpicker/screen/ViewerScreen;->setIsVisible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public animateOut()V
    .locals 42

    .prologue
    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->parentActivity:Landroid/app/Activity;

    move-object/from16 v34, v0

    if-eqz v34, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->isAnimationInProgress()Z

    move-result v34

    if-eqz v34, :cond_1

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    const/16 v23, 0x0

    .line 572
    .local v23, "placeProviderObject":Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->photoViewerProvider:Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;

    move-object/from16 v34, v0

    if-eqz v34, :cond_f

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->photoViewerProvider:Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->currentPosition:I

    move/from16 v35, v0

    invoke-interface/range {v34 .. v35}, Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;->getPlaceForPhoto(I)Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;

    move-result-object v23

    .line 575
    invoke-direct/range {p0 .. p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->getCurrentZoom()F

    move-result v17

    .line 576
    .local v17, "currentZoom":F
    const/16 v33, 0x0

    .line 577
    .local v33, "zoomDisplayRect":Landroid/graphics/RectF;
    invoke-direct/range {p0 .. p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->getCurrentZoomableImageView()Lcom/vk/attachpicker/widget/ImageViewerImageView;

    move-result-object v10

    .line 578
    .local v10, "centerImage":Lcom/vk/attachpicker/widget/ImageViewerImageView;
    if-eqz v10, :cond_2

    .line 579
    invoke-virtual {v10}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->getPhotoViewAttacher()Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    move-result-object v16

    .line 580
    .local v16, "currentPhotoViewAttacher":Lcom/vk/attachpicker/photoview/PhotoViewAttacher;
    if-eqz v16, :cond_2

    .line 581
    invoke-virtual/range {v16 .. v16}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v33

    .line 586
    .end local v16    # "currentPhotoViewAttacher":Lcom/vk/attachpicker/photoview/PhotoViewAttacher;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->windowView:Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->backgroundDrawableAnimation:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v35, v0

    invoke-static/range {v34 .. v35}, Lcom/vk/attachpicker/util/CompatUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->orientationLocker:Lcom/vk/attachpicker/util/OrientationLocker;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->parentActivity:Landroid/app/Activity;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/vk/attachpicker/util/OrientationLocker;->lockOrientation(Landroid/app/Activity;)V

    .line 588
    const/16 v34, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->setAnimationInProgress(Z)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/vk/attachpicker/widget/ClippingView;->setVisibility(I)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    move-object/from16 v34, v0

    const/16 v35, 0x4

    invoke-virtual/range {v34 .. v35}, Lcom/vk/attachpicker/widget/VkViewPager;->setVisibility(I)V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/vk/attachpicker/widget/VkViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 592
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->setControlsEnabled(Z)V

    .line 595
    const/16 v18, 0x0

    .line 596
    .local v18, "drawRegion":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/vk/attachpicker/widget/ClippingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .line 597
    .local v21, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v23, :cond_a

    .line 598
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->imageView:Lcom/vk/attachpicker/widget/LocalImageView;

    move-object/from16 v34, v0

    .line 599
    invoke-virtual/range {v34 .. v34}, Lcom/vk/attachpicker/widget/LocalImageView;->getWidth()I

    move-result v34

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->imageView:Lcom/vk/attachpicker/widget/LocalImageView;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/vk/attachpicker/widget/LocalImageView;->getHeight()I

    move-result v35

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    .line 600
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v37

    const/16 v38, 0x0

    .line 598
    invoke-static/range {v34 .. v38}, Lcom/vk/attachpicker/widget/LocalImageView;->computeBounds(IIIIZ)Landroid/graphics/RectF;

    move-result-object v18

    .line 602
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v34, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v35, v0

    sub-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 603
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v34, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v35, v0

    sub-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 605
    invoke-virtual {v10}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 606
    .local v9, "bigBitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_9

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/vk/attachpicker/widget/ClippingView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 608
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->imageView:Lcom/vk/attachpicker/widget/LocalImageView;

    move-object/from16 v34, v0

    .line 609
    invoke-virtual/range {v34 .. v34}, Lcom/vk/attachpicker/widget/LocalImageView;->getWidth()I

    move-result v34

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->imageView:Lcom/vk/attachpicker/widget/LocalImageView;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/vk/attachpicker/widget/LocalImageView;->getHeight()I

    move-result v35

    .line 610
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v37

    const/16 v38, 0x0

    .line 608
    invoke-static/range {v34 .. v38}, Lcom/vk/attachpicker/widget/LocalImageView;->computeBounds(IIIIZ)Landroid/graphics/RectF;

    move-result-object v34

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 625
    .end local v9    # "bigBitmap":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/ClippingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->width()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v26, v34, v35

    .line 628
    .local v26, "scaleX":F
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->height()I

    move-result v34

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->getStatusBarHeight()I

    move-result v35

    sub-int v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->bottomPadding:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v27, v34, v35

    .line 629
    .local v27, "scaleY":F
    cmpl-float v34, v26, v27

    if-lez v34, :cond_b

    move/from16 v25, v27

    .line 630
    .local v25, "scale2":F
    :goto_2
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v34, v34, v17

    mul-float v34, v34, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/vk/attachpicker/widget/VkViewPager;->getScaleX()F

    move-result v35

    mul-float v30, v34, v35

    .line 631
    .local v30, "width":F
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v34, v34, v17

    mul-float v34, v34, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/vk/attachpicker/widget/VkViewPager;->getScaleY()F

    move-result v35

    mul-float v20, v34, v35

    .line 632
    .local v20, "height":F
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->width()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    sub-float v34, v34, v30

    const/high16 v35, 0x40000000    # 2.0f

    div-float v31, v34, v35

    .line 633
    .local v31, "xPos":F
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->height()I

    move-result v34

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->getStatusBarHeight()I

    move-result v35

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    sub-float v34, v34, v20

    const/high16 v35, 0x40000000    # 2.0f

    div-float v32, v34, v35

    .line 634
    .local v32, "yPos":F
    const/high16 v34, 0x3f800000    # 1.0f

    cmpl-float v34, v17, v34

    if-eqz v34, :cond_4

    if-nez v33, :cond_c

    .line 635
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/ClippingView;->setTranslationX(F)V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->translationY:F

    move/from16 v35, v0

    add-float v35, v35, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->bottomPadding:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sub-float v35, v35, v36

    invoke-virtual/range {v34 .. v35}, Lcom/vk/attachpicker/widget/ClippingView;->setTranslationY(F)V

    .line 646
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    move-object/from16 v34, v0

    mul-float v35, v17, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/vk/attachpicker/widget/VkViewPager;->getScaleX()F

    move-result v36

    mul-float v35, v35, v36

    invoke-virtual/range {v34 .. v35}, Lcom/vk/attachpicker/widget/ClippingView;->setScaleX(F)V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    move-object/from16 v34, v0

    mul-float v35, v17, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/vk/attachpicker/widget/VkViewPager;->getScaleY()F

    move-result v36

    mul-float v35, v35, v36

    invoke-virtual/range {v34 .. v35}, Lcom/vk/attachpicker/widget/ClippingView;->setScaleY(F)V

    .line 650
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 651
    .local v8, "animatorSet":Landroid/animation/AnimatorSet;
    if-eqz v23, :cond_d

    .line 653
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(F)F

    move-result v34

    move/from16 v0, v34

    float-to-int v12, v0

    .line 654
    .local v12, "clipHorizontal":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(F)F

    move-result v34

    move/from16 v0, v34

    float-to-int v14, v0

    .line 656
    .local v14, "clipVertical":I
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->imageView:Lcom/vk/attachpicker/widget/LocalImageView;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vk/attachpicker/util/Utils;->getXOnScreen(Landroid/view/View;)I

    move-result v28

    .line 657
    .local v28, "viewX":I
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->imageView:Lcom/vk/attachpicker/widget/LocalImageView;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vk/attachpicker/util/Utils;->getYOnScreen(Landroid/view/View;)I

    move-result v34

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->getStatusBarHeight()I

    move-result v35

    sub-int v29, v34, v35

    .line 659
    .local v29, "viewY":I
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v15, v0, [I

    .line 660
    .local v15, "coords2":[I
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 662
    const/16 v34, 0x1

    aget v34, v15, v34

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->getStatusBarHeight()I

    move-result v35

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    add-float v35, v35, v36

    sub-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v13, v0

    .line 663
    .local v13, "clipTop":I
    if-gez v13, :cond_6

    .line 664
    const/4 v13, 0x0

    .line 666
    :cond_6
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v35, v0

    add-float v34, v34, v35

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v35, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    add-float v34, v34, v35

    const/16 v35, 0x1

    aget v35, v15, v35

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getHeight()I

    move-result v36

    add-int v35, v35, v36

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->getStatusBarHeight()I

    move-result v36

    sub-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    sub-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v11, v0

    .line 667
    .local v11, "clipBottom":I
    if-gez v11, :cond_7

    .line 668
    const/4 v11, 0x0

    .line 671
    :cond_7
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 672
    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 674
    const/16 v34, 0xb

    move/from16 v0, v34

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    move-object/from16 v36, v0

    sget-object v37, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [F

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/high16 v40, 0x3f800000    # 1.0f

    aput v40, v38, v39

    .line 675
    invoke-static/range {v36 .. v38}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    move-object/from16 v36, v0

    sget-object v37, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [F

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/high16 v40, 0x3f800000    # 1.0f

    aput v40, v38, v39

    .line 676
    invoke-static/range {v36 .. v38}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    move-object/from16 v36, v0

    sget-object v37, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [F

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v41, v0

    add-float v40, v40, v41

    aput v40, v38, v39

    .line 677
    invoke-static/range {v36 .. v38}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    move-object/from16 v36, v0

    sget-object v37, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [F

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v41, v0

    add-float v40, v40, v41

    aput v40, v38, v39

    .line 678
    invoke-static/range {v36 .. v38}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->backgroundDrawableAnimation:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v36, v0

    const-string/jumbo v37, "alpha"

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x0

    aput v40, v38, v39

    .line 679
    invoke-static/range {v36 .. v38}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    move-object/from16 v36, v0

    sget-object v37, Lcom/vk/attachpicker/widget/ClippingView;->CLIP_HORIZONTAL:Landroid/util/Property;

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput v12, v38, v39

    .line 680
    invoke-static/range {v36 .. v38}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    move-object/from16 v36, v0

    sget-object v37, Lcom/vk/attachpicker/widget/ClippingView;->CLIP_TOP:Landroid/util/Property;

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput v13, v38, v39

    .line 681
    invoke-static/range {v36 .. v38}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    move-object/from16 v36, v0

    sget-object v37, Lcom/vk/attachpicker/widget/ClippingView;->CLIP_BOTTOM:Landroid/util/Property;

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput v11, v38, v39

    .line 682
    invoke-static/range {v36 .. v38}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->bottomPanel:Landroid/view/View;

    move-object/from16 v36, v0

    sget-object v37, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [F

    move-object/from16 v38, v0

    fill-array-data v38, :array_0

    .line 683
    invoke-static/range {v36 .. v38}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    move-object/from16 v36, v0

    sget-object v37, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [F

    move-object/from16 v38, v0

    fill-array-data v38, :array_1

    .line 684
    invoke-static/range {v36 .. v38}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionBarView:Lcom/vk/attachpicker/widget/ViewerToolbar;

    move-object/from16 v36, v0

    sget-object v37, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [F

    move-object/from16 v38, v0

    fill-array-data v38, :array_2

    .line 685
    invoke-static/range {v36 .. v38}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v36

    aput-object v36, v34, v35

    .line 674
    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 698
    .end local v11    # "clipBottom":I
    .end local v12    # "clipHorizontal":I
    .end local v13    # "clipTop":I
    .end local v14    # "clipVertical":I
    .end local v15    # "coords2":[I
    .end local v28    # "viewX":I
    .end local v29    # "viewY":I
    :goto_4
    move-object/from16 v24, v23

    .line 699
    .local v24, "ppo":Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;
    const-wide/16 v34, 0xc8

    move-wide/from16 v0, v34

    invoke-virtual {v8, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 700
    new-instance v34, Lcom/vk/attachpicker/screen/ViewerScreen$8;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/screen/ViewerScreen$8;-><init>(Lcom/vk/attachpicker/screen/ViewerScreen;Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;)V

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 720
    sget-object v34, Lcom/vk/attachpicker/screen/ViewerScreen;->interpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 721
    const-wide/16 v34, 0x10

    move-wide/from16 v0, v34

    invoke-virtual {v8, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 722
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 737
    .end local v8    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v10    # "centerImage":Lcom/vk/attachpicker/widget/ImageViewerImageView;
    .end local v17    # "currentZoom":F
    .end local v18    # "drawRegion":Landroid/graphics/RectF;
    .end local v20    # "height":F
    .end local v21    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v24    # "ppo":Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;
    .end local v25    # "scale2":F
    .end local v26    # "scaleX":F
    .end local v27    # "scaleY":F
    .end local v30    # "width":F
    .end local v31    # "xPos":F
    .end local v32    # "yPos":F
    .end local v33    # "zoomDisplayRect":Landroid/graphics/RectF;
    :catch_0
    move-exception v19

    .line 738
    .local v19, "e":Ljava/lang/Exception;
    const-string/jumbo v34, "ImageViewer"

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/vk/attachpicker/util/L;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 740
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vk/attachpicker/screen/ViewerScreen;->translationY:F

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/vk/attachpicker/widget/VkViewPager;->setTranslationY(F)V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    move-object/from16 v34, v0

    const/high16 v35, 0x3f800000    # 1.0f

    invoke-virtual/range {v34 .. v35}, Lcom/vk/attachpicker/widget/VkViewPager;->setScaleX(F)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    move-object/from16 v34, v0

    const/high16 v35, 0x3f800000    # 1.0f

    invoke-virtual/range {v34 .. v35}, Lcom/vk/attachpicker/widget/VkViewPager;->setScaleY(F)V

    .line 744
    if-eqz v23, :cond_8

    .line 745
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->containerView:Landroid/view/View;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->setVisibility(I)V

    .line 747
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->closeImageViewerInternal()V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->orientationLocker:Lcom/vk/attachpicker/util/OrientationLocker;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->parentActivity:Landroid/app/Activity;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/vk/attachpicker/util/OrientationLocker;->unlockOrientation(Landroid/app/Activity;)V

    .line 750
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->setIsVisible(Z)V

    .line 751
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->setAnimationInProgress(Z)V

    goto/16 :goto_0

    .line 612
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v9    # "bigBitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "centerImage":Lcom/vk/attachpicker/widget/ImageViewerImageView;
    .restart local v17    # "currentZoom":F
    .restart local v18    # "drawRegion":Landroid/graphics/RectF;
    .restart local v21    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v33    # "zoomDisplayRect":Landroid/graphics/RectF;
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    move-object/from16 v34, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/vk/attachpicker/widget/ClippingView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 615
    .end local v9    # "bigBitmap":Landroid/graphics/Bitmap;
    :cond_a
    if-eqz v10, :cond_3

    .line 616
    invoke-virtual {v10}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 617
    .restart local v9    # "bigBitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_3

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/vk/attachpicker/widget/ClippingView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 620
    invoke-virtual {v10}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->getWidth()I

    move-result v34

    invoke-virtual {v10}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->getHeight()I

    move-result v35

    .line 621
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v37

    const/16 v38, 0x0

    .line 619
    invoke-static/range {v34 .. v38}, Lcom/vk/attachpicker/widget/LocalImageView;->computeBounds(IIIIZ)Landroid/graphics/RectF;

    move-result-object v18

    goto/16 :goto_1

    .end local v9    # "bigBitmap":Landroid/graphics/Bitmap;
    .restart local v26    # "scaleX":F
    .restart local v27    # "scaleY":F
    :cond_b
    move/from16 v25, v26

    .line 629
    goto/16 :goto_2

    .line 637
    .restart local v20    # "height":F
    .restart local v25    # "scale2":F
    .restart local v30    # "width":F
    .restart local v31    # "xPos":F
    .restart local v32    # "yPos":F
    :cond_c
    if-eqz v33, :cond_5

    .line 638
    new-instance v22, Landroid/graphics/RectF;

    add-float v34, v31, v30

    add-float v35, v32, v20

    move-object/from16 v0, v22

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 640
    .local v22, "normalizedAnimRect":Landroid/graphics/RectF;
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->centerX()F

    move-result v34

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->centerX()F

    move-result v35

    sub-float v6, v34, v35

    .line 641
    .local v6, "_translationX":F
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->centerY()F

    move-result v34

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->centerY()F

    move-result v35

    sub-float v34, v34, v35

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->getStatusBarHeight()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    add-float v7, v34, v35

    .line 643
    .local v7, "_translationY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    move-object/from16 v34, v0

    add-float v35, v31, v6

    invoke-virtual/range {v34 .. v35}, Lcom/vk/attachpicker/widget/ClippingView;->setTranslationX(F)V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    move-object/from16 v34, v0

    add-float v35, v32, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->bottomPadding:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sub-float v35, v35, v36

    invoke-virtual/range {v34 .. v35}, Lcom/vk/attachpicker/widget/ClippingView;->setTranslationY(F)V

    goto/16 :goto_3

    .line 688
    .end local v6    # "_translationX":F
    .end local v7    # "_translationY":F
    .end local v22    # "normalizedAnimRect":Landroid/graphics/RectF;
    .restart local v8    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_d
    const/16 v34, 0x6

    move/from16 v0, v34

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v35, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->backgroundDrawableAnimation:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v36, v0

    const-string/jumbo v37, "alpha"

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x0

    aput v40, v38, v39

    .line 689
    invoke-static/range {v36 .. v38}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v36

    aput-object v36, v35, v34

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    move-object/from16 v36, v0

    sget-object v37, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [F

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x0

    aput v40, v38, v39

    .line 690
    invoke-static/range {v36 .. v38}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v36

    aput-object v36, v35, v34

    const/16 v36, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    move-object/from16 v37, v0

    sget-object v38, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->translationY:F

    move/from16 v34, v0

    const/16 v41, 0x0

    cmpl-float v34, v34, v41

    if-ltz v34, :cond_e

    .line 691
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->height()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    :goto_5
    aput v34, v39, v40

    invoke-static/range {v37 .. v39}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v34

    aput-object v34, v35, v36

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->bottomPanel:Landroid/view/View;

    move-object/from16 v36, v0

    sget-object v37, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [F

    move-object/from16 v38, v0

    fill-array-data v38, :array_3

    .line 692
    invoke-static/range {v36 .. v38}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v36

    aput-object v36, v35, v34

    const/16 v34, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    move-object/from16 v36, v0

    sget-object v37, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [F

    move-object/from16 v38, v0

    fill-array-data v38, :array_4

    .line 693
    invoke-static/range {v36 .. v38}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v36

    aput-object v36, v35, v34

    const/16 v34, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionBarView:Lcom/vk/attachpicker/widget/ViewerToolbar;

    move-object/from16 v36, v0

    sget-object v37, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [F

    move-object/from16 v38, v0

    fill-array-data v38, :array_5

    .line 694
    invoke-static/range {v36 .. v38}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v36

    aput-object v36, v35, v34

    .line 688
    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_4

    .line 691
    :cond_e
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->height()I

    move-result v34

    move/from16 v0, v34

    neg-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    goto :goto_5

    .line 724
    .end local v8    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v10    # "centerImage":Lcom/vk/attachpicker/widget/ImageViewerImageView;
    .end local v17    # "currentZoom":F
    .end local v18    # "drawRegion":Landroid/graphics/RectF;
    .end local v20    # "height":F
    .end local v21    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v25    # "scale2":F
    .end local v26    # "scaleX":F
    .end local v27    # "scaleY":F
    .end local v30    # "width":F
    .end local v31    # "xPos":F
    .end local v32    # "yPos":F
    .end local v33    # "zoomDisplayRect":Landroid/graphics/RectF;
    :cond_f
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vk/attachpicker/screen/ViewerScreen;->translationY:F

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/vk/attachpicker/widget/VkViewPager;->setTranslationY(F)V

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    move-object/from16 v34, v0

    const/high16 v35, 0x3f800000    # 1.0f

    invoke-virtual/range {v34 .. v35}, Lcom/vk/attachpicker/widget/VkViewPager;->setScaleX(F)V

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    move-object/from16 v34, v0

    const/high16 v35, 0x3f800000    # 1.0f

    invoke-virtual/range {v34 .. v35}, Lcom/vk/attachpicker/widget/VkViewPager;->setScaleY(F)V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    move-object/from16 v34, v0

    const/16 v35, 0x4

    invoke-virtual/range {v34 .. v35}, Lcom/vk/attachpicker/widget/VkViewPager;->setVisibility(I)V

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/vk/attachpicker/widget/VkViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 730
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->setControlsEnabled(Z)V

    .line 731
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->onPhotoClosed(Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->orientationLocker:Lcom/vk/attachpicker/util/OrientationLocker;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen;->parentActivity:Landroid/app/Activity;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/vk/attachpicker/util/OrientationLocker;->unlockOrientation(Landroid/app/Activity;)V

    .line 735
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->setIsVisible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 682
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 683
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 684
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 691
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 692
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 693
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public createView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 120
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->parentActivity:Landroid/app/Activity;

    .line 121
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->bottomPadding:I

    .line 122
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->selectionUpdateListener:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v1, v6, v2}, Lcom/vk/attachpicker/events/NotificationCenter;->addListener(ILcom/vk/attachpicker/events/NotificationListener;)V

    .line 125
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->parentActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 126
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->minimumVelocity:I

    .line 127
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->maximumVelocity:I

    .line 129
    new-instance v1, Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->parentActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;-><init>(Lcom/vk/attachpicker/screen/ViewerScreen;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->windowView:Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;

    .line 130
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->windowView:Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->backgroundDrawableAnimation:Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v1, v2}, Lcom/vk/attachpicker/util/CompatUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->windowView:Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;

    invoke-virtual {v1, v5}, Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;->setFocusable(Z)V

    .line 133
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030121

    iget-object v3, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->windowView:Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 134
    const v1, 0x7f1002f0

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->containerView:Landroid/widget/FrameLayout;

    .line 135
    const v1, 0x7f100303

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/widget/VkViewPager;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    .line 136
    const v1, 0x7f10030b

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/widget/ViewerToolbar;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionBarView:Lcom/vk/attachpicker/widget/ViewerToolbar;

    .line 137
    const v1, 0x7f10030a

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/widget/ClippingView;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->animatingImageView:Lcom/vk/attachpicker/widget/ClippingView;

    .line 138
    const v1, 0x7f10030c

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/widget/EditButton;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    .line 139
    const v1, 0x7f1002de

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->$(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->bottomPanel:Landroid/view/View;

    .line 140
    const v1, 0x7f1002df

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/widget/AttachCounterView;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->attachCounterView:Lcom/vk/attachpicker/widget/AttachCounterView;

    .line 141
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->attachCounterView:Lcom/vk/attachpicker/widget/AttachCounterView;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v2}, Lcom/vk/attachpicker/SelectionContext;->selectionCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/AttachCounterView;->setCount(I)V

    .line 143
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionBarView:Lcom/vk/attachpicker/widget/ViewerToolbar;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$2;->lambdaFactory$(Lcom/vk/attachpicker/screen/ViewerScreen;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/ViewerToolbar;->setOnBackListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    if-eqz v1, :cond_2

    .line 145
    iget-boolean v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->singleMode:Z

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionBarView:Lcom/vk/attachpicker/widget/ViewerToolbar;

    invoke-virtual {v1, v7}, Lcom/vk/attachpicker/widget/ViewerToolbar;->setOnCheckListener(Landroid/view/View$OnClickListener;)V

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v1}, Lcom/vk/attachpicker/SelectionContext;->selectionCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    invoke-virtual {v1, v4}, Lcom/vk/attachpicker/widget/EditButton;->setVisibility(I)V

    .line 191
    :goto_1
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/VkViewPager;->setPageMargin(I)V

    .line 192
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    invoke-virtual {v1, v6}, Lcom/vk/attachpicker/widget/VkViewPager;->setOffscreenPageLimit(I)V

    .line 193
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->galleryViewPager:Lcom/vk/attachpicker/widget/VkViewPager;

    new-instance v2, Lcom/vk/attachpicker/screen/ViewerScreen$2;

    invoke-direct {v2, p0}, Lcom/vk/attachpicker/screen/ViewerScreen$2;-><init>(Lcom/vk/attachpicker/screen/ViewerScreen;)V

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/VkViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 211
    iget-boolean v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->preventStyling:Z

    if-eqz v1, :cond_3

    .line 212
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    invoke-virtual {v1, v4}, Lcom/vk/attachpicker/widget/EditButton;->setVisibility(I)V

    .line 248
    :goto_2
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->attachCounterView:Lcom/vk/attachpicker/widget/AttachCounterView;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$5;->lambdaFactory$(Lcom/vk/attachpicker/screen/ViewerScreen;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/AttachCounterView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->windowView:Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;

    return-object v1

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionBarView:Lcom/vk/attachpicker/widget/ViewerToolbar;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$3;->lambdaFactory$(Lcom/vk/attachpicker/screen/ViewerScreen;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/ViewerToolbar;->setOnCheckListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    invoke-virtual {v1, v5}, Lcom/vk/attachpicker/widget/EditButton;->setVisibility(I)V

    goto :goto_1

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    invoke-virtual {v1, v4}, Lcom/vk/attachpicker/widget/EditButton;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionBarView:Lcom/vk/attachpicker/widget/ViewerToolbar;

    invoke-virtual {v1, v7}, Lcom/vk/attachpicker/widget/ViewerToolbar;->setOnCheckListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 214
    :cond_3
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$4;->lambdaFactory$(Lcom/vk/attachpicker/screen/ViewerScreen;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/EditButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public isAnimationInProgress()Z
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->animationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->isVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$createView$31(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->animateOut()V

    return-void
.end method

.method synthetic lambda$createView$32(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 149
    sget-object v1, Lcom/vk/attachpicker/SelectionContext;->globalCheckLock:Lcom/vk/attachpicker/util/TimeoutLock;

    invoke-virtual {v1}, Lcom/vk/attachpicker/util/TimeoutLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    sget-object v1, Lcom/vk/attachpicker/SelectionContext;->globalCheckLock:Lcom/vk/attachpicker/util/TimeoutLock;

    invoke-virtual {v1}, Lcom/vk/attachpicker/util/TimeoutLock;->lock()V

    .line 154
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionLock:Lcom/vk/attachpicker/util/TimeoutLock;

    invoke-virtual {v1}, Lcom/vk/attachpicker/util/TimeoutLock;->isLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionLock:Lcom/vk/attachpicker/util/TimeoutLock;

    invoke-virtual {v1}, Lcom/vk/attachpicker/util/TimeoutLock;->lock()V

    .line 159
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->getCurrentMediaStoreEntry()Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    move-result-object v0

    .line 160
    .local v0, "storeEntry":Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isCorrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v1, v0}, Lcom/vk/attachpicker/SelectionContext;->isSelected(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v1, v0}, Lcom/vk/attachpicker/SelectionContext;->removeSelection(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)Z

    .line 166
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionBarView:Lcom/vk/attachpicker/widget/ViewerToolbar;

    iget-object v3, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v3, v0}, Lcom/vk/attachpicker/SelectionContext;->isSelected(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/vk/attachpicker/widget/ViewerToolbar;->setChecked(Z)V

    .line 172
    :goto_1
    iget-boolean v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->preventStyling:Z

    if-eqz v1, :cond_3

    .line 173
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->editButton:Lcom/vk/attachpicker/widget/EditButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/EditButton;->setVisibility(I)V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v1, v0}, Lcom/vk/attachpicker/SelectionContext;->addSelection(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)I

    .line 169
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionBarView:Lcom/vk/attachpicker/widget/ViewerToolbar;

    iget-object v3, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v3, v0}, Lcom/vk/attachpicker/SelectionContext;->isSelected(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/vk/attachpicker/widget/ViewerToolbar;->setChecked(Z)V

    goto :goto_1

    .line 175
    :cond_3
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v1}, Lcom/vk/attachpicker/SelectionContext;->selectionCount()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isCorrupted()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/vk/attachpicker/screen/ViewerScreen;->setEditButtonVisibility(ZZ)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method synthetic lambda$createView$38(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionLock:Lcom/vk/attachpicker/util/TimeoutLock;

    invoke-virtual {v2}, Lcom/vk/attachpicker/util/TimeoutLock;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionLock:Lcom/vk/attachpicker/util/TimeoutLock;

    invoke-virtual {v2}, Lcom/vk/attachpicker/util/TimeoutLock;->lock()V

    .line 220
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->getCurrentMediaStoreEntry()Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    move-result-object v0

    .line 221
    .local v0, "storeEntry":Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isCorrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    sget-object v2, Lcom/vk/attachpicker/Picker;->imageCache:Lcom/vk/attachpicker/util/ImageCache;

    invoke-direct {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->getCurrentMediaStoreEntry()Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->getDisplayImageKey()Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/util/ImageCache;->get(Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 225
    .local v1, "tmpImage":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    iget-boolean v2, v0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isVideo:Z

    if-eqz v2, :cond_2

    .line 230
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/events/NotificationCenter;->fireEvent(I)V

    .line 233
    invoke-static {p0, v0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$7;->lambdaFactory$(Lcom/vk/attachpicker/screen/ViewerScreen;Lcom/vk/attachpicker/mediastore/MediaStoreEntry;Landroid/graphics/Bitmap;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vk/attachpicker/screen/ViewerScreen;->openEditorAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 239
    :cond_2
    invoke-static {p0}, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$8;->lambdaFactory$(Lcom/vk/attachpicker/screen/ViewerScreen;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vk/attachpicker/screen/ViewerScreen;->openEditorAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method synthetic lambda$createView$39(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->getCurrentMediaStoreEntry()Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    move-result-object v0

    .line 250
    .local v0, "entry":Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
    if-nez v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-boolean v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->thumb:Z

    if-eqz v1, :cond_2

    .line 255
    new-instance v1, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;

    invoke-direct {v1, v0}, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;-><init>(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)V

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->showScreen(Lcom/vk/attachpicker/simplescreen/BaseScreen;)V

    goto :goto_0

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v1}, Lcom/vk/attachpicker/SelectionContext;->selectionCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 258
    invoke-virtual {v0}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isCorrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->parentActivity:Landroid/app/Activity;

    check-cast v1, Lcom/vk/attachpicker/AttachResulter;

    invoke-static {v0}, Lcom/vk/attachpicker/SelectionContext;->packSingleEntry(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vk/attachpicker/AttachResulter;->setResultAndFinish(Landroid/content/Intent;)V

    goto :goto_0

    .line 262
    :cond_3
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v1, v0}, Lcom/vk/attachpicker/SelectionContext;->addSelection(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)I

    .line 263
    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->parentActivity:Landroid/app/Activity;

    check-cast v1, Lcom/vk/attachpicker/AttachResulter;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v2}, Lcom/vk/attachpicker/SelectionContext;->getPackedSelection()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vk/attachpicker/AttachResulter;->setResultAndFinish(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method synthetic lambda$getCurrentZoomableImageView$40([Lcom/vk/attachpicker/widget/ImageViewerImageView;Landroid/view/View;)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 858
    instance-of v0, p2, Lcom/vk/attachpicker/widget/ImageViewerImageView;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vk/attachpicker/widget/ImageViewerImageView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->getPosition()I

    move-result v0

    iget v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->currentPosition:I

    if-ne v0, v1, :cond_0

    .line 859
    const/4 v0, 0x0

    check-cast p2, Lcom/vk/attachpicker/widget/ImageViewerImageView;

    .end local p2    # "view":Landroid/view/View;
    aput-object p2, p1, v0

    .line 861
    :cond_0
    return-void
.end method

.method synthetic lambda$new$30(Lcom/vk/attachpicker/SelectionContext;IILjava/lang/Void;)V
    .locals 2
    .param p2, "eventType"    # I
    .param p3, "eventId"    # I
    .param p4, "eventArgs"    # Ljava/lang/Void;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->attachCounterView:Lcom/vk/attachpicker/widget/AttachCounterView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->attachCounterView:Lcom/vk/attachpicker/widget/AttachCounterView;

    invoke-virtual {p1}, Lcom/vk/attachpicker/SelectionContext;->selectionCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/AttachCounterView;->setCount(I)V

    .line 109
    :cond_0
    return-void
.end method

.method synthetic lambda$null$34()V
    .locals 1

    .prologue
    .line 235
    invoke-static {p0}, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$12;->lambdaFactory$(Lcom/vk/attachpicker/screen/ViewerScreen;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/attachpicker/Picker;->run(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method synthetic lambda$null$35(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 234
    new-instance v0, Lcom/vk/attachpicker/screen/TrimScreen;

    iget-object v1, p1, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->path:Landroid/net/Uri;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$11;->lambdaFactory$(Lcom/vk/attachpicker/screen/ViewerScreen;)Lcom/vk/attachpicker/screen/TrimScreen$Delegate;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lcom/vk/attachpicker/screen/TrimScreen;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;Lcom/vk/attachpicker/screen/TrimScreen$Delegate;)V

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/screen/ViewerScreen;->showScreen(Lcom/vk/attachpicker/simplescreen/BaseScreen;)V

    .line 237
    return-void
.end method

.method synthetic lambda$null$36()V
    .locals 1

    .prologue
    .line 241
    invoke-static {p0}, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$10;->lambdaFactory$(Lcom/vk/attachpicker/screen/ViewerScreen;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/attachpicker/Picker;->run(Ljava/lang/Runnable;)V

    .line 242
    return-void
.end method

.method synthetic lambda$null$37()V
    .locals 4

    .prologue
    .line 240
    new-instance v0, Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-direct {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->getCurrentMediaStoreEntry()Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    move-result-object v1

    invoke-static {p0}, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$9;->lambdaFactory$(Lcom/vk/attachpicker/screen/ViewerScreen;)Lcom/vk/attachpicker/screen/EditorScreen$Delegate;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->thumb:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/attachpicker/screen/EditorScreen;-><init>(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;Lcom/vk/attachpicker/screen/EditorScreen$Delegate;Z)V

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/screen/ViewerScreen;->showScreen(Lcom/vk/attachpicker/simplescreen/BaseScreen;)V

    .line 243
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 278
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->isAnimationInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    :goto_0
    return v0

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/ViewerScreen;->animateOut()V

    goto :goto_0

    .line 287
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->onDestroy()V

    .line 115
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->selectionUpdateListener:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/events/NotificationCenter;->removeListener(Lcom/vk/attachpicker/events/NotificationListener;)V

    .line 116
    return-void
.end method

.method public onTopPaddingChanged(I)V
    .locals 4
    .param p1, "topPadding"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionBarView:Lcom/vk/attachpicker/widget/ViewerToolbar;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionBarView:Lcom/vk/attachpicker/widget/ViewerToolbar;

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/ViewerToolbar;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionBarView:Lcom/vk/attachpicker/widget/ViewerToolbar;

    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/ViewerToolbar;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->actionBarView:Lcom/vk/attachpicker/widget/ViewerToolbar;

    invoke-virtual {v3}, Lcom/vk/attachpicker/widget/ViewerToolbar;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/vk/attachpicker/widget/ViewerToolbar;->setPadding(IIII)V

    .line 274
    return-void
.end method

.method public realDismiss()V
    .locals 0

    .prologue
    .line 291
    invoke-super {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->finish()V

    .line 292
    return-void
.end method

.method public setAnimationInProgress(Z)V
    .locals 1
    .param p1, "isAnimationInProgress"    # Z

    .prologue
    .line 756
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->animationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 757
    return-void
.end method

.method public setIsVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 764
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen;->isVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 765
    return-void
.end method

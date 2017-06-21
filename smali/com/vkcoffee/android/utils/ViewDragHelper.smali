.class public Lcom/vkcoffee/android/utils/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 313
    new-instance v0, Lcom/vkcoffee/android/utils/ViewDragHelper$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/utils/ViewDragHelper$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forParent"    # Landroid/view/ViewGroup;
    .param p3, "cb"    # Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v2, -0x1

    iput v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mActivePointerId:I

    .line 320
    new-instance v2, Lcom/vkcoffee/android/utils/ViewDragHelper$2;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/utils/ViewDragHelper$2;-><init>(Lcom/vkcoffee/android/utils/ViewDragHelper;)V

    iput-object v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 361
    if-nez p2, :cond_0

    .line 362
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Parent view may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    :cond_0
    if-nez p3, :cond_1

    .line 365
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Callback may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 368
    :cond_1
    iput-object p2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 369
    iput-object p3, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    .line 371
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 372
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 373
    .local v0, "density":F
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mEdgeSize:I

    .line 375
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTouchSlop:I

    .line 376
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mMaxVelocity:F

    .line 377
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mMinVelocity:F

    .line 378
    sget-object v2, Lcom/vkcoffee/android/utils/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {p1, v2}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 379
    return-void
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 5
    .param p1, "delta"    # F
    .param p2, "odelta"    # F
    .param p3, "pointerId"    # I
    .param p4, "edge"    # I

    .prologue
    const/4 v2, 0x0

    .line 1249
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1250
    .local v0, "absDelta":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1252
    .local v1, "absODelta":F
    iget-object v3, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_0

    iget v3, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget-object v3, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget v3, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    .line 1262
    :cond_0
    :goto_0
    return v2

    .line 1258
    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    invoke-virtual {v3, p4}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1259
    iget-object v3, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v4, v3, p3

    or-int/2addr v4, p4

    aput v4, v3, p3

    goto :goto_0

    .line 1262
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-nez v3, :cond_0

    iget v3, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1276
    if-nez p1, :cond_1

    move v2, v3

    .line 1289
    :cond_0
    :goto_0
    return v2

    .line 1279
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_2

    move v0, v2

    .line 1280
    .local v0, "checkHorizontal":Z
    :goto_1
    iget-object v4, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_3

    move v1, v2

    .line 1282
    .local v1, "checkVertical":Z
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1283
    mul-float v4, p2, p2

    mul-float v5, p3, p3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTouchSlop:I

    iget v6, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0    # "checkHorizontal":Z
    .end local v1    # "checkVertical":Z
    :cond_2
    move v0, v3

    .line 1279
    goto :goto_1

    .restart local v0    # "checkHorizontal":Z
    :cond_3
    move v1, v3

    .line 1280
    goto :goto_2

    .line 1284
    .restart local v1    # "checkVertical":Z
    :cond_4
    if-eqz v0, :cond_5

    .line 1285
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 1286
    :cond_5
    if-eqz v1, :cond_6

    .line 1287
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_6
    move v2, v3

    .line 1289
    goto :goto_0
.end method

.method private clampMag(FFF)F
    .locals 3
    .param p1, "value"    # F
    .param p2, "absMin"    # F
    .param p3, "absMax"    # F

    .prologue
    const/4 v1, 0x0

    .line 666
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 667
    .local v0, "absValue":F
    cmpg-float v2, v0, p2

    if-gez v2, :cond_1

    move p3, v1

    .line 673
    .end local p3    # "absMax":F
    :cond_0
    :goto_0
    return p3

    .line 670
    .restart local p3    # "absMax":F
    :cond_1
    cmpl-float v2, v0, p3

    if-lez v2, :cond_2

    .line 671
    cmpl-float v1, p1, v1

    if-gtz v1, :cond_0

    neg-float p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 673
    goto :goto_0
.end method

.method private clampMag(III)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "absMin"    # I
    .param p3, "absMax"    # I

    .prologue
    .line 645
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 646
    .local v0, "absValue":I
    if-ge v0, p2, :cond_1

    .line 647
    const/4 p3, 0x0

    .line 652
    .end local p3    # "absMax":I
    :cond_0
    :goto_0
    return p3

    .line 649
    .restart local p3    # "absMax":I
    :cond_1
    if-le v0, p3, :cond_2

    .line 650
    if-gtz p1, :cond_0

    neg-int p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 652
    goto :goto_0
.end method

.method private clearMotionHistory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 773
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 784
    :goto_0
    return-void

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 777
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 778
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 779
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 780
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialEdgesTouched:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 781
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 782
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 783
    iput v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private clearMotionHistory(I)V
    .locals 3
    .param p1, "pointerId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 787
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 798
    :goto_0
    return-void

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionX:[F

    aput v1, v0, p1

    .line 791
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 792
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 793
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    .line 794
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialEdgesTouched:[I

    aput v2, v0, p1

    .line 795
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v2, v0, p1

    .line 796
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v2, v0, p1

    .line 797
    iget v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private computeAxisDuration(III)I
    .locals 10
    .param p1, "delta"    # I
    .param p2, "velocity"    # I
    .param p3, "motionRange"    # I

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 613
    if-nez p1, :cond_0

    .line 614
    const/4 v6, 0x0

    .line 631
    :goto_0
    return v6

    .line 617
    :cond_0
    iget-object v6, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 618
    .local v5, "width":I
    div-int/lit8 v3, v5, 0x2

    .line 619
    .local v3, "halfWidth":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 620
    .local v1, "distanceRatio":F
    int-to-float v6, v3

    int-to-float v7, v3

    .line 621
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/utils/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    .line 624
    .local v0, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 625
    if-lez p2, :cond_1

    .line 626
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v2, v6, 0x4

    .line 631
    .local v2, "duration":I
    :goto_1
    const/16 v6, 0x258

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    .line 628
    .end local v2    # "duration":I
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p3

    div-float v4, v6, v7

    .line 629
    .local v4, "range":F
    add-float v6, v4, v9

    const/high16 v7, 0x43800000    # 256.0f

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .restart local v2    # "duration":I
    goto :goto_1
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "xvel"    # I
    .param p5, "yvel"    # I

    .prologue
    .line 592
    iget v12, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p4

    invoke-direct {p0, v0, v12, v13}, Lcom/vkcoffee/android/utils/ViewDragHelper;->clampMag(III)I

    move-result p4

    .line 593
    iget v12, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p5

    invoke-direct {p0, v0, v12, v13}, Lcom/vkcoffee/android/utils/ViewDragHelper;->clampMag(III)I

    move-result p5

    .line 594
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 595
    .local v2, "absDx":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 596
    .local v3, "absDy":I
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 597
    .local v4, "absXVel":I
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 598
    .local v5, "absYVel":I
    add-int v7, v4, v5

    .line 599
    .local v7, "addedVel":I
    add-int v6, v2, v3

    .line 601
    .local v6, "addedDistance":I
    if-eqz p4, :cond_0

    int-to-float v12, v4

    int-to-float v13, v7

    div-float v9, v12, v13

    .line 603
    .local v9, "xweight":F
    :goto_0
    if-eqz p5, :cond_1

    int-to-float v12, v5

    int-to-float v13, v7

    div-float v11, v12, v13

    .line 606
    .local v11, "yweight":F
    :goto_1
    iget-object v12, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-direct {p0, v0, v1, v12}, Lcom/vkcoffee/android/utils/ViewDragHelper;->computeAxisDuration(III)I

    move-result v8

    .line 607
    .local v8, "xduration":I
    iget-object v12, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v12}, Lcom/vkcoffee/android/utils/ViewDragHelper;->computeAxisDuration(III)I

    move-result v10

    .line 609
    .local v10, "yduration":I
    int-to-float v12, v8

    mul-float/2addr v12, v9

    int-to-float v13, v10

    mul-float/2addr v13, v11

    add-float/2addr v12, v13

    float-to-int v12, v12

    return v12

    .line 601
    .end local v8    # "xduration":I
    .end local v9    # "xweight":F
    .end local v10    # "yduration":I
    .end local v11    # "yweight":F
    :cond_0
    int-to-float v12, v2

    int-to-float v13, v6

    div-float v9, v12, v13

    goto :goto_0

    .line 603
    .restart local v9    # "xweight":F
    :cond_1
    int-to-float v12, v3

    int-to-float v13, v6

    div-float v11, v12, v13

    goto :goto_1
.end method

.method public static create(Landroid/view/ViewGroup;FLcom/vkcoffee/android/utils/ViewDragHelper$Callback;)Lcom/vkcoffee/android/utils/ViewDragHelper;
    .locals 3
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "sensitivity"    # F
    .param p2, "cb"    # Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    .prologue
    .line 347
    invoke-static {p0, p2}, Lcom/vkcoffee/android/utils/ViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;)Lcom/vkcoffee/android/utils/ViewDragHelper;

    move-result-object v0

    .line 348
    .local v0, "helper":Lcom/vkcoffee/android/utils/ViewDragHelper;
    iget v1, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTouchSlop:I

    .line 349
    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;)Lcom/vkcoffee/android/utils/ViewDragHelper;
    .locals 2
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "cb"    # Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    .prologue
    .line 334
    new-instance v0, Lcom/vkcoffee/android/utils/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/vkcoffee/android/utils/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 762
    iput-boolean v3, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mReleaseInProgress:Z

    .line 763
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 764
    iput-boolean v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mReleaseInProgress:Z

    .line 766
    iget v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mDragState:I

    if-ne v0, v3, :cond_0

    .line 768
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/utils/ViewDragHelper;->setDragState(I)V

    .line 770
    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 677
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 678
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 679
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private dragTo(IIII)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 1397
    move v2, p1

    .line 1398
    .local v2, "clampedX":I
    move v3, p2

    .line 1399
    .local v3, "clampedY":I
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1400
    .local v6, "oldLeft":I
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1401
    .local v7, "oldTop":I
    if-eqz p3, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p3}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v2

    .line 1403
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v2, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1405
    :cond_0
    if-eqz p4, :cond_1

    .line 1406
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2, p4}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v3

    .line 1407
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v3, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1410
    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 1411
    :cond_2
    sub-int v4, v2, v6

    .line 1412
    .local v4, "clampedDx":I
    sub-int v5, v3, v7

    .line 1413
    .local v5, "clampedDy":I
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 1416
    .end local v4    # "clampedDx":I
    .end local v5    # "clampedDy":I
    :cond_3
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 10
    .param p1, "pointerId"    # I

    .prologue
    const/4 v9, 0x0

    .line 801
    iget-object v7, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionX:[F

    array-length v7, v7

    if-gt v7, p1, :cond_2

    .line 802
    :cond_0
    add-int/lit8 v7, p1, 0x1

    new-array v3, v7, [F

    .line 803
    .local v3, "imx":[F
    add-int/lit8 v7, p1, 0x1

    new-array v4, v7, [F

    .line 804
    .local v4, "imy":[F
    add-int/lit8 v7, p1, 0x1

    new-array v5, v7, [F

    .line 805
    .local v5, "lmx":[F
    add-int/lit8 v7, p1, 0x1

    new-array v6, v7, [F

    .line 806
    .local v6, "lmy":[F
    add-int/lit8 v7, p1, 0x1

    new-array v2, v7, [I

    .line 807
    .local v2, "iit":[I
    add-int/lit8 v7, p1, 0x1

    new-array v0, v7, [I

    .line 808
    .local v0, "edip":[I
    add-int/lit8 v7, p1, 0x1

    new-array v1, v7, [I

    .line 810
    .local v1, "edl":[I
    iget-object v7, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_1

    .line 811
    iget-object v7, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionX:[F

    iget-object v8, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 812
    iget-object v7, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionY:[F

    iget-object v8, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 813
    iget-object v7, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mLastMotionX:[F

    iget-object v8, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mLastMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    iget-object v7, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mLastMotionY:[F

    iget-object v8, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mLastMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 815
    iget-object v7, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialEdgesTouched:[I

    iget-object v8, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v8, v8

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 816
    iget-object v7, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mEdgeDragsInProgress:[I

    iget-object v8, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v8, v8

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 817
    iget-object v7, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mEdgeDragsLocked:[I

    iget-object v8, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v8, v8

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 820
    :cond_1
    iput-object v3, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionX:[F

    .line 821
    iput-object v4, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionY:[F

    .line 822
    iput-object v5, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mLastMotionX:[F

    .line 823
    iput-object v6, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mLastMotionY:[F

    .line 824
    iput-object v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 825
    iput-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 826
    iput-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 828
    .end local v0    # "edip":[I
    .end local v1    # "edl":[I
    .end local v2    # "iit":[I
    .end local v3    # "imx":[F
    .end local v4    # "imy":[F
    .end local v5    # "lmx":[F
    .end local v6    # "lmy":[F
    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 11
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I
    .param p3, "xvel"    # I
    .param p4, "yvel"    # I

    .prologue
    const/4 v0, 0x0

    .line 572
    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 573
    .local v10, "startLeft":I
    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 574
    .local v6, "startTop":I
    sub-int v2, p1, v10

    .line 575
    .local v2, "dx":I
    sub-int v3, p2, v6

    .line 577
    .local v3, "dy":I
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 579
    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 580
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/utils/ViewDragHelper;->setDragState(I)V

    .line 588
    :goto_0
    return v0

    .line 584
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/utils/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v9

    .line 585
    .local v9, "duration":I
    iget-object v4, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move v5, v10

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 587
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/utils/ViewDragHelper;->setDragState(I)V

    .line 588
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getEdgesTouched(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1471
    const/4 v0, 0x0

    .line 1473
    .local v0, "result":I
    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    .line 1474
    or-int/lit8 v0, v0, 0x1

    .line 1476
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    .line 1477
    or-int/lit8 v0, v0, 0x4

    .line 1479
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    .line 1480
    or-int/lit8 v0, v0, 0x2

    .line 1482
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_3

    .line 1483
    or-int/lit8 v0, v0, 0x8

    .line 1486
    :cond_3
    return v0
.end method

.method private releaseViewForPointerUp()V
    .locals 5

    .prologue
    .line 1386
    iget-object v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mMaxVelocity:F

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1387
    iget-object v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mActivePointerId:I

    .line 1388
    invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    iget v3, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mMaxVelocity:F

    .line 1387
    invoke-direct {p0, v2, v3, v4}, Lcom/vkcoffee/android/utils/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    .line 1390
    .local v0, "xvel":F
    iget-object v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mActivePointerId:I

    .line 1391
    invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    iget v3, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mMaxVelocity:F

    .line 1390
    invoke-direct {p0, v2, v3, v4}, Lcom/vkcoffee/android/utils/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    .line 1393
    .local v1, "yvel":F
    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/utils/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1394
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 1228
    const/4 v0, 0x0

    .line 1229
    .local v0, "dragsStarted":I
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/vkcoffee/android/utils/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1230
    or-int/lit8 v0, v0, 0x1

    .line 1232
    :cond_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/vkcoffee/android/utils/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1233
    or-int/lit8 v0, v0, 0x4

    .line 1235
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/vkcoffee/android/utils/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1236
    or-int/lit8 v0, v0, 0x2

    .line 1238
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/vkcoffee/android/utils/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1239
    or-int/lit8 v0, v0, 0x8

    .line 1242
    :cond_3
    if-eqz v0, :cond_4

    .line 1243
    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    .line 1244
    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    invoke-virtual {v1, v0, p3}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    .line 1246
    :cond_4
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 831
    invoke-direct {p0, p3}, Lcom/vkcoffee/android/utils/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 832
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 833
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 834
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Lcom/vkcoffee/android/utils/ViewDragHelper;->getEdgesTouched(II)I

    move-result v1

    aput v1, v0, p3

    .line 835
    iget v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mPointersDown:I

    .line 836
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 839
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    .line 840
    .local v1, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 841
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 842
    .local v2, "pointerId":I
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 843
    .local v3, "x":F
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 844
    .local v4, "y":F
    iget-object v5, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    .line 845
    iget-object v5, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mLastMotionY:[F

    aput v4, v5, v2

    .line 840
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 847
    .end local v2    # "pointerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 8

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/vkcoffee/android/utils/ViewDragHelper;->cancel()V

    .line 501
    iget v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 502
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v6

    .line 503
    .local v6, "oldX":I
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v7

    .line 504
    .local v7, "oldY":I
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 505
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v2

    .line 506
    .local v2, "newX":I
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    .line 507
    .local v3, "newY":I
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v4, v2, v6

    sub-int v5, v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 509
    .end local v2    # "newX":I
    .end local v3    # "newY":I
    .end local v6    # "oldX":I
    .end local v7    # "oldY":I
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/utils/ViewDragHelper;->setDragState(I)V

    .line 510
    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I

    .prologue
    .line 912
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v9, p1

    .line 913
    check-cast v9, Landroid/view/ViewGroup;

    .line 914
    .local v9, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v11

    .line 915
    .local v11, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v12

    .line 916
    .local v12, "scrollY":I
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 918
    .local v8, "count":I
    add-int/lit8 v10, v8, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_1

    .line 921
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 922
    .local v2, "child":Landroid/view/View;
    add-int v1, p5, v11

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v1, v3, :cond_0

    add-int v1, p5, v11

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v1, v3, :cond_0

    add-int v1, p6, v12

    .line 923
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v1, v3, :cond_0

    add-int v1, p6, v12

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v1, v3, :cond_0

    const/4 v3, 0x1

    add-int v1, p5, v11

    .line 924
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v6, v1, v4

    add-int v1, p6, v12

    .line 925
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v7, v1, v4

    move-object v1, p0

    move/from16 v4, p3

    move/from16 v5, p4

    .line 924
    invoke-virtual/range {v1 .. v7}, Lcom/vkcoffee/android/utils/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    const/4 v1, 0x1

    .line 932
    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "count":I
    .end local v9    # "group":Landroid/view/ViewGroup;
    .end local v10    # "i":I
    .end local v11    # "scrollX":I
    .end local v12    # "scrollY":I
    :goto_1
    return v1

    .line 918
    .restart local v2    # "child":Landroid/view/View;
    .restart local v8    # "count":I
    .restart local v9    # "group":Landroid/view/ViewGroup;
    .restart local v10    # "i":I
    .restart local v11    # "scrollX":I
    .restart local v12    # "scrollY":I
    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 931
    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "count":I
    .end local v9    # "group":Landroid/view/ViewGroup;
    .end local v10    # "i":I
    .end local v11    # "scrollX":I
    .end local v12    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_3

    move/from16 v0, p3

    neg-int v1, v0

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_2

    move/from16 v0, p4

    neg-int v1, v0

    .line 932
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 486
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mActivePointerId:I

    .line 487
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/ViewDragHelper;->clearMotionHistory()V

    .line 489
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 493
    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 3
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 448
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    .line 449
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 454
    iput p2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mActivePointerId:I

    .line 455
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 456
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/utils/ViewDragHelper;->setDragState(I)V

    .line 457
    return-void
.end method

.method public checkTouchSlop(I)Z
    .locals 3
    .param p1, "directions"    # I

    .prologue
    .line 1307
    iget-object v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionX:[F

    array-length v0, v2

    .line 1308
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1309
    invoke-virtual {p0, p1, v1}, Lcom/vkcoffee/android/utils/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1310
    const/4 v2, 0x1

    .line 1313
    :goto_1
    return v2

    .line 1308
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1313
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public checkTouchSlop(II)Z
    .locals 9
    .param p1, "directions"    # I
    .param p2, "pointerId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1332
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/utils/ViewDragHelper;->isPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_1

    move v4, v5

    .line 1349
    :cond_0
    :goto_0
    return v4

    .line 1336
    :cond_1
    and-int/lit8 v6, p1, 0x1

    if-ne v6, v4, :cond_2

    move v0, v4

    .line 1337
    .local v0, "checkHorizontal":Z
    :goto_1
    and-int/lit8 v6, p1, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    move v1, v4

    .line 1339
    .local v1, "checkVertical":Z
    :goto_2
    iget-object v6, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mLastMotionX:[F

    aget v6, v6, p2

    iget-object v7, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionX:[F

    aget v7, v7, p2

    sub-float v2, v6, v7

    .line 1340
    .local v2, "dx":F
    iget-object v6, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mLastMotionY:[F

    aget v6, v6, p2

    iget-object v7, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionY:[F

    aget v7, v7, p2

    sub-float v3, v6, v7

    .line 1342
    .local v3, "dy":F
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1343
    mul-float v6, v2, v2

    mul-float v7, v3, v3

    add-float/2addr v6, v7

    iget v7, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTouchSlop:I

    iget v8, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    move v4, v5

    goto :goto_0

    .end local v0    # "checkHorizontal":Z
    .end local v1    # "checkVertical":Z
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    :cond_2
    move v0, v5

    .line 1336
    goto :goto_1

    .restart local v0    # "checkHorizontal":Z
    :cond_3
    move v1, v5

    .line 1337
    goto :goto_2

    .line 1344
    .restart local v1    # "checkVertical":Z
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    :cond_4
    if-eqz v0, :cond_5

    .line 1345
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 1346
    :cond_5
    if-eqz v1, :cond_6

    .line 1347
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_6
    move v4, v5

    .line 1349
    goto :goto_0
.end method

.method public continueSettling(Z)Z
    .locals 9
    .param p1, "deferCallbacks"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 718
    iget v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_5

    .line 719
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v6

    .line 720
    .local v6, "keepGoing":Z
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v2

    .line 721
    .local v2, "x":I
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    .line 722
    .local v3, "y":I
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v2, v0

    .line 723
    .local v4, "dx":I
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    .line 725
    .local v5, "dy":I
    if-eqz v4, :cond_0

    .line 726
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 728
    :cond_0
    if-eqz v5, :cond_1

    .line 729
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 732
    :cond_1
    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    .line 733
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 736
    :cond_3
    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v0

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v0

    if-ne v3, v0, :cond_4

    .line 739
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 740
    const/4 v6, 0x0

    .line 743
    :cond_4
    if-nez v6, :cond_5

    .line 744
    if-eqz p1, :cond_6

    .line 745
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 752
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "keepGoing":Z
    :cond_5
    :goto_0
    iget v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_7

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 747
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    .restart local v6    # "keepGoing":Z
    :cond_6
    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/utils/ViewDragHelper;->setDragState(I)V

    goto :goto_0

    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "keepGoing":Z
    :cond_7
    move v0, v7

    .line 752
    goto :goto_1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1459
    iget-object v3, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1460
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1461
    iget-object v3, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    invoke-virtual {v4, v2}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1462
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 1463
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 1467
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1460
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1467
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public flingCapturedView(IIII)V
    .locals 9
    .param p1, "minLeft"    # I
    .param p2, "minTop"    # I
    .param p3, "maxLeft"    # I
    .param p4, "maxTop"    # I

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    .line 694
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mActivePointerId:I

    .line 699
    invoke-static {v3, v4}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mActivePointerId:I

    .line 700
    invoke-static {v4, v5}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v4

    float-to-int v4, v4

    move v5, p1

    move v6, p3

    move v7, p2

    move v8, p4

    .line 698
    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 703
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/utils/ViewDragHelper;->setDragState(I)V

    .line 704
    return-void
.end method

.method public getActivePointerId()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mActivePointerId:I

    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method public getEdgeSize()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mEdgeSize:I

    return v0
.end method

.method public getMinVelocity()F
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mMinVelocity:F

    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/vkcoffee/android/utils/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public isEdgeTouched(I)Z
    .locals 3
    .param p1, "edges"    # I

    .prologue
    .line 1362
    iget-object v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v0, v2

    .line 1363
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1364
    invoke-virtual {p0, p1, v1}, Lcom/vkcoffee/android/utils/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1365
    const/4 v2, 0x1

    .line 1368
    :goto_1
    return v2

    .line 1363
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1368
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isEdgeTouched(II)Z
    .locals 1
    .param p1, "edges"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 1382
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/utils/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p2

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPointerDown(I)Z
    .locals 3
    .param p1, "pointerId"    # I

    .prologue
    const/4 v0, 0x1

    .line 863
    iget v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mPointersDown:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 1441
    if-nez p1, :cond_1

    .line 1447
    :cond_0
    :goto_0
    return v0

    .line 1444
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    .line 1445
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 1446
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_0

    .line 1447
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1077
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1078
    .local v3, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    .line 1080
    .local v4, "actionIndex":I
    if-nez v3, :cond_0

    .line 1083
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/utils/ViewDragHelper;->cancel()V

    .line 1086
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 1087
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/utils/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1089
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1091
    packed-switch v3, :pswitch_data_0

    .line 1225
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 1093
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 1094
    .local v17, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 1095
    .local v18, "y":F
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1096
    .local v15, "pointerId":I
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/utils/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1098
    .local v16, "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/vkcoffee/android/utils/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1103
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/vkcoffee/android/utils/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    .line 1106
    .local v7, "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 1113
    .end local v7    # "edgesTouched":I
    .end local v15    # "pointerId":I
    .end local v16    # "toCapture":Landroid/view/View;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1114
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1115
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1117
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/vkcoffee/android/utils/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1120
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 1123
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/utils/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1124
    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/vkcoffee/android/utils/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    .line 1127
    .restart local v7    # "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_0

    .line 1130
    .end local v7    # "edgesTouched":I
    .end local v16    # "toCapture":Landroid/view/View;
    :cond_3
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/utils/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/vkcoffee/android/utils/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_0

    .line 1141
    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 1142
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v12

    .line 1143
    .local v12, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1144
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1145
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mLastMotionX:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v17, v19

    move/from16 v0, v19

    float-to-int v10, v0

    .line 1146
    .local v10, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mLastMotionY:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v18, v19

    move/from16 v0, v19

    float-to-int v11, v0

    .line 1148
    .local v11, "idy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    add-int v19, v19, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    add-int v20, v20, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/vkcoffee/android/utils/ViewDragHelper;->dragTo(IIII)V

    .line 1150
    invoke-direct/range {p0 .. p1}, Lcom/vkcoffee/android/utils/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1153
    .end local v10    # "idx":I
    .end local v11    # "idy":I
    .end local v12    # "index":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v14

    .line 1154
    .local v14, "pointerCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v14, :cond_5

    .line 1155
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1156
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1157
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1158
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v5, v17, v19

    .line 1159
    .local v5, "dx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v6, v18, v19

    .line 1161
    .local v6, "dy":F
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v15}, Lcom/vkcoffee/android/utils/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1162
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 1173
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/vkcoffee/android/utils/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1167
    .restart local v5    # "dx":F
    .restart local v6    # "dy":F
    .restart local v15    # "pointerId":I
    .restart local v17    # "x":F
    .restart local v18    # "y":F
    :cond_6
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/utils/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1168
    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v6}, Lcom/vkcoffee/android/utils/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1169
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/vkcoffee/android/utils/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-nez v19, :cond_5

    .line 1154
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1179
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v8    # "i":I
    .end local v14    # "pointerCount":I
    .end local v15    # "pointerId":I
    .end local v16    # "toCapture":Landroid/view/View;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_4
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1180
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_b

    .line 1182
    const/4 v13, -0x1

    .line 1183
    .local v13, "newActivePointer":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v14

    .line 1184
    .restart local v14    # "pointerCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v14, :cond_a

    .line 1185
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v9

    .line 1186
    .local v9, "id":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v9, v0, :cond_9

    .line 1184
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1191
    :cond_9
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1192
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1193
    .restart local v18    # "y":F
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/utils/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    .line 1194
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lcom/vkcoffee/android/utils/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1195
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mActivePointerId:I

    .line 1200
    .end local v9    # "id":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_a
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_b

    .line 1202
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/utils/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1205
    .end local v8    # "i":I
    .end local v13    # "newActivePointer":I
    .end local v14    # "pointerCount":I
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vkcoffee/android/utils/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 1210
    .end local v15    # "pointerId":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 1211
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/utils/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1213
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/utils/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1218
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1219
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/utils/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1221
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/utils/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1091
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method setDragState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 867
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 868
    iget v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    .line 869
    iput p1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mDragState:I

    .line 870
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 871
    iget v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mDragState:I

    if-nez v0, :cond_0

    .line 872
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 875
    :cond_0
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0
    .param p1, "edgeFlags"    # I

    .prologue
    .line 425
    iput p1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTrackingEdges:I

    .line 426
    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0
    .param p1, "minVel"    # F

    .prologue
    .line 388
    iput p1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mMinVelocity:F

    .line 389
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mActivePointerId:I

    .line 558
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mActivePointerId:I

    .line 559
    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    .line 557
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/vkcoffee/android/utils/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 943
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v4

    .line 944
    .local v4, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v5

    .line 946
    .local v5, "actionIndex":I
    if-nez v4, :cond_0

    .line 949
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/utils/ViewDragHelper;->cancel()V

    .line 952
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 953
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/utils/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 955
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 957
    packed-switch v4, :pswitch_data_0

    .line 1067
    :cond_2
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mDragState:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    const/16 v24, 0x1

    :goto_1
    return v24

    .line 959
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    .line 960
    .local v22, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    .line 961
    .local v23, "y":F
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v17

    .line 962
    .local v17, "pointerId":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/utils/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 964
    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/utils/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v20

    .line 967
    .local v20, "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mDragState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 968
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/utils/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 971
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v24, v0

    aget v8, v24, v17

    .line 972
    .local v8, "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTrackingEdges:I

    move/from16 v24, v0

    and-int v24, v24, v8

    if-eqz v24, :cond_2

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTrackingEdges:I

    move/from16 v25, v0

    and-int v25, v25, v8

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_0

    .line 979
    .end local v8    # "edgesTouched":I
    .end local v17    # "pointerId":I
    .end local v20    # "toCapture":Landroid/view/View;
    .end local v22    # "x":F
    .end local v23    # "y":F
    :pswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v17

    .line 980
    .restart local v17    # "pointerId":I
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v22

    .line 981
    .restart local v22    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v23

    .line 983
    .restart local v23    # "y":F
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/utils/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 986
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mDragState:I

    move/from16 v24, v0

    if-nez v24, :cond_4

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v24, v0

    aget v8, v24, v17

    .line 988
    .restart local v8    # "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTrackingEdges:I

    move/from16 v24, v0

    and-int v24, v24, v8

    if-eqz v24, :cond_2

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mTrackingEdges:I

    move/from16 v25, v0

    and-int v25, v25, v8

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_0

    .line 991
    .end local v8    # "edgesTouched":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mDragState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 993
    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/utils/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v20

    .line 994
    .restart local v20    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 995
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/utils/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_0

    .line 1002
    .end local v17    # "pointerId":I
    .end local v20    # "toCapture":Landroid/view/View;
    .end local v22    # "x":F
    .end local v23    # "y":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 1007
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v16

    .line 1008
    .local v16, "pointerCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v10, v0, :cond_6

    .line 1009
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v17

    .line 1010
    .restart local v17    # "pointerId":I
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v22

    .line 1011
    .restart local v22    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v23

    .line 1012
    .restart local v23    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v24, v0

    aget v24, v24, v17

    sub-float v6, v22, v24

    .line 1013
    .local v6, "dx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v24, v0

    aget v24, v24, v17

    sub-float v7, v23, v24

    .line 1015
    .local v7, "dy":F
    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/utils/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v20

    .line 1016
    .restart local v20    # "toCapture":Landroid/view/View;
    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6, v7}, Lcom/vkcoffee/android/utils/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v24

    if-eqz v24, :cond_7

    const/4 v15, 0x1

    .line 1017
    .local v15, "pastSlop":Z
    :goto_3
    if-eqz v15, :cond_8

    .line 1023
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 1024
    .local v13, "oldLeft":I
    float-to-int v0, v6

    move/from16 v24, v0

    add-int v18, v13, v24

    .line 1025
    .local v18, "targetLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    move-object/from16 v24, v0

    float-to-int v0, v6

    move/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v11

    .line 1027
    .local v11, "newLeft":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v14

    .line 1028
    .local v14, "oldTop":I
    float-to-int v0, v7

    move/from16 v24, v0

    add-int v19, v14, v24

    .line 1029
    .local v19, "targetTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    move-object/from16 v24, v0

    float-to-int v0, v7

    move/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v12

    .line 1031
    .local v12, "newTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v9

    .line 1033
    .local v9, "horizontalDragRange":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v21

    .line 1034
    .local v21, "verticalDragRange":I
    if-eqz v9, :cond_5

    if-lez v9, :cond_8

    if-ne v11, v13, :cond_8

    :cond_5
    if-eqz v21, :cond_6

    if-lez v21, :cond_8

    if-ne v12, v14, :cond_8

    .line 1050
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v9    # "horizontalDragRange":I
    .end local v11    # "newLeft":I
    .end local v12    # "newTop":I
    .end local v13    # "oldLeft":I
    .end local v14    # "oldTop":I
    .end local v15    # "pastSlop":Z
    .end local v17    # "pointerId":I
    .end local v18    # "targetLeft":I
    .end local v19    # "targetTop":I
    .end local v20    # "toCapture":Landroid/view/View;
    .end local v21    # "verticalDragRange":I
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/vkcoffee/android/utils/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1016
    .restart local v6    # "dx":F
    .restart local v7    # "dy":F
    .restart local v17    # "pointerId":I
    .restart local v20    # "toCapture":Landroid/view/View;
    .restart local v22    # "x":F
    .restart local v23    # "y":F
    :cond_7
    const/4 v15, 0x0

    goto :goto_3

    .line 1040
    .restart local v15    # "pastSlop":Z
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v6, v7, v1}, Lcom/vkcoffee/android/utils/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1041
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mDragState:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 1046
    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/utils/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v24

    if-nez v24, :cond_6

    .line 1008
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 1055
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v10    # "i":I
    .end local v15    # "pastSlop":Z
    .end local v16    # "pointerCount":I
    .end local v17    # "pointerId":I
    .end local v20    # "toCapture":Landroid/view/View;
    .end local v22    # "x":F
    .end local v23    # "y":F
    :pswitch_4
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v17

    .line 1056
    .restart local v17    # "pointerId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/utils/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 1062
    .end local v17    # "pointerId":I
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/utils/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1067
    :cond_a
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 957
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "finalLeft"    # I
    .param p3, "finalTop"    # I

    .prologue
    const/4 v2, 0x0

    .line 527
    iput-object p1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 528
    const/4 v1, -0x1

    iput v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mActivePointerId:I

    .line 530
    invoke-direct {p0, p2, p3, v2, v2}, Lcom/vkcoffee/android/utils/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    .line 531
    .local v0, "continueSliding":Z
    if-nez v0, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mDragState:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 534
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 537
    :cond_0
    return v0
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2
    .param p1, "toCapture"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    const/4 v0, 0x1

    .line 887
    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mActivePointerId:I

    if-ne v1, p2, :cond_0

    .line 896
    :goto_0
    return v0

    .line 891
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;

    invoke-virtual {v1, p1, p2}, Lcom/vkcoffee/android/utils/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 892
    iput p2, p0, Lcom/vkcoffee/android/utils/ViewDragHelper;->mActivePointerId:I

    .line 893
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/utils/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_0

    .line 896
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

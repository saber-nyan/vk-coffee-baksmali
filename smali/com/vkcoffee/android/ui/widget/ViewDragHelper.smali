.class public Lcom/vkcoffee/android/ui/widget/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;
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

.field private final mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

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
    .line 311
    new-instance v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forParent"    # Landroid/view/ViewGroup;
    .param p3, "cb"    # Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v2, -0x1

    iput v2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mActivePointerId:I

    .line 318
    new-instance v2, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$2;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$2;-><init>(Lcom/vkcoffee/android/ui/widget/ViewDragHelper;)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 359
    if-nez p2, :cond_0

    .line 360
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Parent view may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 362
    :cond_0
    if-nez p3, :cond_1

    .line 363
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Callback may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 366
    :cond_1
    iput-object p2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 367
    iput-object p3, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    .line 369
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 370
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 371
    .local v0, "density":F
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mEdgeSize:I

    .line 373
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mTouchSlop:I

    .line 374
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mMaxVelocity:F

    .line 375
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mMinVelocity:F

    .line 376
    sget-object v2, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {p1, v2}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 377
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

    .line 1071
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1072
    .local v0, "absDelta":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1074
    .local v1, "absODelta":F
    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_0

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    .line 1084
    :cond_0
    :goto_0
    return v2

    .line 1080
    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    invoke-virtual {v3, p4}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1081
    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v4, v3, p3

    or-int/2addr v4, p4

    aput v4, v3, p3

    goto :goto_0

    .line 1084
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-nez v3, :cond_0

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mTouchSlop:I

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

    .line 1098
    if-nez p1, :cond_1

    move v2, v3

    .line 1111
    :cond_0
    :goto_0
    return v2

    .line 1101
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_2

    move v0, v2

    .line 1102
    .local v0, "checkHorizontal":Z
    :goto_1
    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_3

    move v1, v2

    .line 1104
    .local v1, "checkVertical":Z
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1105
    mul-float v4, p2, p2

    mul-float v5, p3, p3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mTouchSlop:I

    iget v6, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mTouchSlop:I

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

    .line 1101
    goto :goto_1

    .restart local v0    # "checkHorizontal":Z
    :cond_3
    move v1, v3

    .line 1102
    goto :goto_2

    .line 1106
    .restart local v1    # "checkVertical":Z
    :cond_4
    if-eqz v0, :cond_5

    .line 1107
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 1108
    :cond_5
    if-eqz v1, :cond_6

    .line 1109
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_6
    move v2, v3

    .line 1111
    goto :goto_0
.end method

.method private clampMag(FFF)F
    .locals 3
    .param p1, "value"    # F
    .param p2, "absMin"    # F
    .param p3, "absMax"    # F

    .prologue
    const/4 v1, 0x0

    .line 590
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 591
    .local v0, "absValue":F
    cmpg-float v2, v0, p2

    if-gez v2, :cond_1

    move p3, v1

    .line 597
    .end local p3    # "absMax":F
    :cond_0
    :goto_0
    return p3

    .line 594
    .restart local p3    # "absMax":F
    :cond_1
    cmpl-float v2, v0, p3

    if-lez v2, :cond_2

    .line 595
    cmpl-float v1, p1, v1

    if-gtz v1, :cond_0

    neg-float p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 597
    goto :goto_0
.end method

.method private clampMag(III)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "absMin"    # I
    .param p3, "absMax"    # I

    .prologue
    .line 569
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 570
    .local v0, "absValue":I
    if-ge v0, p2, :cond_1

    .line 571
    const/4 p3, 0x0

    .line 576
    .end local p3    # "absMax":I
    :cond_0
    :goto_0
    return p3

    .line 573
    .restart local p3    # "absMax":I
    :cond_1
    if-le v0, p3, :cond_2

    .line 574
    if-gtz p1, :cond_0

    neg-int p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 576
    goto :goto_0
.end method

.method private clearMotionHistory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 671
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 682
    :goto_0
    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 675
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 676
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 677
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 678
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 679
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 680
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 681
    iput v2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private clearMotionHistory(I)V
    .locals 3
    .param p1, "pointerId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 685
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 696
    :goto_0
    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionX:[F

    aput v1, v0, p1

    .line 689
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 690
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 691
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    .line 692
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aput v2, v0, p1

    .line 693
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v2, v0, p1

    .line 694
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v2, v0, p1

    .line 695
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private computeAxisDuration(III)I
    .locals 10
    .param p1, "delta"    # I
    .param p2, "velocity"    # I
    .param p3, "motionRange"    # I

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 537
    if-nez p1, :cond_0

    .line 538
    const/4 v6, 0x0

    .line 555
    :goto_0
    return v6

    .line 541
    :cond_0
    iget-object v6, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 542
    .local v5, "width":I
    div-int/lit8 v3, v5, 0x2

    .line 543
    .local v3, "halfWidth":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 544
    .local v1, "distanceRatio":F
    int-to-float v6, v3

    int-to-float v7, v3

    .line 545
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    .line 548
    .local v0, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 549
    if-lez p2, :cond_1

    .line 550
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v2, v6, 0x4

    .line 555
    .local v2, "duration":I
    :goto_1
    const/16 v6, 0x258

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    .line 552
    .end local v2    # "duration":I
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p3

    div-float v4, v6, v7

    .line 553
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
    .line 516
    iget v12, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p4

    invoke-direct {p0, v0, v12, v13}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->clampMag(III)I

    move-result p4

    .line 517
    iget v12, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p5

    invoke-direct {p0, v0, v12, v13}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->clampMag(III)I

    move-result p5

    .line 518
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 519
    .local v2, "absDx":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 520
    .local v3, "absDy":I
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 521
    .local v4, "absXVel":I
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 522
    .local v5, "absYVel":I
    add-int v7, v4, v5

    .line 523
    .local v7, "addedVel":I
    add-int v6, v2, v3

    .line 525
    .local v6, "addedDistance":I
    if-eqz p4, :cond_0

    int-to-float v12, v4

    int-to-float v13, v7

    div-float v9, v12, v13

    .line 527
    .local v9, "xweight":F
    :goto_0
    if-eqz p5, :cond_1

    int-to-float v12, v5

    int-to-float v13, v7

    div-float v11, v12, v13

    .line 530
    .local v11, "yweight":F
    :goto_1
    iget-object v12, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-direct {p0, v0, v1, v12}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v8

    .line 531
    .local v8, "xduration":I
    iget-object v12, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v12}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v10

    .line 533
    .local v10, "yduration":I
    int-to-float v12, v8

    mul-float/2addr v12, v9

    int-to-float v13, v10

    mul-float/2addr v13, v11

    add-float/2addr v12, v13

    float-to-int v12, v12

    return v12

    .line 525
    .end local v8    # "xduration":I
    .end local v9    # "xweight":F
    .end local v10    # "yduration":I
    .end local v11    # "yweight":F
    :cond_0
    int-to-float v12, v2

    int-to-float v13, v6

    div-float v9, v12, v13

    goto :goto_0

    .line 527
    .restart local v9    # "xweight":F
    :cond_1
    int-to-float v12, v3

    int-to-float v13, v6

    div-float v11, v12, v13

    goto :goto_1
.end method

.method public static create(Landroid/view/ViewGroup;FLcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;)Lcom/vkcoffee/android/ui/widget/ViewDragHelper;
    .locals 3
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "sensitivity"    # F
    .param p2, "cb"    # Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    .prologue
    .line 345
    invoke-static {p0, p2}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;)Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    move-result-object v0

    .line 346
    .local v0, "helper":Lcom/vkcoffee/android/ui/widget/ViewDragHelper;
    iget v1, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mTouchSlop:I

    .line 347
    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;)Lcom/vkcoffee/android/ui/widget/ViewDragHelper;
    .locals 2
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "cb"    # Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    .prologue
    .line 332
    new-instance v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 660
    iput-boolean v3, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mReleaseInProgress:Z

    .line 661
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 662
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mReleaseInProgress:Z

    .line 664
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v3, :cond_0

    .line 666
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->setDragState(I)V

    .line 668
    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 601
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 602
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 603
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
    .line 1130
    move v2, p1

    .line 1131
    .local v2, "clampedX":I
    move v3, p2

    .line 1132
    .local v3, "clampedY":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1133
    .local v6, "oldLeft":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1134
    .local v7, "oldTop":I
    if-eqz p3, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p3}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v2

    .line 1136
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v2, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1138
    :cond_0
    if-eqz p4, :cond_1

    .line 1139
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2, p4}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v3

    .line 1140
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v3, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1143
    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 1144
    :cond_2
    sub-int v4, v2, v6

    .line 1145
    .local v4, "clampedDx":I
    sub-int v5, v3, v7

    .line 1146
    .local v5, "clampedDy":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 1149
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

    .line 699
    iget-object v7, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v7, v7

    if-gt v7, p1, :cond_2

    .line 700
    :cond_0
    add-int/lit8 v7, p1, 0x1

    new-array v3, v7, [F

    .line 701
    .local v3, "imx":[F
    add-int/lit8 v7, p1, 0x1

    new-array v4, v7, [F

    .line 702
    .local v4, "imy":[F
    add-int/lit8 v7, p1, 0x1

    new-array v5, v7, [F

    .line 703
    .local v5, "lmx":[F
    add-int/lit8 v7, p1, 0x1

    new-array v6, v7, [F

    .line 704
    .local v6, "lmy":[F
    add-int/lit8 v7, p1, 0x1

    new-array v2, v7, [I

    .line 705
    .local v2, "iit":[I
    add-int/lit8 v7, p1, 0x1

    new-array v0, v7, [I

    .line 706
    .local v0, "edip":[I
    add-int/lit8 v7, p1, 0x1

    new-array v1, v7, [I

    .line 708
    .local v1, "edl":[I
    iget-object v7, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_1

    .line 709
    iget-object v7, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionX:[F

    iget-object v8, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 710
    iget-object v7, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionY:[F

    iget-object v8, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 711
    iget-object v7, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mLastMotionX:[F

    iget-object v8, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mLastMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 712
    iget-object v7, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mLastMotionY:[F

    iget-object v8, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mLastMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 713
    iget-object v7, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    iget-object v8, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v8, v8

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 714
    iget-object v7, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    iget-object v8, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v8, v8

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 715
    iget-object v7, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    iget-object v8, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v8, v8

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 718
    :cond_1
    iput-object v3, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionX:[F

    .line 719
    iput-object v4, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionY:[F

    .line 720
    iput-object v5, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mLastMotionX:[F

    .line 721
    iput-object v6, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mLastMotionY:[F

    .line 722
    iput-object v2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 723
    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 724
    iput-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 726
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

    .line 496
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 497
    .local v10, "startLeft":I
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 498
    .local v6, "startTop":I
    sub-int v2, p1, v10

    .line 499
    .local v2, "dx":I
    sub-int v3, p2, v6

    .line 501
    .local v3, "dy":I
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 503
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 504
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->setDragState(I)V

    .line 512
    :goto_0
    return v0

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v9

    .line 509
    .local v9, "duration":I
    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move v5, v10

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 511
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->setDragState(I)V

    .line 512
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getEdgesTouched(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1204
    const/4 v0, 0x0

    .line 1206
    .local v0, "result":I
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    .line 1207
    or-int/lit8 v0, v0, 0x1

    .line 1209
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    .line 1210
    or-int/lit8 v0, v0, 0x4

    .line 1212
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    .line 1213
    or-int/lit8 v0, v0, 0x2

    .line 1215
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_3

    .line 1216
    or-int/lit8 v0, v0, 0x8

    .line 1219
    :cond_3
    return v0
.end method

.method private releaseViewForPointerUp()V
    .locals 5

    .prologue
    .line 1119
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mMaxVelocity:F

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1120
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mActivePointerId:I

    .line 1121
    invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mMaxVelocity:F

    .line 1120
    invoke-direct {p0, v2, v3, v4}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    .line 1123
    .local v0, "xvel":F
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mActivePointerId:I

    .line 1124
    invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mMaxVelocity:F

    .line 1123
    invoke-direct {p0, v2, v3, v4}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    .line 1126
    .local v1, "yvel":F
    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1127
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 1050
    const/4 v0, 0x0

    .line 1051
    .local v0, "dragsStarted":I
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1052
    or-int/lit8 v0, v0, 0x1

    .line 1054
    :cond_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1055
    or-int/lit8 v0, v0, 0x4

    .line 1057
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1058
    or-int/lit8 v0, v0, 0x2

    .line 1060
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1061
    or-int/lit8 v0, v0, 0x8

    .line 1064
    :cond_3
    if-eqz v0, :cond_4

    .line 1065
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    .line 1066
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, v0, p3}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    .line 1068
    :cond_4
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 729
    invoke-direct {p0, p3}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 730
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 731
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 732
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->getEdgesTouched(II)I

    move-result v1

    aput v1, v0, p3

    .line 733
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mPointersDown:I

    .line 734
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 737
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    .line 738
    .local v1, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 739
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 740
    .local v2, "pointerId":I
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 741
    .local v3, "x":F
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 742
    .local v4, "y":F
    iget-object v5, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mLastMotionX:[F

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mLastMotionY:[F

    if-eqz v5, :cond_0

    .line 743
    iget-object v5, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    .line 744
    iget-object v5, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mLastMotionY:[F

    aput v4, v5, v2

    .line 738
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 747
    .end local v2    # "pointerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_1
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 8

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->cancel()V

    .line 446
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v6

    .line 448
    .local v6, "oldX":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v7

    .line 449
    .local v7, "oldY":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 450
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v2

    .line 451
    .local v2, "newX":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    .line 452
    .local v3, "newY":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v4, v2, v6

    sub-int v5, v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 454
    .end local v2    # "newX":I
    .end local v3    # "newY":I
    .end local v6    # "oldX":I
    .end local v7    # "oldY":I
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->setDragState(I)V

    .line 455
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 431
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mActivePointerId:I

    .line 432
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->clearMotionHistory()V

    .line 434
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 438
    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 3
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 414
    iput p2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mActivePointerId:I

    .line 415
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 416
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->setDragState(I)V

    .line 417
    return-void
.end method

.method public continueSettling(Z)Z
    .locals 9
    .param p1, "deferCallbacks"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 619
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 656
    :goto_0
    return v7

    .line 622
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_6

    .line 623
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v6

    .line 624
    .local v6, "keepGoing":Z
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v2

    .line 625
    .local v2, "x":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    .line 626
    .local v3, "y":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v2, v0

    .line 627
    .local v4, "dx":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    .line 629
    .local v5, "dy":I
    if-eqz v4, :cond_1

    .line 630
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 632
    :cond_1
    if-eqz v5, :cond_2

    .line 633
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 636
    :cond_2
    if-nez v4, :cond_3

    if-eqz v5, :cond_4

    .line 637
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 640
    :cond_4
    if-eqz v6, :cond_5

    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v0

    if-ne v2, v0, :cond_5

    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v0

    if-ne v3, v0, :cond_5

    .line 643
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 644
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v6

    .line 647
    :cond_5
    if-nez v6, :cond_6

    .line 648
    if-eqz p1, :cond_7

    .line 649
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 656
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "keepGoing":Z
    :cond_6
    :goto_1
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_8

    const/4 v0, 0x1

    :goto_2
    move v7, v0

    goto :goto_0

    .line 651
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    .restart local v6    # "keepGoing":Z
    :cond_7
    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->setDragState(I)V

    goto :goto_1

    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "keepGoing":Z
    :cond_8
    move v0, v7

    .line 656
    goto :goto_2
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1192
    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1193
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1194
    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    invoke-virtual {v4, v2}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1195
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 1196
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 1200
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1193
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1200
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public isDragging()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1115
    iget v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mDragState:I

    if-ne v1, v0, :cond_0

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

    .line 1174
    if-nez p1, :cond_1

    .line 1180
    :cond_0
    :goto_0
    return v0

    .line 1177
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    .line 1178
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 1179
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_0

    .line 1180
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
    .line 899
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 900
    .local v3, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    .line 902
    .local v4, "actionIndex":I
    if-nez v3, :cond_0

    .line 905
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->cancel()V

    .line 908
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 909
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 911
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 913
    packed-switch v3, :pswitch_data_0

    .line 1047
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 915
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 916
    .local v17, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 917
    .local v18, "y":F
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 918
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

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 920
    .local v16, "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 925
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    .line 928
    .local v7, "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 935
    .end local v7    # "edgesTouched":I
    .end local v15    # "pointerId":I
    .end local v16    # "toCapture":Landroid/view/View;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 936
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 937
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 939
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 942
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 945
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 946
    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    .line 949
    .restart local v7    # "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_0

    .line 952
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

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_0

    .line 963
    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 964
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v12

    .line 965
    .local v12, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 966
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 967
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mLastMotionX:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v17, v19

    move/from16 v0, v19

    float-to-int v10, v0

    .line 968
    .local v10, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mLastMotionY:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v18, v19

    move/from16 v0, v19

    float-to-int v11, v0

    .line 970
    .local v11, "idy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    add-int v19, v19, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    add-int v20, v20, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->dragTo(IIII)V

    .line 972
    invoke-direct/range {p0 .. p1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 975
    .end local v10    # "idx":I
    .end local v11    # "idy":I
    .end local v12    # "index":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v14

    .line 976
    .local v14, "pointerCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v14, :cond_5

    .line 977
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 978
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 979
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 980
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v5, v17, v19

    .line 981
    .local v5, "dx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v6, v18, v19

    .line 983
    .local v6, "dy":F
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v15}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 984
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 995
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 989
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

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 990
    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v6}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 991
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-nez v19, :cond_5

    .line 976
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1001
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

    .line 1002
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_b

    .line 1004
    const/4 v13, -0x1

    .line 1005
    .local v13, "newActivePointer":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v14

    .line 1006
    .restart local v14    # "pointerCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v14, :cond_a

    .line 1007
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v9

    .line 1008
    .local v9, "id":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v9, v0, :cond_9

    .line 1006
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1013
    :cond_9
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1014
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1015
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

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    .line 1016
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1017
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mActivePointerId:I

    .line 1022
    .end local v9    # "id":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_a
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_b

    .line 1024
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1027
    .end local v8    # "i":I
    .end local v13    # "newActivePointer":I
    .end local v14    # "pointerCount":I
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 1032
    .end local v15    # "pointerId":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 1033
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1035
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1040
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1041
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1043
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 913
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
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 750
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    .line 751
    iput p1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mDragState:I

    .line 752
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 753
    if-nez p1, :cond_0

    .line 754
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 757
    :cond_0
    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0
    .param p1, "minVel"    # F

    .prologue
    .line 386
    iput p1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mMinVelocity:F

    .line 387
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    .line 477
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mActivePointerId:I

    .line 482
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mActivePointerId:I

    .line 483
    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    .line 481
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 789
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 790
    .local v0, "action":I
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 792
    .local v1, "actionIndex":I
    if-nez v0, :cond_0

    .line 795
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->cancel()V

    .line 798
    :cond_0
    iget-object v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_1

    .line 799
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    iput-object v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 801
    :cond_1
    iget-object v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 803
    packed-switch v0, :pswitch_data_0

    .line 889
    :cond_2
    :goto_0
    :pswitch_0
    iget v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    const/4 v11, 0x1

    :goto_1
    return v11

    .line 805
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 806
    .local v9, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 807
    .local v10, "y":F
    const/4 v11, 0x0

    invoke-static {p1, v11}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 808
    .local v7, "pointerId":I
    invoke-direct {p0, v9, v10, v7}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 810
    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 813
    .local v8, "toCapture":Landroid/view/View;
    iget-object v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v8, v11, :cond_3

    iget v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mDragState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 814
    invoke-virtual {p0, v8, v7}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 817
    :cond_3
    iget-object v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v4, v11, v7

    .line 818
    .local v4, "edgesTouched":I
    iget v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_2

    .line 819
    iget-object v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    iget v12, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v12, v4

    invoke-virtual {v11, v12, v7}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 825
    .end local v4    # "edgesTouched":I
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_2
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 826
    .restart local v7    # "pointerId":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 827
    .restart local v9    # "x":F
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 829
    .restart local v10    # "y":F
    invoke-direct {p0, v9, v10, v7}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 832
    iget v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mDragState:I

    if-nez v11, :cond_4

    .line 833
    iget-object v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v4, v11, v7

    .line 834
    .restart local v4    # "edgesTouched":I
    iget v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_2

    .line 835
    iget-object v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    iget v12, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v12, v4

    invoke-virtual {v11, v12, v7}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 837
    .end local v4    # "edgesTouched":I
    :cond_4
    iget v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mDragState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 839
    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 840
    .restart local v8    # "toCapture":Landroid/view/View;
    iget-object v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v8, v11, :cond_2

    .line 841
    invoke-virtual {p0, v8, v7}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto :goto_0

    .line 849
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_3
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v6

    .line 850
    .local v6, "pointerCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v6, :cond_7

    iget-object v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionY:[F

    if-eqz v11, :cond_7

    .line 851
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 852
    .restart local v7    # "pointerId":I
    iget-object v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v11, v11

    if-ge v7, v11, :cond_5

    iget-object v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionY:[F

    array-length v11, v11

    if-lt v7, v11, :cond_6

    .line 850
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 855
    :cond_6
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 856
    .restart local v9    # "x":F
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 857
    .restart local v10    # "y":F
    iget-object v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v11, v11, v7

    sub-float v2, v9, v11

    .line 858
    .local v2, "dx":F
    iget-object v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionY:[F

    aget v11, v11, v7

    sub-float v3, v10, v11

    .line 860
    .local v3, "dy":F
    invoke-direct {p0, v2, v3, v7}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 861
    iget v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 872
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v7    # "pointerId":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_7
    :goto_3
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 866
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    .restart local v7    # "pointerId":I
    .restart local v9    # "x":F
    .restart local v10    # "y":F
    :cond_8
    iget-object v11, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v11, v11, v7

    float-to-int v11, v11

    iget-object v12, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mInitialMotionY:[F

    aget v12, v12, v7

    float-to-int v12, v12

    invoke-virtual {p0, v11, v12}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 867
    .restart local v8    # "toCapture":Landroid/view/View;
    if-eqz v8, :cond_5

    invoke-direct {p0, v8, v2, v3}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 868
    invoke-virtual {p0, v8, v7}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_3

    .line 877
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "i":I
    .end local v6    # "pointerCount":I
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_4
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 878
    .restart local v7    # "pointerId":I
    invoke-direct {p0, v7}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 884
    .end local v7    # "pointerId":I
    :pswitch_5
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 889
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 803
    nop

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
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "finalLeft"    # I
    .param p3, "finalTop"    # I

    .prologue
    const/4 v1, 0x0

    .line 458
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 459
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mActivePointerId:I

    .line 461
    invoke-direct {p0, p2, p3, v1, v1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2
    .param p1, "toCapture"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    const/4 v0, 0x1

    .line 769
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v1, p2, :cond_0

    .line 778
    :goto_0
    return v0

    .line 773
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, p1, p2}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 774
    iput p2, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->mActivePointerId:I

    .line 775
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_0

    .line 778
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

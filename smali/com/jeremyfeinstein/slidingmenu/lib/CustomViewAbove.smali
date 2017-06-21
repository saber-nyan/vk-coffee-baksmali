.class public Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
.super Landroid/view/ViewGroup;
.source "CustomViewAbove.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;,
        Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$SimpleOnPageChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final TAG:Ljava/lang/String; = "CustomViewAbove"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field protected mActivePointerId:I

.field private mClosedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;

.field private mContent:Landroid/view/View;

.field private mCurItem:I

.field private mEnabled:Z

.field private mFlingDistance:I

.field private mIgnoredViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialMotionX:F

.field private mInternalPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field protected mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

.field private mOpenedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;

.field private mQuickReturn:Z

.field private mScrollX:F

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field protected mTouchMode:I

.field private mTouchSlop:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$1;

    invoke-direct {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$1;-><init>()V

    sput-object v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    .line 565
    iput v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mTouchMode:I

    .line 611
    iput-boolean v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mQuickReturn:Z

    .line 835
    const/4 v0, 0x0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrollX:F

    .line 157
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->initCustomViewAbove()V

    .line 158
    return-void
.end method

.method static synthetic access$0(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    return-object v0
.end method

.method private completeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 542
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrolling:Z

    .line 543
    .local v0, "needPopulate":Z
    if-eqz v0, :cond_2

    .line 545
    invoke-direct {p0, v6}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 546
    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 547
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v1

    .line 548
    .local v1, "oldX":I
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v2

    .line 549
    .local v2, "oldY":I
    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 550
    .local v3, "x":I
    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 551
    .local v4, "y":I
    if-ne v1, v3, :cond_0

    if-eq v2, v4, :cond_1

    .line 552
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    .line 554
    :cond_1
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 555
    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mOpenedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;

    if-eqz v5, :cond_2

    .line 556
    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mOpenedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;

    invoke-interface {v5}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;->onOpened()V

    .line 562
    .end local v1    # "oldX":I
    .end local v2    # "oldY":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_2
    :goto_0
    iput-boolean v6, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrolling:Z

    .line 563
    return-void

    .line 558
    .restart local v1    # "oldX":I
    .restart local v2    # "oldY":I
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :cond_3
    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mClosedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;

    if-eqz v5, :cond_2

    .line 559
    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mClosedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;

    invoke-interface {v5}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;->onClosed()V

    goto :goto_0
.end method

.method private determineDrag(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 778
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 779
    .local v0, "activePointerId":I
    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 780
    .local v3, "pointerIndex":I
    if-eq v0, v8, :cond_0

    if-ne v3, v8, :cond_1

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 783
    .local v4, "x":F
    iget v8, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    sub-float v1, v4, v8

    .line 784
    .local v1, "dx":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 785
    .local v5, "xDiff":F
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 786
    .local v6, "y":F
    iget v8, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionY:F

    sub-float v2, v6, v8

    .line 787
    .local v2, "dy":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 788
    .local v7, "yDiff":F
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mTouchSlop:I

    div-int/lit8 v8, v8, 0x2

    :goto_1
    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_3

    cmpl-float v8, v5, v7

    if-lez v8, :cond_3

    invoke-direct {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->thisSlideAllowed(F)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 789
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->startDrag()V

    .line 790
    iput v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 791
    iput v6, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionY:F

    .line 792
    invoke-direct {p0, v9}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 788
    :cond_2
    iget v8, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mTouchSlop:I

    goto :goto_1

    .line 794
    :cond_3
    iget v8, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_0

    .line 795
    iput-boolean v9, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    goto :goto_0
.end method

.method private determineTargetPage(FII)I
    .locals 3
    .param p1, "pageOffset"    # F
    .param p2, "velocity"    # I
    .param p3, "deltaX"    # I

    .prologue
    .line 808
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    .line 809
    .local v0, "targetPage":I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mFlingDistance:I

    if-le v1, v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mMinimumVelocity:I

    if-le v1, v2, :cond_2

    .line 810
    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 811
    add-int/lit8 v0, v0, -0x1

    .line 818
    :cond_0
    :goto_0
    return v0

    .line 812
    :cond_1
    if-gez p2, :cond_0

    if-gez p3, :cond_0

    .line 813
    add-int/lit8 v0, v0, 0x1

    .line 815
    goto :goto_0

    .line 816
    :cond_2
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 859
    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mQuickReturn:Z

    .line 860
    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    .line 861
    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    .line 862
    const/4 v0, -0x1

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 864
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 866
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 868
    :cond_0
    return-void
.end method

.method private getLeftBound()I
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getAbsLeftBound(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private getPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "id"    # I

    .prologue
    const/4 v1, -0x1

    .line 605
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 606
    .local v0, "activePointerIndex":I
    if-ne v0, v1, :cond_0

    .line 607
    iput v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 608
    :cond_0
    return v0
.end method

.method private getRightBound()I
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getAbsRightBound(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private isInIgnoredView(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 334
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 335
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 339
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 335
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 336
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 839
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 840
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 841
    .local v1, "pointerId":I
    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 844
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 845
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 846
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 847
    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 848
    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 851
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 844
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)V
    .locals 6
    .param p1, "xpos"    # I

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getWidth()I

    move-result v3

    .line 513
    .local v3, "widthWithMargin":I
    div-int v2, p1, v3

    .line 514
    .local v2, "position":I
    rem-int v1, p1, v3

    .line 515
    .local v1, "offsetPixels":I
    int-to-float v4, v1

    int-to-float v5, v3

    div-float v0, v4, v5

    .line 517
    .local v0, "offset":F
    invoke-virtual {p0, v2, v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->onPageScrolled(IFI)V

    .line 518
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 871
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 872
    iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrollingCacheEnabled:Z

    .line 883
    :cond_0
    return-void
.end method

.method private startDrag()V
    .locals 1

    .prologue
    .line 854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    .line 855
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mQuickReturn:Z

    .line 856
    return-void
.end method

.method private thisSlideAllowed(F)Z
    .locals 2
    .param p1, "dx"    # F

    .prologue
    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, "allowed":Z
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->menuOpenSlideAllowed(F)Z

    move-result v0

    .line 601
    :goto_0
    return v0

    .line 597
    :cond_0
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->menuClosedSlideAllowed(F)Z

    move-result v0

    goto :goto_0
.end method

.method private thisTouchAllowed(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 576
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrollX:F

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 577
    .local v0, "x":I
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 578
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    int-to-float v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->menuOpenTouchAllowed(Landroid/view/View;IF)Z

    move-result v1

    .line 589
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 580
    :cond_1
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 586
    :pswitch_1
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->marginTouchAllowed(Landroid/view/View;I)Z

    move-result v1

    goto :goto_0

    .line 582
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->isInIgnoredView(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 580
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addIgnoredView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_0
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x11

    .line 959
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 960
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 962
    :cond_0
    const/4 v1, 0x0

    .line 964
    .local v1, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 966
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_5

    if-eq v2, v0, :cond_5

    .line 967
    if-ne p1, v4, :cond_3

    .line 968
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 985
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 986
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->playSoundEffect(I)V

    .line 988
    :cond_2
    return v1

    .line 969
    :cond_3
    if-ne p1, v5, :cond_1

    .line 972
    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt v3, v4, :cond_4

    .line 973
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->pageRight()Z

    move-result v1

    .line 974
    goto :goto_0

    .line 975
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 978
    goto :goto_0

    :cond_5
    if-eq p1, v4, :cond_6

    const/4 v3, 0x1

    if-ne p1, v3, :cond_7

    .line 980
    :cond_6
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->pageLeft()Z

    move-result v1

    .line 981
    goto :goto_0

    :cond_7
    if-eq p1, v5, :cond_8

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 983
    :cond_8
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->pageRight()Z

    move-result v1

    goto :goto_0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 897
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v7, p1

    .line 898
    check-cast v7, Landroid/view/ViewGroup;

    .line 899
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 900
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 901
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 903
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-gez v8, :cond_1

    .line 914
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_0
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 904
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_1
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 905
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_2

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 906
    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_2

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 907
    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    .line 908
    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 907
    invoke-virtual/range {v0 .. v5}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    .line 908
    if-eqz v0, :cond_2

    .line 909
    const/4 v0, 0x1

    goto :goto_1

    .line 903
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 914
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public clearIgnoredViews()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 294
    return-void
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 489
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    .line 490
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 491
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v0

    .line 492
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v1

    .line 493
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 494
    .local v2, "x":I
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 496
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 497
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    .line 498
    invoke-direct {p0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->pageScrolled(I)V

    .line 502
    :cond_1
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->invalidate()V

    .line 509
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return-void

    .line 508
    :cond_2
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->completeScroll()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 827
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 829
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 830
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 831
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 832
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 921
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 301
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 302
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 303
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 933
    const/4 v0, 0x0

    .line 934
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 935
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 955
    :cond_0
    :goto_0
    return v0

    .line 937
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .line 938
    goto :goto_0

    .line 940
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .line 941
    goto :goto_0

    .line 943
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 946
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 947
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .line 948
    goto :goto_0

    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 949
    invoke-virtual {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 935
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    if-nez v0, :cond_0

    .line 344
    const/4 v0, 0x0

    .line 346
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getChildWidth(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 351
    packed-switch p1, :pswitch_data_0

    .line 357
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 353
    :pswitch_0
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getBehindWidth()I

    move-result v0

    goto :goto_0

    .line 355
    :pswitch_1
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getContentLeft()I
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    return v0
.end method

.method public getDestScrollX(I)I
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 307
    packed-switch p1, :pswitch_data_0

    .line 314
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 310
    :pswitch_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getMenuLeft(Landroid/view/View;I)I

    move-result v0

    goto :goto_0

    .line 312
    :pswitch_1
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getPercentOpen()F
    .locals 2

    .prologue
    .line 822
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrollX:F

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getBehindWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTouchMode()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mTouchMode:I

    return v0
.end method

.method initCustomViewAbove()V
    .locals 5

    .prologue
    .line 161
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setWillNotDraw(Z)V

    .line 162
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setDescendantFocusability(I)V

    .line 163
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setFocusable(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 165
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    .line 166
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 167
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mTouchSlop:I

    .line 168
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mMinimumVelocity:I

    .line 169
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mMaximumVelocity:I

    .line 170
    new-instance v3, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$2;

    invoke-direct {v3, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$2;-><init>(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)V

    invoke-virtual {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setInternalPageChangeListener(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;)Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    .line 186
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 187
    .local v2, "density":F
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mFlingDistance:I

    .line 188
    return-void
.end method

.method public isMenuOpen()Z
    .locals 2

    .prologue
    .line 330
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSlidingEnabled()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 616
    iget-boolean v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    if-nez v4, :cond_1

    .line 663
    :cond_0
    :goto_0
    return v2

    .line 619
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 625
    .local v0, "action":I
    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    .line 626
    if-eqz v0, :cond_3

    iget-boolean v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    if-eqz v4, :cond_3

    .line 627
    :cond_2
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->endDrag()V

    goto :goto_0

    .line 631
    :cond_3
    sparse-switch v0, :sswitch_data_0

    .line 657
    :cond_4
    :goto_1
    iget-boolean v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    if-nez v4, :cond_6

    .line 658
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_5

    .line 659
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 661
    :cond_5
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 663
    :cond_6
    iget-boolean v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mQuickReturn:Z

    if-eqz v4, :cond_0

    :cond_7
    move v2, v3

    goto :goto_0

    .line 633
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->determineDrag(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 636
    :sswitch_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 637
    .local v1, "index":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v4

    iput v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 638
    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 640
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    iput v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mInitialMotionX:F

    iput v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 641
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    iput v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionY:F

    .line 642
    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 643
    iput-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    .line 644
    iput-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    .line 645
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    iget v6, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrollX:F

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 646
    iput-boolean v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mQuickReturn:Z

    goto :goto_1

    .line 649
    :cond_8
    iput-boolean v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    goto :goto_1

    .line 653
    .end local v1    # "index":I
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 631
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 474
    sub-int v1, p4, p2

    .line 475
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 476
    .local v0, "height":I
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 477
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 450
    invoke-static {v4, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getDefaultSize(II)I

    move-result v3

    .line 451
    .local v3, "width":I
    invoke-static {v4, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getDefaultSize(II)I

    move-result v2

    .line 452
    .local v2, "height":I
    invoke-virtual {p0, v3, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setMeasuredDimension(II)V

    .line 454
    invoke-static {p1, v4, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v1

    .line 455
    .local v1, "contentWidth":I
    invoke-static {p2, v4, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v0

    .line 456
    .local v0, "contentHeight":I
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 457
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 533
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 539
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 461
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 463
    if-eq p1, p3, :cond_0

    .line 467
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->completeScroll()V

    .line 468
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getDestScrollX(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    .line 470
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 670
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 671
    const/16 v20, 0x0

    .line 774
    :goto_0
    return v20

    .line 673
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 674
    const/16 v20, 0x0

    goto :goto_0

    .line 679
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 681
    .local v4, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 682
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 684
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 686
    and-int/lit16 v0, v4, 0xff

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 774
    :cond_3
    :goto_1
    :pswitch_0
    const/16 v20, 0x1

    goto :goto_0

    .line 692
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->completeScroll()V

    .line 695
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v7

    .line 696
    .local v7, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 697
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mInitialMotionX:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    goto :goto_1

    .line 700
    .end local v7    # "index":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 701
    invoke-direct/range {p0 .. p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->determineDrag(Landroid/view/MotionEvent;)V

    .line 702
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 703
    const/16 v20, 0x0

    goto :goto_0

    .line 705
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 707
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 708
    .local v5, "activePointerIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 710
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v19

    .line 711
    .local v19, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    move/from16 v20, v0

    sub-float v6, v20, v19

    .line 712
    .local v6, "deltaX":F
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v20

    move/from16 v0, v20

    int-to-float v12, v0

    .line 714
    .local v12, "oldScrollX":F
    add-float v16, v12, v6

    .line 715
    .local v16, "scrollX":F
    invoke-direct/range {p0 .. p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getLeftBound()I

    move-result v20

    move/from16 v0, v20

    int-to-float v10, v0

    .line 716
    .local v10, "leftBound":F
    invoke-direct/range {p0 .. p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getRightBound()I

    move-result v20

    move/from16 v0, v20

    int-to-float v15, v0

    .line 717
    .local v15, "rightBound":F
    cmpg-float v20, v16, v10

    if-gez v20, :cond_6

    .line 718
    move/from16 v16, v10

    .line 723
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    move/from16 v20, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v16, v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 724
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    .line 725
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->pageScrolled(I)V

    goto/16 :goto_1

    .line 719
    :cond_6
    cmpl-float v20, v16, v15

    if-lez v20, :cond_5

    .line 720
    move/from16 v16, v15

    goto :goto_2

    .line 729
    .end local v5    # "activePointerIndex":I
    .end local v6    # "deltaX":F
    .end local v10    # "leftBound":F
    .end local v12    # "oldScrollX":F
    .end local v15    # "rightBound":F
    .end local v16    # "scrollX":F
    .end local v19    # "x":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 731
    .local v18, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v20, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mMaximumVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 733
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v20, v0

    .line 732
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v9, v0

    .line 734
    .local v9, "initialVelocity":I
    invoke-virtual/range {p0 .. p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v16

    .line 735
    .local v16, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getDestScrollX(I)I

    move-result v20

    sub-int v20, v16, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getBehindWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v13, v20, v21

    .line 736
    .local v13, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 737
    .restart local v5    # "activePointerIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 738
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v19

    .line 739
    .restart local v19    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mInitialMotionX:F

    move/from16 v20, v0

    sub-float v20, v19, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v17, v0

    .line 740
    .local v17, "totalDelta":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v9, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->determineTargetPage(FII)I

    move-result v11

    .line 741
    .local v11, "nextPage":I
    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v11, v1, v2, v9}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    .line 745
    .end local v11    # "nextPage":I
    .end local v17    # "totalDelta":I
    .end local v19    # "x":F
    :goto_3
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 746
    invoke-direct/range {p0 .. p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->endDrag()V

    goto/16 :goto_1

    .line 743
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    move/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    goto :goto_3

    .line 747
    .end local v5    # "activePointerIndex":I
    .end local v9    # "initialVelocity":I
    .end local v13    # "pageOffset":F
    .end local v16    # "scrollX":I
    .end local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mQuickReturn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    move/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrollX:F

    move/from16 v24, v0

    add-float v23, v23, v24

    invoke-virtual/range {v20 .. v23}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 749
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V

    .line 750
    invoke-direct/range {p0 .. p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->endDrag()V

    goto/16 :goto_1

    .line 754
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 755
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    move/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 756
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 757
    invoke-direct/range {p0 .. p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->endDrag()V

    goto/16 :goto_1

    .line 761
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 762
    .local v8, "indexx":I
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 763
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    goto/16 :goto_1

    .line 767
    .end local v8    # "indexx":I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 768
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v14

    .line 769
    .local v14, "pointerIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 771
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    goto/16 :goto_1

    .line 686
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 992
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-lez v1, :cond_0

    .line 993
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    .line 996
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1000
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-ge v1, v0, :cond_0

    .line 1001
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    .line 1004
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeIgnoredView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 290
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 801
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 802
    int-to-float v0, p1

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrollX:F

    .line 803
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->scrollBehindTo(Landroid/view/View;II)V

    .line 805
    return-void
.end method

.method public setAboveOffset(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 482
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 483
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 482
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 484
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->removeView(Landroid/view/View;)V

    .line 435
    :cond_0
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    .line 436
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->addView(Landroid/view/View;)V

    .line 437
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 198
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 199
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 209
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    .line 217
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v2, 0x0

    .line 220
    if-nez p3, :cond_0

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-ne v3, p1, :cond_0

    .line 221
    invoke-direct {p0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 242
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v3, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getMenuPage(I)I

    move-result p1

    .line 227
    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-eq v3, p1, :cond_3

    const/4 v1, 0x1

    .line 228
    .local v1, "dispatchSelected":Z
    :goto_1
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    .line 229
    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getDestScrollX(I)I

    move-result v0

    .line 230
    .local v0, "destX":I
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    if-eqz v3, :cond_1

    .line 231
    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    .line 233
    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    if-eqz v3, :cond_2

    .line 234
    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    .line 236
    :cond_2
    if-eqz p2, :cond_4

    .line 237
    invoke-virtual {p0, v0, v2, p4}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->smoothScrollTo(III)V

    goto :goto_0

    .end local v0    # "destX":I
    .end local v1    # "dispatchSelected":Z
    :cond_3
    move v1, v2

    .line 227
    goto :goto_1

    .line 239
    .restart local v0    # "destX":I
    .restart local v1    # "dispatchSelected":Z
    :cond_4
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->completeScroll()V

    .line 240
    invoke-virtual {p0, v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    goto :goto_0
.end method

.method public setCustomViewBehind(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;)V
    .locals 0
    .param p1, "cvb"    # Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    .line 445
    return-void
.end method

.method setInternalPageChangeListener(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;)Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    .line 278
    .local v0, "oldListener":Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    .line 279
    return-object v0
.end method

.method public setOnClosedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mClosedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;

    .line 268
    return-void
.end method

.method public setOnOpenedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mOpenedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;

    .line 264
    return-void
.end method

.method public setOnPageChangeListener(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    .line 252
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 366
    iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    .line 367
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 568
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mTouchMode:I

    .line 569
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->smoothScrollTo(III)V

    .line 377
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 389
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v2

    .line 393
    .local v2, "sx":I
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v3

    .line 394
    .local v3, "sy":I
    sub-int v4, p1, v2

    .line 395
    .local v4, "dx":I
    sub-int v5, p2, v3

    .line 396
    .local v5, "dy":I
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    .line 397
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->completeScroll()V

    .line 398
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mOpenedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mOpenedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;

    invoke-interface {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;->onOpened()V

    goto :goto_0

    .line 402
    :cond_2
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mClosedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mClosedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;

    invoke-interface {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;->onClosed()V

    goto :goto_0

    .line 408
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 409
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrolling:Z

    .line 411
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getBehindWidth()I

    move-result v11

    .line 412
    .local v11, "width":I
    div-int/lit8 v9, v11, 0x2

    .line 413
    .local v9, "halfWidth":I
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    int-to-float v13, v11

    div-float/2addr v12, v13

    invoke-static {v1, v12}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 414
    .local v8, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v12, v9

    .line 415
    invoke-virtual {p0, v8}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->distanceInfluenceForSnapDuration(F)F

    move-result v13

    mul-float/2addr v12, v13

    .line 414
    add-float v7, v1, v12

    .line 417
    .local v7, "distance":F
    const/4 v6, 0x0

    .line 418
    .local v6, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 419
    if-lez p3, :cond_4

    .line 420
    const/high16 v1, 0x447a0000    # 1000.0f

    move/from16 v0, p3

    int-to-float v12, v0

    div-float v12, v7, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 426
    :goto_1
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 428
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 429
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->invalidate()V

    goto :goto_0

    .line 422
    :cond_4
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v12, v11

    div-float v10, v1, v12

    .line 423
    .local v10, "pageDelta":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v10

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v1, v12

    float-to-int v6, v1

    .line 424
    const/16 v6, 0x258

    goto :goto_1
.end method

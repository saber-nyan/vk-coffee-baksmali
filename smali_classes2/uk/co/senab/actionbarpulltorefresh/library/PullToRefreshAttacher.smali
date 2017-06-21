.class public Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;
.super Ljava/lang/Object;
.source "PullToRefreshAttacher.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PullToRefreshAttacher"


# instance fields
.field private inverse:Z

.field private mActivity:Landroid/app/Activity;

.field private final mAddHeaderViewRunnable:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;

.field private mEnvironmentDelegate:Luk/co/senab/actionbarpulltorefresh/library/EnvironmentDelegate;

.field private mHandlingTouchEventFromDown:Z

.field private mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mIsDestroyed:Z

.field private mIsRefreshing:Z

.field private mLastMotionY:F

.field private mOnRefreshListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;

.field private mPullBeginY:F

.field private final mRect:Landroid/graphics/Rect;

.field private final mRefreshMinimize:Z

.field private final mRefreshMinimizeDelay:I

.field private final mRefreshMinimizeRunnable:Ljava/lang/Runnable;

.field private final mRefreshOnUp:Z

.field private final mRefreshScrollDistance:F

.field private final mRefreshableViews:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mTouchSlop:I

.field private mViewBeingDragged:Landroid/view/View;

.field private final mViewLocationResult:[I


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Luk/co/senab/actionbarpulltorefresh/library/Options;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Luk/co/senab/actionbarpulltorefresh/library/Options;

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsDestroyed:Z

    .line 74
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mViewLocationResult:[I

    .line 75
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    .line 664
    new-instance v1, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$2;

    invoke-direct {v1, p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$2;-><init>(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)V

    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimizeRunnable:Ljava/lang/Runnable;

    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "activity cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_0
    if-nez p2, :cond_1

    .line 85
    const-string/jumbo v1, "PullToRefreshAttacher"

    const-string/jumbo v2, "Given null options so using default options."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance p2, Luk/co/senab/actionbarpulltorefresh/library/Options;

    .end local p2    # "options":Luk/co/senab/actionbarpulltorefresh/library/Options;
    invoke-direct {p2}, Luk/co/senab/actionbarpulltorefresh/library/Options;-><init>()V

    .line 89
    .restart local p2    # "options":Luk/co/senab/actionbarpulltorefresh/library/Options;
    :cond_1
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    .line 90
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    .line 93
    iget v1, p2, Luk/co/senab/actionbarpulltorefresh/library/Options;->refreshScrollDistance:F

    iput v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshScrollDistance:F

    .line 94
    iget-boolean v1, p2, Luk/co/senab/actionbarpulltorefresh/library/Options;->refreshOnUp:Z

    iput-boolean v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshOnUp:Z

    .line 95
    iget v1, p2, Luk/co/senab/actionbarpulltorefresh/library/Options;->refreshMinimizeDelay:I

    iput v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimizeDelay:I

    .line 96
    iget-boolean v1, p2, Luk/co/senab/actionbarpulltorefresh/library/Options;->refreshMinimize:Z

    iput-boolean v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimize:Z

    .line 99
    iget-object v1, p2, Luk/co/senab/actionbarpulltorefresh/library/Options;->environmentDelegate:Luk/co/senab/actionbarpulltorefresh/library/EnvironmentDelegate;

    if-eqz v1, :cond_2

    iget-object v1, p2, Luk/co/senab/actionbarpulltorefresh/library/Options;->environmentDelegate:Luk/co/senab/actionbarpulltorefresh/library/EnvironmentDelegate;

    .line 101
    :goto_0
    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mEnvironmentDelegate:Luk/co/senab/actionbarpulltorefresh/library/EnvironmentDelegate;

    .line 104
    iget-object v1, p2, Luk/co/senab/actionbarpulltorefresh/library/Options;->headerTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    if-eqz v1, :cond_3

    iget-object v1, p2, Luk/co/senab/actionbarpulltorefresh/library/Options;->headerTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    .line 106
    :goto_1
    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    .line 109
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mTouchSlop:I

    .line 112
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 115
    .local v0, "decorView":Landroid/view/ViewGroup;
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mEnvironmentDelegate:Luk/co/senab/actionbarpulltorefresh/library/EnvironmentDelegate;

    .line 116
    invoke-interface {v1, p1}, Luk/co/senab/actionbarpulltorefresh/library/EnvironmentDelegate;->getContextForInflater(Landroid/app/Activity;)Landroid/content/Context;

    move-result-object v1

    .line 115
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p2, Luk/co/senab/actionbarpulltorefresh/library/Options;->headerLayout:I

    .line 116
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    .line 118
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    if-nez v1, :cond_4

    .line 119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Must supply valid layout id for header."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->createDefaultEnvironmentDelegate()Luk/co/senab/actionbarpulltorefresh/library/EnvironmentDelegate;

    move-result-object v1

    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->createDefaultHeaderTransformer()Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    move-result-object v1

    goto :goto_1

    .line 122
    .restart local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_4
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    iget-object v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, p1, v2}, Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;->onViewCreated(Landroid/app/Activity;Landroid/view/View;)V

    .line 128
    new-instance v1, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;-><init>(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$1;)V

    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mAddHeaderViewRunnable:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;

    .line 129
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mAddHeaderViewRunnable:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;

    invoke-virtual {v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;->start()V

    .line 130
    return-void
.end method

.method static synthetic access$100(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Z
    .locals 1
    .param p0, "x0"    # Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    .prologue
    .line 43
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    .prologue
    .line 43
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method private canRefresh(Z)Z
    .locals 1
    .param p1, "fromTouch"    # Z

    .prologue
    .line 557
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsRefreshing:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mOnRefreshListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkScrollForRefresh(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 520
    iget-boolean v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshOnUp:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 521
    iget v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mLastMotionY:F

    iget v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mPullBeginY:F

    sub-float/2addr v1, v2

    invoke-direct {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->getScrollNeededForRefresh(Landroid/view/View;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 522
    invoke-direct {p0, p1, v0, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->setRefreshingInt(Landroid/view/View;ZZ)V

    .line 526
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getScrollNeededForRefresh(Landroid/view/View;)F
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 561
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshScrollDistance:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private isDestroyed()Z
    .locals 2

    .prologue
    .line 605
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 606
    const-string/jumbo v0, "PullToRefreshAttacher"

    const-string/jumbo v1, "PullToRefreshAttacher is destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_0
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsDestroyed:Z

    return v0
.end method

.method private reset(Z)V
    .locals 2
    .param p1, "fromTouch"    # Z

    .prologue
    .line 566
    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsRefreshing:Z

    .line 569
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimize:Z

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->getHeaderView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimizeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 574
    :cond_0
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->hideHeaderView()V

    .line 575
    return-void
.end method

.method private setRefreshingInt(Landroid/view/View;ZZ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "refreshing"    # Z
    .param p3, "fromTouch"    # Z

    .prologue
    .line 530
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsRefreshing:Z

    if-eq v0, p2, :cond_0

    .line 542
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->resetTouch()V

    .line 544
    if-eqz p2, :cond_2

    invoke-direct {p0, p3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->canRefresh(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 545
    invoke-direct {p0, p1, p3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->startRefresh(Landroid/view/View;Z)V

    goto :goto_0

    .line 547
    :cond_2
    invoke-direct {p0, p3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->reset(Z)V

    goto :goto_0
.end method

.method private startRefresh(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fromTouch"    # Z

    .prologue
    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsRefreshing:Z

    .line 582
    if-eqz p2, :cond_0

    .line 583
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mOnRefreshListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mOnRefreshListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;

    invoke-interface {v0, p1}, Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;->onRefreshStarted(Landroid/view/View;)V

    .line 589
    :cond_0
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;->onRefreshStarted()V

    .line 592
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->showHeaderView()V

    .line 595
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimize:Z

    if-eqz v0, :cond_1

    .line 596
    iget v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimizeDelay:I

    if-lez v0, :cond_2

    .line 597
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->getHeaderView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimizeRunnable:Ljava/lang/Runnable;

    iget v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimizeDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 602
    :cond_1
    :goto_0
    return-void

    .line 599
    :cond_2
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->getHeaderView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshMinimizeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected addHeaderViewToActivity(Landroid/view/View;)V
    .locals 7
    .param p1, "headerView"    # Landroid/view/View;

    .prologue
    .line 613
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 616
    const/4 v1, -0x1

    .line 617
    .local v1, "width":I
    const/4 v2, -0x2

    .line 618
    .local v2, "height":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 619
    .local v6, "requestedLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v6, :cond_0

    .line 620
    iget v1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 621
    iget v2, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 625
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x3e8

    const/16 v4, 0x118

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 630
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 631
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 632
    const/16 v3, 0x30

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 635
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 636
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 637
    return-void
.end method

.method addRefreshableView(Landroid/view/View;Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewDelegate"    # Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;

    .prologue
    .line 138
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 143
    :cond_0
    if-nez p1, :cond_1

    .line 144
    const-string/jumbo v0, "PullToRefreshAttacher"

    const-string/jumbo v1, "Refreshable View is null."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_1
    if-nez p2, :cond_2

    .line 150
    invoke-static {p1}, Luk/co/senab/actionbarpulltorefresh/library/InstanceCreationUtils;->getBuiltInViewDelegate(Landroid/view/View;)Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;

    move-result-object p2

    .line 154
    :cond_2
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method clearRefreshableViews()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 170
    return-void
.end method

.method protected createDefaultEnvironmentDelegate()Luk/co/senab/actionbarpulltorefresh/library/EnvironmentDelegate;
    .locals 1

    .prologue
    .line 497
    new-instance v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$1;

    invoke-direct {v0, p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$1;-><init>(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)V

    return-object v0
.end method

.method protected createDefaultHeaderTransformer()Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;
    .locals 1

    .prologue
    .line 516
    new-instance v0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;

    invoke-direct {v0}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;-><init>()V

    return-object v0
.end method

.method destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->removeHeaderViewFromActivity(Landroid/view/View;)V

    .line 225
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->clearRefreshableViews()V

    .line 227
    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    .line 228
    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    .line 229
    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;

    .line 230
    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mEnvironmentDelegate:Luk/co/senab/actionbarpulltorefresh/library/EnvironmentDelegate;

    .line 231
    iput-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsDestroyed:Z

    goto :goto_0
.end method

.method protected final getAttachedActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getHeaderTransformer()Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    return-object v0
.end method

.method final getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method hideHeaderView()V
    .locals 3

    .prologue
    .line 484
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;->hideHeaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;->onStateChanged(Landroid/view/View;I)V

    .line 490
    :cond_0
    return-void
.end method

.method isInverse()Z
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->inverse:Z

    return v0
.end method

.method final isRefreshing()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsRefreshing:Z

    return v0
.end method

.method final isViewBeingDragged(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v6, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 321
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mViewLocationResult:[I

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 322
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mViewLocationResult:[I

    aget v3, v6, v5

    .local v3, "viewLeft":I
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mViewLocationResult:[I

    const/4 v7, 0x1

    aget v4, v6, v7

    .line 323
    .local v4, "viewTop":I
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v6, v3, v4, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 329
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v1, v6

    .local v1, "rawX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v2, v6

    .line 330
    .local v2, "rawY":I
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 332
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v6, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;

    .line 333
    .local v0, "delegate":Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;
    if-eqz v0, :cond_0

    .line 335
    iget-object v5, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, v2, v6

    int-to-float v6, v6

    invoke-interface {v0, p1, v5, v6}, Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;->isReadyForPull(Landroid/view/View;FF)Z

    move-result v5

    .line 339
    .end local v0    # "delegate":Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;
    .end local v1    # "rawX":I
    .end local v2    # "rawY":I
    .end local v3    # "viewLeft":I
    .end local v4    # "viewTop":I
    :cond_0
    return v5
.end method

.method minimizeHeader()V
    .locals 3

    .prologue
    .line 409
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;->onRefreshMinimized()V

    .line 415
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;->onStateChanged(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 179
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    .line 180
    return-void
.end method

.method final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    .line 266
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->isRefreshing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 267
    const/4 v5, 0x0

    .line 315
    :goto_0
    return v5

    .line 270
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 272
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 315
    :cond_1
    :goto_1
    iget-boolean v5, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    goto :goto_0

    .line 276
    :pswitch_0
    iget-boolean v5, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    if-nez v5, :cond_1

    iget v5, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mInitialMotionY:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 277
    iget-boolean v5, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->inverse:Z

    if-eqz v5, :cond_2

    iget v5, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mInitialMotionY:F

    sub-float v5, v3, v5

    neg-float v4, v5

    .line 278
    .local v4, "yDiff":F
    :goto_2
    iget v5, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mInitialMotionX:F

    sub-float v2, v1, v5

    .line 280
    .local v2, "xDiff":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    iget v5, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    .line 281
    iput-boolean v7, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    .line 282
    invoke-virtual {p0, v3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onPullStarted(F)V

    goto :goto_1

    .line 277
    .end local v2    # "xDiff":F
    .end local v4    # "yDiff":F
    :cond_2
    iget v5, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mInitialMotionY:F

    sub-float v4, v3, v5

    goto :goto_2

    .line 283
    .restart local v2    # "xDiff":F
    .restart local v4    # "yDiff":F
    :cond_3
    iget v5, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mTouchSlop:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_1

    .line 284
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->resetTouch()V

    goto :goto_1

    .line 292
    .end local v2    # "xDiff":F
    .end local v4    # "yDiff":F
    :pswitch_1
    invoke-direct {p0, v7}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->canRefresh(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 293
    iget-object v5, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 294
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->isViewBeingDragged(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 295
    iput v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mInitialMotionX:F

    .line 296
    iput v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mInitialMotionY:F

    .line 297
    iput-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mViewBeingDragged:Landroid/view/View;

    goto :goto_3

    .line 306
    .end local v0    # "view":Landroid/view/View;
    :pswitch_2
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->resetTouch()V

    goto :goto_1

    .line 272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method onPull(Landroid/view/View;F)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x1

    .line 442
    invoke-direct {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->getScrollNeededForRefresh(Landroid/view/View;)F

    move-result v0

    .line 443
    .local v0, "pxScrollForRefresh":F
    iget v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mPullBeginY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 445
    .local v1, "scrollLength":F
    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    .line 446
    iget-object v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    div-float v3, v1, v0

    invoke-virtual {v2, v3}, Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;->onPulled(F)V

    .line 454
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-boolean v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshOnUp:Z

    if-eqz v2, :cond_1

    .line 449
    iget-object v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    invoke-virtual {v2}, Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;->onReleaseToRefresh()V

    goto :goto_0

    .line 451
    :cond_1
    invoke-direct {p0, p1, v3, v3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->setRefreshingInt(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method onPullEnded()V
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsRefreshing:Z

    if-nez v0, :cond_0

    .line 461
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->reset(Z)V

    .line 463
    :cond_0
    return-void
.end method

.method onPullStarted(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 430
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->showHeaderView()V

    .line 431
    iput p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mPullBeginY:F

    .line 432
    iget-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->inverse:Z

    if-eqz v0, :cond_0

    .line 433
    iput p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mLastMotionY:F

    .line 435
    :cond_0
    return-void
.end method

.method final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 349
    iput-boolean v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHandlingTouchEventFromDown:Z

    .line 354
    :cond_0
    iget-boolean v4, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHandlingTouchEventFromDown:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    if-nez v4, :cond_2

    .line 355
    invoke-virtual {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 405
    :cond_1
    :goto_0
    return v2

    .line 359
    :cond_2
    iget-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mViewBeingDragged:Landroid/view/View;

    if-nez v4, :cond_3

    move v2, v3

    .line 360
    goto :goto_0

    .line 363
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 396
    :pswitch_0
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mViewBeingDragged:Landroid/view/View;

    invoke-direct {p0, v3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->checkScrollForRefresh(Landroid/view/View;)Z

    .line 397
    iget-boolean v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    if-eqz v3, :cond_4

    .line 398
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onPullEnded()V

    .line 400
    :cond_4
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->resetTouch()V

    goto :goto_0

    .line 366
    :pswitch_1
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->isRefreshing()Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    .line 367
    goto :goto_0

    .line 370
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 372
    .local v0, "y":F
    iget-boolean v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    if-eqz v3, :cond_1

    iget v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mLastMotionY:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_1

    .line 373
    iget-boolean v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->inverse:Z

    if-eqz v3, :cond_6

    iget v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mLastMotionY:F

    sub-float v1, v3, v0

    .line 374
    .local v1, "yDx":F
    :goto_1
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", slop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mTouchSlop:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mTouchSlop:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_7

    .line 381
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mViewBeingDragged:Landroid/view/View;

    invoke-virtual {p0, v3, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onPull(Landroid/view/View;F)V

    .line 383
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 384
    iput v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mLastMotionY:F

    goto :goto_0

    .line 373
    .end local v1    # "yDx":F
    :cond_6
    iget v3, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mLastMotionY:F

    sub-float v1, v0, v3

    goto :goto_1

    .line 387
    .restart local v1    # "yDx":F
    :cond_7
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->onPullEnded()V

    .line 388
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->resetTouch()V

    goto/16 :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected removeHeaderViewFromActivity(Landroid/view/View;)V
    .locals 1
    .param p1, "headerView"    # Landroid/view/View;

    .prologue
    .line 657
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mAddHeaderViewRunnable:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;->finish()V

    .line 659
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 662
    :cond_0
    return-void
.end method

.method resetTouch()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 421
    iput-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mIsBeingDragged:Z

    .line 422
    iput-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHandlingTouchEventFromDown:Z

    .line 423
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mPullBeginY:F

    iput v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mLastMotionY:F

    iput v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mInitialMotionY:F

    .line 424
    return-void
.end method

.method final setHeaderViewListener(Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;)V
    .locals 0
    .param p1, "listener"    # Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;

    .prologue
    .line 241
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;

    .line 242
    return-void
.end method

.method setInverse(Z)V
    .locals 0
    .param p1, "inv"    # Z

    .prologue
    .line 466
    iput-boolean p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->inverse:Z

    .line 467
    return-void
.end method

.method setOnRefreshListener(Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;)V
    .locals 0
    .param p1, "listener"    # Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;

    .prologue
    .line 213
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mOnRefreshListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;

    .line 214
    return-void
.end method

.method final setRefreshComplete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->setRefreshingInt(Landroid/view/View;ZZ)V

    .line 207
    return-void
.end method

.method final setRefreshing(Z)V
    .locals 2
    .param p1, "refreshing"    # Z

    .prologue
    .line 189
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->setRefreshingInt(Landroid/view/View;ZZ)V

    .line 190
    return-void
.end method

.method showHeaderView()V
    .locals 3

    .prologue
    .line 474
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->updateHeaderViewPosition(Landroid/view/View;)V

    .line 475
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderTransformer:Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/HeaderTransformer;->showHeaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderViewListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;->onStateChanged(Landroid/view/View;I)V

    .line 481
    :cond_0
    return-void
.end method

.method protected updateHeaderViewPosition(Landroid/view/View;)V
    .locals 3
    .param p1, "headerView"    # Landroid/view/View;

    .prologue
    .line 641
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_2

    .line 645
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "wlp":Landroid/view/WindowManager$LayoutParams;
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 650
    .restart local v0    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eq v1, v2, :cond_1

    .line 651
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 652
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 654
    :cond_1
    return-void

    .line 646
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    .line 647
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wlp":Landroid/view/WindowManager$LayoutParams;
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .restart local v0    # "wlp":Landroid/view/WindowManager$LayoutParams;
    goto :goto_0
.end method

.method useViewDelegate(Ljava/lang/Class;Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;)V
    .locals 3
    .param p2, "delegate"    # Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;",
            ")V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 159
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 163
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

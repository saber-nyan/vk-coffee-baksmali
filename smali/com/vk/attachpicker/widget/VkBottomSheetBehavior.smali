.class public Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "VkBottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;,
        Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SettleRunnable;,
        Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$State;,
        Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$BottomSheetCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final HIDE_FRICTION:F = 0.1f

.field private static final HIDE_THRESHOLD:F = 0.5f

.field public static final STATE_COLLAPSED:I = 0x4

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_EXPANDED:I = 0x3

.field public static final STATE_HIDDEN:I = 0x5

.field public static final STATE_SETTLING:I = 0x2

.field private static positionField:Ljava/lang/reflect/Field;


# instance fields
.field private mActivePointerId:I

.field private mCallback:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$BottomSheetCallback;

.field private final mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private mHideable:Z

.field private mIgnoreEvents:Z

.field private mInitialY:I

.field private mLastNestedScrollDy:I

.field private mMaxOffset:I

.field private mMaximumVelocity:F

.field private mMinOffset:I

.field private mNestedScrolled:Z

.field private mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mParentHeight:I

.field private mPeekHeight:I

.field private mState:I

.field private mTouchingScrollingChild:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 110
    const/4 v0, 0x4

    iput v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mState:I

    .line 530
    new-instance v0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;-><init>(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 152
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    const/4 v1, 0x4

    iput v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mState:I

    .line 530
    new-instance v1, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;-><init>(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)V

    iput-object v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 153
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 154
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMaximumVelocity:F

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    .prologue
    .line 37
    iget v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mState:I

    return v0
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mTouchingScrollingChild:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    .prologue
    .line 37
    iget v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMaxOffset:I

    return v0
.end method

.method static synthetic access$1100(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$BottomSheetCallback;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mCallback:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$BottomSheetCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    .prologue
    .line 37
    iget v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$300(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->setStateInternal(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    .prologue
    .line 37
    iget v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMinOffset:I

    return v0
.end method

.method static synthetic access$700(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mHideable:Z

    return v0
.end method

.method static synthetic access$800(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;Landroid/view/View;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    .prologue
    .line 37
    iget v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mParentHeight:I

    return v0
.end method

.method static constrain(III)I
    .locals 0
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 710
    if-ge p0, p1, :cond_0

    .end local p1    # "low":I
    :goto_0
    return p1

    .restart local p1    # "low":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 505
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    instance-of v5, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v5, :cond_0

    .line 521
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 508
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v5, p1, Landroid/support/v4/view/ViewPager;

    if-eqz v5, :cond_1

    .line 509
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {p1}, Lcom/vk/attachpicker/util/Utils;->getPagerActiveView(Landroid/support/v4/view/ViewPager;)Landroid/view/View;

    move-result-object v0

    .line 510
    .local v0, "activeView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 512
    .end local v0    # "activeView":Landroid/view/View;
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    move-object v2, p1

    .line 513
    check-cast v2, Landroid/view/ViewGroup;

    .line 514
    .local v2, "group":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 515
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 516
    .local v4, "scrollingChild":Landroid/view/View;
    if-eqz v4, :cond_2

    move-object p1, v4

    .line 517
    goto :goto_0

    .line 514
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 521
    .end local v1    # "count":I
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    .end local v4    # "scrollingChild":Landroid/view/View;
    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static from(Landroid/view/View;)Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 696
    .local p0, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 697
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-nez v2, :cond_0

    .line 698
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The view is not a child of CoordinatorLayout"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 700
    :cond_0
    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 701
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 702
    .local v0, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    instance-of v2, v0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    if-nez v2, :cond_1

    .line 703
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The view is not associated with BottomSheetBehavior"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 706
    :cond_1
    check-cast v0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    .end local v0    # "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    return-object v0
.end method

.method private getYVelocity()F
    .locals 3

    .prologue
    .line 526
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMaximumVelocity:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 527
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mActivePointerId:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 488
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mActivePointerId:I

    .line 489
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 493
    :cond_0
    return-void
.end method

.method private setStateInternal(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 477
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    iget v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mState:I

    if-ne v1, p1, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    iput p1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mState:I

    .line 481
    iget-object v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 482
    .local v0, "bottomSheet":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mCallback:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$BottomSheetCallback;

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mCallback:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v1, v0, p1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$BottomSheetCallback;->onStateChanged(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private shouldHide(Landroid/view/View;F)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "yvel"    # F

    .prologue
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    const/4 v1, 0x0

    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMaxOffset:I

    if-ge v2, v3, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v1

    .line 500
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, p2

    add-float v0, v2, v3

    .line 501
    .local v0, "newTop":F
    iget v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMaxOffset:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mPeekHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dispatchOnSlide(I)V
    .locals 5
    .param p1, "top"    # I

    .prologue
    .line 615
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    iget-object v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 616
    .local v0, "bottomSheet":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mCallback:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$BottomSheetCallback;

    if-eqz v1, :cond_0

    .line 617
    iget v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMaxOffset:I

    if-le p1, v1, :cond_1

    .line 618
    iget-object v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mCallback:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$BottomSheetCallback;

    iget v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMaxOffset:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mPeekHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-object v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mCallback:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$BottomSheetCallback;

    iget v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMaxOffset:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMaxOffset:I

    iget v4, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMinOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public final getPeekHeight()I
    .locals 1

    .prologue
    .line 394
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    iget v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mPeekHeight:I

    return v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 473
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    iget v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mState:I

    return v0
.end method

.method public isHideable()Z
    .locals 1

    .prologue
    .line 414
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mHideable:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 207
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 252
    :goto_0
    return v5

    .line 210
    :cond_0
    invoke-static {p3}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 212
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->reset()V

    .line 215
    :cond_1
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    .line 216
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 218
    :cond_2
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 219
    packed-switch v0, :pswitch_data_0

    .line 242
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mIgnoreEvents:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p3}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v5, v4

    .line 243
    goto :goto_0

    .line 222
    :pswitch_1
    iput-boolean v5, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mTouchingScrollingChild:Z

    .line 223
    iput v6, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mActivePointerId:I

    .line 225
    iget-boolean v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mIgnoreEvents:Z

    if-eqz v3, :cond_3

    .line 226
    iput-boolean v5, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mIgnoreEvents:Z

    goto :goto_0

    .line 231
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 232
    .local v1, "initialX":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mInitialY:I

    .line 233
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 234
    .local v2, "scroll":Landroid/view/View;
    if-eqz v2, :cond_4

    iget v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mInitialY:I

    invoke-virtual {p1, v2, v1, v3}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 235
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mActivePointerId:I

    .line 236
    iput-boolean v4, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mTouchingScrollingChild:Z

    .line 238
    :cond_4
    iget v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mActivePointerId:I

    if-ne v3, v6, :cond_5

    iget v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mInitialY:I

    .line 239
    invoke-virtual {p1, p2, v1, v3}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mIgnoreEvents:Z

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_2

    .line 248
    .end local v1    # "initialX":I
    .end local v2    # "scroll":Landroid/view/View;
    :cond_6
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 249
    .restart local v2    # "scroll":Landroid/view/View;
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mIgnoreEvents:Z

    if-nez v3, :cond_7

    iget v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mState:I

    if-eq v3, v4, :cond_7

    .line 251
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1, v2, v3, v6}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v3

    if-nez v3, :cond_7

    iget v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mInitialY:I

    int-to-float v3, v3

    .line 252
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v6, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v6}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_7

    :goto_3
    move v5, v4

    goto/16 :goto_0

    :cond_7
    move v4, v5

    goto :goto_3

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 5
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v4, 0x1

    .line 177
    iget v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mState:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 178
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    invoke-static {p2, v4}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 182
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 186
    :cond_1
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mParentHeight:I

    .line 187
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMinOffset:I

    .line 188
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mPeekHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMinOffset:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMaxOffset:I

    .line 189
    iget v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 190
    iget v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMinOffset:I

    invoke-static {p2, v1}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 196
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-nez v1, :cond_3

    .line 197
    iget-object v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p1, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 199
    :cond_3
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 200
    invoke-direct {p0, p2}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 201
    .local v0, "scrollingChild":Landroid/view/View;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 202
    return v4

    .line 191
    .end local v0    # "scrollingChild":Landroid/view/View;
    :cond_4
    iget-boolean v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mHideable:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 192
    iget v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mParentHeight:I

    invoke-static {p2, v1}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_0

    .line 193
    :cond_5
    iget v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 194
    iget v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMaxOffset:I

    invoke-static {p2, v1}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 2
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 372
    invoke-super/range {p0 .. p5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 6
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 294
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 295
    .local v2, "scrollingChild":Landroid/view/View;
    if-eq p3, v2, :cond_0

    .line 326
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 299
    .local v0, "currentTop":I
    sub-int v1, v0, p5

    .line 300
    .local v1, "newTop":I
    if-lez p5, :cond_3

    .line 301
    iget v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMinOffset:I

    if-ge v1, v3, :cond_2

    .line 302
    iget v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMinOffset:I

    sub-int v3, v0, v3

    aput v3, p6, v4

    .line 303
    aget v3, p6, v4

    neg-int v3, v3

    invoke-static {p2, v3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 304
    invoke-direct {p0, v5}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->setStateInternal(I)V

    .line 323
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->dispatchOnSlide(I)V

    .line 324
    iput p5, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mLastNestedScrollDy:I

    .line 325
    iput-boolean v4, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mNestedScrolled:Z

    goto :goto_0

    .line 306
    :cond_2
    aput p5, p6, v4

    .line 307
    neg-int v3, p5

    invoke-static {p2, v3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 308
    invoke-direct {p0, v4}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    .line 310
    :cond_3
    if-gez p5, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->getState()I

    move-result v3

    if-ne v3, v5, :cond_4

    const/4 v3, -0x1

    invoke-static {p3, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 312
    :cond_4
    iget v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMaxOffset:I

    if-le v1, v3, :cond_5

    iget-boolean v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mHideable:Z

    if-eqz v3, :cond_6

    .line 313
    :cond_5
    aput p5, p6, v4

    .line 314
    neg-int v3, p5

    invoke-static {p2, v3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 315
    invoke-direct {p0, v4}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    .line 317
    :cond_6
    iget v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMaxOffset:I

    sub-int v3, v0, v3

    aput v3, p6, v4

    .line 318
    aget v3, p6, v4

    neg-int v3, v3

    invoke-static {p2, v3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 319
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    move-object v0, p3

    check-cast v0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;

    .line 165
    .local v0, "ss":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;
    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, p1, p2, v1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 167
    iget v1, v0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 168
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mState:I

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_1
    iget v1, v0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;->state:I

    iput v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mState:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 3
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    new-instance v0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v1

    iget v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mState:I

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    .line 286
    iput v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mLastNestedScrollDy:I

    .line 287
    iput-boolean v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mNestedScrolled:Z

    .line 288
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMinOffset:I

    if-ne v3, v4, :cond_1

    .line 331
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->setStateInternal(I)V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne p3, v3, :cond_0

    iget-boolean v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mNestedScrolled:Z

    if-eqz v3, :cond_0

    .line 339
    iget v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mLastNestedScrollDy:I

    if-lez v3, :cond_2

    .line 340
    iget v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMinOffset:I

    .line 341
    .local v2, "top":I
    const/4 v1, 0x3

    .line 358
    .local v1, "targetState":I
    :goto_1
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3, p2, v4, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 359
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->setStateInternal(I)V

    .line 360
    new-instance v3, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SettleRunnable;

    invoke-direct {v3, p0, p2, v1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SettleRunnable;-><init>(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p2, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 364
    :goto_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mNestedScrolled:Z

    goto :goto_0

    .line 342
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_2
    iget-boolean v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mHideable:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->getYVelocity()F

    move-result v3

    invoke-direct {p0, p2, v3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 343
    iget v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mParentHeight:I

    .line 344
    .restart local v2    # "top":I
    const/4 v1, 0x5

    .restart local v1    # "targetState":I
    goto :goto_1

    .line 345
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_3
    iget v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mLastNestedScrollDy:I

    if-nez v3, :cond_5

    .line 346
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 347
    .local v0, "currentTop":I
    iget v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMinOffset:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMaxOffset:I

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 348
    iget v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMinOffset:I

    .line 349
    .restart local v2    # "top":I
    const/4 v1, 0x3

    .restart local v1    # "targetState":I
    goto :goto_1

    .line 351
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_4
    iget v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMaxOffset:I

    .line 352
    .restart local v2    # "top":I
    const/4 v1, 0x4

    .restart local v1    # "targetState":I
    goto :goto_1

    .line 355
    .end local v0    # "currentTop":I
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_5
    iget v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMaxOffset:I

    .line 356
    .restart local v2    # "top":I
    const/4 v1, 0x4

    .restart local v1    # "targetState":I
    goto :goto_1

    .line 362
    :cond_6
    invoke-direct {p0, v1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v1, 0x1

    .line 257
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 258
    const/4 v1, 0x0

    .line 280
    :cond_0
    :goto_0
    return v1

    .line 260
    :cond_1
    invoke-static {p3}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 261
    .local v0, "action":I
    iget v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mState:I

    if-ne v2, v1, :cond_2

    if-eqz v0, :cond_0

    .line 264
    :cond_2
    iget-object v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, p3}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 266
    if-nez v0, :cond_3

    .line 267
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->reset()V

    .line 269
    :cond_3
    iget-object v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_4

    .line 270
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 272
    :cond_4
    iget-object v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 275
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mIgnoreEvents:Z

    if-nez v2, :cond_0

    .line 276
    iget v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mInitialY:I

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v2, p2, v3}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setBottomSheetCallback(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$BottomSheetCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$BottomSheetCallback;

    .prologue
    .line 423
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    iput-object p1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mCallback:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$BottomSheetCallback;

    .line 424
    return-void
.end method

.method public setHideable(Z)V
    .locals 0
    .param p1, "hideable"    # Z

    .prologue
    .line 404
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    iput-boolean p1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mHideable:Z

    .line 405
    return-void
.end method

.method public final setPeekHeight(I)V
    .locals 1
    .param p1, "peekHeight"    # I

    .prologue
    .line 383
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mPeekHeight:I

    .line 384
    iget v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mParentHeight:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMaxOffset:I

    .line 385
    return-void
.end method

.method public final setState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>;"
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 434
    iget v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mState:I

    if-ne p1, v2, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_3

    .line 439
    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_2

    iget-boolean v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mHideable:Z

    if-eqz v2, :cond_0

    if-ne p1, v5, :cond_0

    .line 441
    :cond_2
    iput p1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mState:I

    goto :goto_0

    .line 445
    :cond_3
    iget-object v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 446
    .local v0, "child":Landroid/view/View;, "TV;"
    if-eqz v0, :cond_0

    .line 450
    if-ne p1, v4, :cond_4

    .line 451
    iget v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMaxOffset:I

    .line 459
    .local v1, "top":I
    :goto_1
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->setStateInternal(I)V

    .line 460
    iget-object v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, v0, v3, v1}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    new-instance v2, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SettleRunnable;

    invoke-direct {v2, p0, v0, p1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SettleRunnable;-><init>(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 452
    .end local v1    # "top":I
    :cond_4
    if-ne p1, v3, :cond_5

    .line 453
    iget v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mMinOffset:I

    .restart local v1    # "top":I
    goto :goto_1

    .line 454
    .end local v1    # "top":I
    :cond_5
    iget-boolean v2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mHideable:Z

    if-eqz v2, :cond_6

    if-ne p1, v5, :cond_6

    .line 455
    iget v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->mParentHeight:I

    .restart local v1    # "top":I
    goto :goto_1

    .line 457
    .end local v1    # "top":I
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal state argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

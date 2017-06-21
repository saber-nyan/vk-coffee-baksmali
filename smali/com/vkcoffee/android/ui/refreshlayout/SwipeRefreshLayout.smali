.class public Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent;
.implements Landroid/support/v4/view/NestedScrollingChild;
.implements Lme/grishka/appkit/views/SwipeRefreshLayoutI;


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATE_TO_START_DURATION:I = 0xc8

.field private static final ANIMATE_TO_TRIGGER_DURATION:I = 0xc8

.field private static final CIRCLE_BG_LIGHT:I = -0x50506

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field private static final DRAG_RATE:F = 0.5f

.field private static final INVALID_POINTER:I = -0x1

.field public static final LARGE:I = 0x0

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_PROGRESS_ANGLE:F = 0.8f

.field private static final SCALE_DOWN_DURATION:I = 0x96

.field private static final STARTING_PROGRESS_ALPHA:I = 0x4c


# instance fields
.field private mActivePointerId:I

.field private mAlphaMaxAnimation:Landroid/view/animation/Animation;

.field private mAlphaStartAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mCircleHeight:I

.field private mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

.field private mCircleViewIndex:I

.field private mCircleWidth:I

.field private mCurrentTargetOffsetTop:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mIsReversed:Z

.field private mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private mNotify:Z

.field private mOffset:I

.field private mOriginalOffsetCalculated:Z

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field private mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field private mRefreshing:Z

.field private mReturningToStart:Z

.field private mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field private mSpinnerFinalOffset:F

.field private mStartingScale:F

.field private mTarget:Landroid/view/View;

.field private mTotalDragDistance:F

.field private mTotalUnconsumed:F

.field private mTouchSlop:I

.field private mUsingCustomStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const-class v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x2

    const/4 v3, -0x1

    const/high16 v6, 0x42200000    # 40.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 279
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mRefreshing:Z

    .line 94
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 102
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mParentScrollConsumed:[I

    .line 103
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    .line 109
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    .line 114
    iput v3, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mActivePointerId:I

    .line 127
    iput v3, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 159
    new-instance v2, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$1;-><init>(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1099
    new-instance v2, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$6;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$6;-><init>(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 1129
    new-instance v2, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$7;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$7;-><init>(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 1182
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mIsReversed:Z

    .line 281
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTouchSlop:I

    .line 283
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mMediumAnimationDuration:I

    .line 286
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 287
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 289
    sget-object v2, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 290
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->setEnabled(Z)V

    .line 291
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 293
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 294
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleWidth:I

    .line 295
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleHeight:I

    .line 297
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->createProgressView()V

    .line 298
    invoke-static {p0, v5}, Landroid/support/v4/view/ViewCompat;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    .line 300
    const/high16 v2, 0x42800000    # 64.0f

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 301
    iget v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    iput v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 302
    new-instance v2, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v2, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 304
    new-instance v2, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v2, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 305
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 306
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mRefreshing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;
    .param p1, "x1"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mUsingCustomStart:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    .prologue
    .line 54
    iget v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    return v0
.end method

.method static synthetic access$1400(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;
    .param p1, "x1"    # F

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->moveToStart(F)V

    return-void
.end method

.method static synthetic access$1500(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    .prologue
    .line 54
    iget v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mStartingScale:F

    return v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mNotify:Z

    return v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->setColorViewAlpha(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mScale:Z

    return v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;
    .param p1, "x1"    # F

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getOriginalOffsetTop()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    .prologue
    .line 54
    iget v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return v0
.end method

.method static synthetic access$902(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return p1
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 1071
    iput p1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mFrom:I

    .line 1072
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1073
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1074
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1075
    if-eqz p2, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->clearAnimation()V

    .line 1079
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1080
    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 1083
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_0

    .line 1085
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1097
    :goto_0
    return-void

    .line 1087
    :cond_0
    iput p1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mFrom:I

    .line 1088
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1089
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1090
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1091
    if-eqz p2, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1094
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->clearAnimation()V

    .line 1095
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private createProgressView()V
    .locals 4

    .prologue
    const v3, -0x50506

    .line 335
    new-instance v0, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {v0, v1, v3, v2}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;-><init>(Landroid/content/Context;IF)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    .line 336
    new-instance v0, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    .line 337
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 338
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 339
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 341
    return-void
.end method

.method private ensureTarget()V
    .locals 3

    .prologue
    .line 548
    iget-object v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v2, :cond_0

    .line 549
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 550
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 551
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 552
    iput-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 557
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 549
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private findScrollableChild(Landroid/view/ViewGroup;Z)Z
    .locals 3
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .param p2, "up"    # Z

    .prologue
    .line 1203
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1204
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1205
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/AdapterView;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/widget/ScrollView;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_2

    .line 1206
    :cond_0
    if-eqz p2, :cond_1

    const/4 v2, -0x1

    :goto_1
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    .line 1211
    .end local v0    # "child":Landroid/view/View;
    :goto_2
    return v2

    .line 1206
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 1207
    :cond_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 1208
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->findScrollableChild(Landroid/view/ViewGroup;Z)Z

    move-result v2

    goto :goto_2

    .line 1203
    .restart local v0    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1211
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private finishSpinner(F)V
    .locals 6
    .param p1, "overscrollTop"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 951
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 952
    invoke-direct {p0, v5, v5}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->setRefreshing(ZZ)V

    .line 981
    :goto_0
    return-void

    .line 955
    :cond_0
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mRefreshing:Z

    .line 956
    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    invoke-virtual {v1, v3, v3}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 957
    const/4 v0, 0x0

    .line 958
    .local v0, "listener":Landroid/view/animation/Animation$AnimationListener;
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mScale:Z

    if-nez v1, :cond_1

    .line 959
    new-instance v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$5;

    .end local v0    # "listener":Landroid/view/animation/Animation$AnimationListener;
    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$5;-><init>(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)V

    .line 978
    .restart local v0    # "listener":Landroid/view/animation/Animation$AnimationListener;
    :cond_1
    iget v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    invoke-direct {p0, v1, v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 979
    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    invoke-virtual {v1, v4}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->showArrow(Z)V

    goto :goto_0
.end method

.method private getMotionEventY(Landroid/view/MotionEvent;I)F
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .prologue
    .line 705
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 706
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 707
    const/high16 v1, -0x40800000    # -1.0f

    .line 709
    :goto_0
    return v1

    :cond_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    goto :goto_0
.end method

.method private getOriginalOffsetTop()I
    .locals 2

    .prologue
    .line 1220
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1221
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mOffset:I

    add-int/2addr v0, v1

    .line 1223
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mOffset:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private isAlphaUsedForScale()Z
    .locals 2

    .prologue
    .line 355
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 891
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveSpinner(F)V
    .locals 20
    .param p1, "overscrollTop"    # F

    .prologue
    .line 895
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->showArrow(Z)V

    .line 896
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalDragDistance:F

    div-float v6, p1, v13

    .line 898
    .local v6, "originalDragPercent":F
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 899
    .local v3, "dragPercent":F
    float-to-double v14, v3

    const-wide v16, 0x3fd999999999999aL    # 0.4

    sub-double v14, v14, v16

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    double-to-float v13, v14

    const/high16 v14, 0x40a00000    # 5.0f

    mul-float/2addr v13, v14

    const/high16 v14, 0x40400000    # 3.0f

    div-float v2, v13, v14

    .line 900
    .local v2, "adjustedPercent":F
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalDragDistance:F

    sub-float v5, v13, v14

    .line 901
    .local v5, "extraOS":F
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getOriginalOffsetTop()I

    move-result v14

    int-to-float v14, v14

    sub-float v8, v13, v14

    .line 903
    .local v8, "slingshotDist":F
    :goto_0
    const/4 v13, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v8

    invoke-static {v5, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    div-float/2addr v14, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 905
    .local v12, "tensionSlingshotPercent":F
    const/high16 v13, 0x40800000    # 4.0f

    div-float v13, v12, v13

    float-to-double v14, v13

    const/high16 v13, 0x40800000    # 4.0f

    div-float v13, v12, v13

    float-to-double v0, v13

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    sub-double v14, v14, v16

    double-to-float v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v11, v13, v14

    .line 907
    .local v11, "tensionPercent":F
    mul-float v4, v8, v11

    .line 912
    .local v4, "extraMove":F
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isReversed()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 913
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getOriginalOffsetTop()I

    move-result v13

    mul-float v14, v8, v3

    add-float/2addr v14, v4

    float-to-int v14, v14

    sub-int v10, v13, v14

    .line 919
    .local v10, "targetY":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v13}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_0

    .line 920
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->setVisibility(I)V

    .line 922
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mScale:Z

    if-nez v13, :cond_1

    .line 923
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v14}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 924
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v14}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 926
    :cond_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 927
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpg-float v13, p1, v13

    if-gez v13, :cond_7

    .line 928
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mScale:Z

    if-eqz v13, :cond_2

    .line 929
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalDragDistance:F

    div-float v13, p1, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 931
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    invoke-virtual {v13}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->getAlpha()I

    move-result v13

    const/16 v14, 0x4c

    if-le v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 932
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 934
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->startProgressAlphaStartAnimation()V

    .line 936
    :cond_3
    const v13, 0x3f4ccccd    # 0.8f

    mul-float v9, v2, v13

    .line 937
    .local v9, "strokeStart":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    const/4 v14, 0x0

    const v15, 0x3f4ccccd    # 0.8f

    invoke-static {v15, v9}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-virtual {v13, v14, v15}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 938
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14, v2}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-virtual {v13, v14}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->setArrowScale(F)V

    .line 945
    .end local v9    # "strokeStart":F
    :cond_4
    :goto_2
    const/high16 v13, -0x41800000    # -0.25f

    const v14, 0x3ecccccd    # 0.4f

    mul-float/2addr v14, v2

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v7, v13, v14

    .line 946
    .local v7, "rotation":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    invoke-virtual {v13, v7}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->setProgressRotation(F)V

    .line 947
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int v13, v10, v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 948
    return-void

    .line 901
    .end local v4    # "extraMove":F
    .end local v7    # "rotation":F
    .end local v8    # "slingshotDist":F
    .end local v10    # "targetY":I
    .end local v11    # "tensionPercent":F
    .end local v12    # "tensionSlingshotPercent":F
    :cond_5
    move-object/from16 v0, p0

    iget v8, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    goto/16 :goto_0

    .line 915
    .restart local v4    # "extraMove":F
    .restart local v8    # "slingshotDist":F
    .restart local v11    # "tensionPercent":F
    .restart local v12    # "tensionSlingshotPercent":F
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getOriginalOffsetTop()I

    move-result v13

    mul-float v14, v8, v3

    add-float/2addr v14, v4

    float-to-int v14, v14

    add-int v10, v13, v14

    .restart local v10    # "targetY":I
    goto/16 :goto_1

    .line 940
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    invoke-virtual {v13}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->getAlpha()I

    move-result v13

    const/16 v14, 0xff

    if-ge v13, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 942
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->startProgressAlphaMaxAnimation()V

    goto :goto_2
.end method

.method private moveToStart(F)V
    .locals 5
    .param p1, "interpolatedTime"    # F

    .prologue
    .line 1123
    const/4 v1, 0x0

    .line 1124
    .local v1, "targetTop":I
    iget v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mFrom:I

    invoke-direct {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getOriginalOffsetTop()I

    move-result v3

    iget v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mFrom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int v1, v2, v3

    .line 1125
    iget-object v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->getTop()I

    move-result v2

    sub-int v0, v1, v2

    .line 1126
    .local v0, "offset":I
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 1127
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1170
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1171
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1172
    .local v1, "pointerId":I
    iget v3, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1175
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1176
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mActivePointerId:I

    .line 1178
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1175
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAnimationProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 423
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 421
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private setColorViewAlpha(I)V
    .locals 1
    .param p1, "targetAlpha"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 197
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->setAlpha(I)V

    .line 198
    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 2
    .param p1, "refreshing"    # Z
    .param p2, "notify"    # Z

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_0

    .line 427
    iput-boolean p2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mNotify:Z

    .line 428
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->ensureTarget()V

    .line 429
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mRefreshing:Z

    .line 430
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mRefreshing:Z

    if-eqz v0, :cond_1

    .line 431
    iget v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private setTargetOffsetTopAndBottom(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "requiresUpdate"    # Z

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->bringToFront()V

    .line 1162
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->offsetTopAndBottom(I)V

    .line 1163
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 1164
    if-eqz p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 1165
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->invalidate()V

    .line 1167
    :cond_0
    return-void
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "startingAlpha"    # I
    .param p2, "endingAlpha"    # I

    .prologue
    const/4 v1, 0x0

    .line 462
    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mScale:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 478
    :goto_0
    return-object v0

    .line 465
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$4;-><init>(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;II)V

    .line 473
    .local v0, "alpha":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 475
    iget-object v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 476
    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->clearAnimation()V

    .line 477
    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private startProgressAlphaMaxAnimation()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    .line 457
    return-void
.end method

.method private startProgressAlphaStartAnimation()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 453
    return-void
.end method

.method private startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 439
    new-instance v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$3;-><init>(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    .line 445
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 446
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 447
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->clearAnimation()V

    .line 448
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 449
    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 1138
    iput p1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mFrom:I

    .line 1139
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1140
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mStartingScale:F

    .line 1144
    :goto_0
    new-instance v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$8;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$8;-><init>(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    .line 1152
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1153
    if-eqz p2, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->clearAnimation()V

    .line 1157
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1158
    return-void

    .line 1142
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getScaleX(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mStartingScale:F

    goto :goto_0
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->setVisibility(I)V

    .line 391
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->setAlpha(I)V

    .line 397
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$2;-><init>(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 403
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 404
    if-eqz p1, :cond_1

    .line 405
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->clearAnimation()V

    .line 408
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 409
    return-void
.end method


# virtual methods
.method public canChildScroll()Z
    .locals 1

    .prologue
    .line 1216
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->canChildScrollDown()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v0

    goto :goto_0
.end method

.method public canChildScrollDown()Z
    .locals 1

    .prologue
    .line 1195
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->findScrollableChild(Landroid/view/ViewGroup;Z)Z

    move-result v0

    return v0
.end method

.method public canChildScrollUp()Z
    .locals 1

    .prologue
    .line 1199
    const/4 v0, 0x1

    invoke-direct {p0, p0, v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->findScrollableChild(Landroid/view/ViewGroup;Z)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 882
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 887
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .prologue
    .line 865
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .prologue
    .line 859
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 320
    iget v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleViewIndex:I

    if-gez v0, :cond_1

    .line 330
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 322
    .restart local p2    # "i":I
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 324
    iget p2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleViewIndex:I

    goto :goto_0

    .line 325
    :cond_2
    iget v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleViewIndex:I

    if-lt p2, v0, :cond_0

    .line 327
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 1228
    iget v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mOffset:I

    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mRefreshing:Z

    return v0
.end method

.method public isReversed()Z
    .locals 1

    .prologue
    .line 1187
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mIsReversed:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 310
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 313
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->destroyDrawingCache()V

    .line 314
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->clearAnimation()V

    .line 315
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->moveToStart(F)V

    .line 316
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v6, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v4, 0x0

    .line 637
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->ensureTarget()V

    .line 639
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 641
    .local v0, "action":I
    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v5, :cond_0

    if-nez v0, :cond_0

    .line 642
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mReturningToStart:Z

    .line 647
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->canChildScroll()Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v5, :cond_2

    .line 701
    :cond_1
    :goto_0
    return v4

    .line 652
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 701
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mIsBeingDragged:Z

    goto :goto_0

    .line 654
    :pswitch_1
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getOriginalOffsetTop()I

    move-result v5

    iget-object v6, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 655
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v5

    iput v5, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mActivePointerId:I

    .line 656
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 657
    iget v5, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mActivePointerId:I

    invoke-direct {p0, p1, v5}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 658
    .local v1, "initialDownY":F
    cmpl-float v5, v1, v7

    if-eqz v5, :cond_1

    .line 661
    iput v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mInitialDownY:F

    goto :goto_1

    .line 665
    .end local v1    # "initialDownY":F
    :pswitch_2
    iget v5, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mActivePointerId:I

    if-ne v5, v6, :cond_4

    .line 666
    sget-object v5, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 670
    :cond_4
    iget v5, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mActivePointerId:I

    invoke-direct {p0, p1, v5}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 671
    .local v2, "y":F
    cmpl-float v5, v2, v7

    if-eqz v5, :cond_1

    .line 677
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isReversed()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 678
    iget v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float v3, v4, v2

    .line 683
    .local v3, "yDiff":F
    :goto_2
    iget v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    iget-boolean v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez v4, :cond_3

    .line 684
    iget v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mInitialDownY:F

    iget v5, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mInitialMotionY:F

    .line 685
    iput-boolean v8, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 686
    iget-object v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    const/16 v5, 0x4c

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->setAlpha(I)V

    goto :goto_1

    .line 680
    .end local v3    # "yDiff":F
    :cond_5
    iget v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float v3, v2, v4

    .restart local v3    # "yDiff":F
    goto :goto_2

    .line 691
    .end local v2    # "y":F
    .end local v3    # "yDiff":F
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 696
    :pswitch_4
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 697
    iput v6, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_1

    .line 652
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v8

    .line 571
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v7

    .line 572
    .local v7, "height":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getChildCount()I

    move-result v9

    if-nez v9, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    iget-object v9, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v9, :cond_2

    .line 576
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->ensureTarget()V

    .line 578
    :cond_2
    iget-object v9, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 581
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 582
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    .line 583
    .local v2, "childLeft":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getPaddingTop()I

    move-result v3

    .line 584
    .local v3, "childTop":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v9

    sub-int v9, v8, v9

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getPaddingRight()I

    move-result v10

    sub-int v4, v9, v10

    .line 585
    .local v4, "childWidth":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getPaddingTop()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v10

    sub-int v1, v9, v10

    .line 586
    .local v1, "childHeight":I
    add-int v9, v2, v4

    add-int v10, v3, v1

    invoke-virtual {v0, v2, v3, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 587
    iget-object v9, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v9}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->getMeasuredWidth()I

    move-result v6

    .line 588
    .local v6, "circleWidth":I
    iget-object v9, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v9}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->getMeasuredHeight()I

    move-result v5

    .line 589
    .local v5, "circleHeight":I
    iget-object v9, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    div-int/lit8 v10, v8, 0x2

    div-int/lit8 v11, v6, 0x2

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    div-int/lit8 v12, v8, 0x2

    div-int/lit8 v13, v6, 0x2

    add-int/2addr v12, v13

    iget v13, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    add-int/2addr v13, v5

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->layout(IIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 595
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 596
    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v1, :cond_0

    .line 597
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->ensureTarget()V

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v1, :cond_2

    .line 622
    :cond_1
    :goto_0
    return-void

    .line 602
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 603
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 602
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 605
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 604
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 602
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 606
    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    iget v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleWidth:I

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleHeight:I

    .line 607
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 606
    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->measure(II)V

    .line 608
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    if-nez v1, :cond_3

    .line 609
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    .line 610
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getOriginalOffsetTop()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 614
    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 616
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 617
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    if-ne v1, v2, :cond_4

    .line 618
    iput v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleViewIndex:I

    goto :goto_0

    .line 616
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 877
    invoke-virtual {p0, p2, p3, p4}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 871
    invoke-virtual {p0, p2, p3}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 748
    if-lez p3, :cond_4

    iget v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isReversed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 749
    int-to-float v1, p3

    iget v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 750
    iget v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    float-to-int v1, v1

    sub-int v1, p3, v1

    aput v1, p4, v4

    .line 751
    iput v3, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 757
    :goto_0
    iget v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->moveSpinner(F)V

    .line 774
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v1, :cond_1

    if-lez p3, :cond_1

    iget v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    aget v1, p4, v4

    sub-int v1, p3, v1

    .line 775
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 776
    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->setVisibility(I)V

    .line 780
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mParentScrollConsumed:[I

    .line 781
    .local v0, "parentConsumed":[I
    aget v1, p4, v5

    sub-int v1, p2, v1

    aget v2, p4, v4

    sub-int v2, p3, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 782
    aget v1, p4, v5

    aget v2, v0, v5

    add-int/2addr v1, v2

    aput v1, p4, v5

    .line 783
    aget v1, p4, v4

    aget v2, v0, v4

    add-int/2addr v1, v2

    aput v1, p4, v4

    .line 785
    :cond_2
    return-void

    .line 753
    .end local v0    # "parentConsumed":[I
    :cond_3
    iget v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    int-to-float v2, p3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 754
    aput p3, p4, v4

    goto :goto_0

    .line 758
    :cond_4
    if-gez p3, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isReversed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    int-to-float v1, p3

    iget v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 760
    iget v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    float-to-int v1, v1

    sub-int v1, p3, v1

    aput v1, p4, v4

    .line 761
    iput v3, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 767
    :goto_2
    iget v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->moveSpinner(F)V

    goto :goto_1

    .line 763
    :cond_5
    iget v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    int-to-float v2, p3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 764
    aput p3, p4, v4

    goto :goto_2
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 811
    iget-object v5, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    .line 819
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int v6, p5, v0

    .line 820
    .local v6, "dy":I
    if-gez v6, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isReversed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 821
    iget v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 822
    iget v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->moveSpinner(F)V

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    if-lez v6, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 825
    iget v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->moveSpinner(F)V

    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 736
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 738
    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->startNestedScroll(I)Z

    .line 739
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 741
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v0, :cond_0

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 794
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 795
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 799
    iget v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 800
    :cond_1
    iget v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->finishSpinner(F)V

    .line 801
    iput v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 804
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->stopNestedScroll()V

    .line 805
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 985
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 986
    .local v0, "action":I
    const/4 v2, -0x1

    .line 988
    .local v2, "pointerIndex":I
    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v5, :cond_0

    if-nez v0, :cond_0

    .line 989
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mReturningToStart:Z

    .line 994
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->canChildScroll()Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v5, :cond_2

    .line 1067
    :cond_1
    :goto_0
    :pswitch_0
    return v4

    .line 999
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 1067
    :cond_3
    :goto_1
    :pswitch_1
    const/4 v4, 0x1

    goto :goto_0

    .line 1001
    :pswitch_2
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v5

    iput v5, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mActivePointerId:I

    .line 1002
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mIsBeingDragged:Z

    goto :goto_1

    .line 1006
    :pswitch_3
    iget v5, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mActivePointerId:I

    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 1007
    if-gez v2, :cond_4

    .line 1008
    sget-object v5, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1012
    :cond_4
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1016
    .local v3, "y":F
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isReversed()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1017
    iget v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr v4, v3

    mul-float v1, v4, v6

    .line 1021
    .local v1, "overscrollTop":F
    :goto_2
    iget-boolean v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_3

    .line 1023
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->moveSpinner(F)V

    goto :goto_1

    .line 1019
    .end local v1    # "overscrollTop":F
    :cond_5
    iget v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float v4, v3, v4

    mul-float v1, v4, v6

    .restart local v1    # "overscrollTop":F
    goto :goto_2

    .line 1028
    .end local v1    # "overscrollTop":F
    .end local v3    # "y":F
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1029
    if-gez v2, :cond_6

    .line 1030
    sget-object v5, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1033
    :cond_6
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_1

    .line 1038
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1042
    :pswitch_6
    iget v5, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mActivePointerId:I

    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 1043
    if-gez v2, :cond_7

    .line 1044
    sget-object v5, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1048
    :cond_7
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1052
    .restart local v3    # "y":F
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isReversed()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1053
    iget v5, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr v5, v3

    mul-float v1, v5, v6

    .line 1058
    .restart local v1    # "overscrollTop":F
    :goto_3
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1059
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->finishSpinner(F)V

    .line 1060
    const/4 v5, -0x1

    iput v5, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_0

    .line 1055
    .end local v1    # "overscrollTop":F
    :cond_8
    iget v5, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float v5, v3, v5

    mul-float v1, v5, v6

    .restart local v1    # "overscrollTop":F
    goto :goto_3

    .line 999
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 717
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 718
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 723
    :cond_1
    :goto_0
    return-void

    .line 721
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .param p1, "colors"    # [I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->ensureTarget()V

    .line 534
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 535
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .param p1, "colorResIds"    # [I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 517
    .local v2, "res":Landroid/content/res/Resources;
    array-length v3, p1

    new-array v0, v3, [I

    .line 518
    .local v0, "colorRes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 519
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v0, v1

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 522
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 1
    .param p1, "distance"    # I

    .prologue
    .line 565
    int-to-float v0, p1

    iput v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 566
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 833
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 834
    return-void
.end method

.method public setOffset(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    const/high16 v2, 0x42800000    # 64.0f

    .line 1232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mScale:Z

    .line 1233
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->setVisibility(I)V

    .line 1234
    iput p1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mOffset:I

    .line 1235
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1236
    iget v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mOffset:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 1240
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mUsingCustomStart:Z

    .line 1241
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->invalidate()V

    .line 1242
    return-void

    .line 1238
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mOffset:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    goto :goto_0
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    .line 349
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .param p1, "colorRes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 487
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 504
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->setBackgroundColor(I)V

    .line 505
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 506
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1
    .param p1, "colorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 496
    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 1
    .param p1, "scale"    # Z
    .param p2, "end"    # I

    .prologue
    .line 237
    int-to-float v0, p2

    iput v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 238
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mScale:Z

    .line 239
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->invalidate()V

    .line 240
    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 2
    .param p1, "scale"    # Z
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mScale:Z

    .line 216
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->setVisibility(I)V

    .line 219
    int-to-float v0, p3

    iput v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mUsingCustomStart:Z

    .line 221
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->invalidate()V

    .line 222
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 4
    .param p1, "refreshing"    # Z

    .prologue
    const/4 v3, 0x0

    .line 365
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v1, p1, :cond_2

    .line 367
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mRefreshing:Z

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "endTarget":I
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v1, :cond_1

    .line 372
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isReversed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    float-to-int v2, v2

    sub-int v0, v1, v2

    .line 380
    :goto_0
    iget v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int v1, v0, v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 382
    iput-boolean v3, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mNotify:Z

    .line 383
    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 387
    .end local v0    # "endTarget":I
    :goto_1
    return-void

    .line 375
    .restart local v0    # "endTarget":I
    :cond_0
    iget v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    invoke-direct {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getOriginalOffsetTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_0

    .line 378
    :cond_1
    iget v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    float-to-int v0, v1

    goto :goto_0

    .line 385
    .end local v0    # "endTarget":I
    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_1
.end method

.method public setReversed(Z)V
    .locals 0
    .param p1, "mIsReversed"    # Z

    .prologue
    .line 1191
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mIsReversed:Z

    .line 1192
    return-void
.end method

.method public setSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 246
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 250
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    if-nez p1, :cond_1

    .line 251
    const/high16 v1, 0x42600000    # 56.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleWidth:I

    iput v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleHeight:I

    .line 258
    :goto_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    invoke-virtual {v1, p1}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->updateSizes(I)V

    .line 260
    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleView:Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mProgress:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 253
    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleWidth:I

    iput v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mCircleHeight:I

    goto :goto_1
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "axes"    # I

    .prologue
    .line 843
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 849
    return-void
.end method

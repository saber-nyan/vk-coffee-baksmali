.class public Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;
.super Landroid/view/ViewGroup;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$SavedState;,
        Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;,
        Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;,
        Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;,
        Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANCHOR_POINT:F = 1.0f

.field private static final DEFAULT_ATTRS:[I

.field private static final DEFAULT_CLIP_PANEL_FLAG:Z = true

.field private static final DEFAULT_FADE_COLOR:I = -0xe9dbcd

.field private static final DEFAULT_MIN_FLING_VELOCITY:I = 0x190

.field private static final DEFAULT_OVERLAY_FLAG:Z = false

.field private static final DEFAULT_PANEL_HEIGHT:I = 0x44

.field private static final DEFAULT_PARALAX_OFFSET:I = 0x0

.field private static final DEFAULT_SHADOW_HEIGHT:I = 0x4

.field private static DEFAULT_SLIDE_STATE:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;


# instance fields
.field private bgAll:Z

.field private headerPadding:I

.field private mAnchorPoint:F

.field private mCoveredFadeColor:I

.field private final mCoveredFadePaint:Landroid/graphics/Paint;

.field private final mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

.field private mDragView:Landroid/view/View;

.field private mDragViewResId:I

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsScrollableViewHandlingTouch:Z

.field private mIsSlidingUp:Z

.field private mIsTouchEnabled:Z

.field private mIsUnableToDrag:Z

.field private mLastNotDraggingSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

.field private mMainView:Landroid/view/View;

.field private mOverlayContent:Z

.field private mPanelHeight:I

.field private mPanelSlideListener:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;

.field private mParallaxOffset:I

.field private mPrevMotionY:F

.field private mScrollableView:Landroid/view/View;

.field private mScrollableViewResId:I

.field private mSlideOffset:F

.field private mSlideRange:I

.field private mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

.field private mSlideableView:Landroid/view/View;

.field private mTarget:Landroid/support/v7/widget/RecyclerView;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    sput-object v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->DEFAULT_SLIDE_STATE:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100af

    aput v2, v0, v1

    sput-object v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->DEFAULT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const v6, -0xe9dbcd

    iput v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 41
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    .line 42
    const/4 v6, -0x1

    iput v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelHeight:I

    .line 43
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->bgAll:Z

    .line 44
    const/4 v6, -0x1

    iput v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mParallaxOffset:I

    .line 46
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mOverlayContent:Z

    .line 48
    const/4 v6, -0x1

    iput v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragViewResId:I

    .line 63
    sget-object v6, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->DEFAULT_SLIDE_STATE:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    iput-object v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    .line 64
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mLastNotDraggingSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    .line 67
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mAnchorPoint:F

    .line 74
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 76
    const/4 v6, 0x0

    iput v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->headerPadding:I

    .line 82
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 84
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 110
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 111
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    .line 164
    :goto_0
    return-void

    .line 115
    :cond_0
    const/4 v4, -0x1

    .line 116
    .local v4, "mShadowHeight":I
    const/16 v3, 0x190

    .line 117
    .local v3, "mMinFlingVelocity":I
    if-eqz p2, :cond_2

    .line 118
    sget-object v6, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->DEFAULT_ATTRS:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 120
    .local v0, "defAttrs":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    .line 121
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 122
    .local v2, "gravity":I
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->setGravity(I)V

    .line 123
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    .end local v2    # "gravity":I
    :cond_1
    sget-object v6, Lcom/vkcoffee/android/R$styleable;->SlidingUpPanelLayout:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 128
    .local v5, "ta":Landroid/content/res/TypedArray;
    if-eqz v5, :cond_2

    .line 129
    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelHeight:I

    .line 130
    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 131
    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mParallaxOffset:I

    .line 133
    const/4 v6, 0x4

    const/16 v7, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 134
    const/4 v6, 0x3

    const v7, -0xe9dbcd

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 136
    const/4 v6, 0x5

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragViewResId:I

    .line 137
    const/4 v6, 0x6

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mScrollableViewResId:I

    .line 139
    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mOverlayContent:Z

    .line 141
    const/16 v6, 0x9

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mAnchorPoint:F

    .line 143
    invoke-static {}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->values()[Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    move-result-object v6

    const/16 v7, 0xa

    sget-object v8, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->DEFAULT_SLIDE_STATE:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->ordinal()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aget-object v6, v6, v7

    iput-object v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    .line 145
    const/16 v6, 0xb

    iget-boolean v7, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->bgAll:Z

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->bgAll:Z

    .line 146
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    .end local v0    # "defAttrs":Landroid/content/res/TypedArray;
    .end local v5    # "ta":Landroid/content/res/TypedArray;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v1, v6, Landroid/util/DisplayMetrics;->density:F

    .line 151
    .local v1, "density":F
    iget v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelHeight:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 152
    const/high16 v6, 0x42880000    # 68.0f

    mul-float/2addr v6, v1

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelHeight:I

    .line 154
    :cond_3
    iget v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mParallaxOffset:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 155
    const/4 v6, 0x0

    mul-float/2addr v6, v1

    float-to-int v6, v6

    iput v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mParallaxOffset:I

    .line 158
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->setWillNotDraw(Z)V

    .line 160
    const v6, 0x3f4ccccd    # 0.8f

    new-instance v7, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;-><init>(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$1;)V

    invoke-static {p0, v6, v7}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;)Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    .line 161
    iget-object v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    int-to-float v7, v3

    mul-float/2addr v7, v1

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 163
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsTouchEnabled:Z

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    .prologue
    .line 28
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mAnchorPoint:F

    return v0
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;F)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;
    .param p1, "x1"    # F

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    .prologue
    .line 28
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideRange:I

    return v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)Lcom/vkcoffee/android/ui/widget/ViewDragHelper;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    .prologue
    .line 28
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideOffset:F

    return v0
.end method

.method static synthetic access$402(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;
    .param p1, "x1"    # F

    .prologue
    .line 28
    iput p1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideOffset:F

    return p1
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;I)F
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->computeSlideOffset(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->applyParallaxForCurrentSlideOffset()V

    return-void
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    return-object v0
.end method

.method static synthetic access$702(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;)Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;
    .param p1, "x1"    # Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    return-object p1
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->onPanelDragged(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z

    return v0
.end method

.method private applyParallaxForCurrentSlideOffset()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 775
    iget v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mParallaxOffset:I

    if-lez v1, :cond_0

    .line 776
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getCurrentParalaxOffset()I

    move-result v0

    .line 777
    .local v0, "mainViewOffset":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 778
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 783
    .end local v0    # "mainViewOffset":I
    :cond_0
    :goto_0
    return-void

    .line 780
    .restart local v0    # "mainViewOffset":I
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    int-to-float v2, v0

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private canChildScrollUp()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 495
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mTarget:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_0

    .line 504
    :goto_0
    return v3

    .line 497
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v2, v4, :cond_3

    .line 498
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mTarget:Landroid/support/v7/widget/RecyclerView;

    .line 499
    .local v0, "absListView":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 500
    .local v1, "firstVisiblePosition":I
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    if-gtz v1, :cond_1

    .line 501
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 502
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v4

    if-ge v2, v4, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 504
    .end local v0    # "absListView":Landroid/support/v7/widget/RecyclerView;
    .end local v1    # "firstVisiblePosition":I
    :cond_3
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mTarget:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v3

    goto :goto_0
.end method

.method private computePanelTopPosition(F)I
    .locals 4
    .param p1, "slideOffset"    # F

    .prologue
    .line 710
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 711
    .local v1, "slidingViewHeight":I
    :goto_0
    iget v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v0, v2

    .line 713
    .local v0, "slidePixelOffset":I
    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v2, :cond_1

    .line 714
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 715
    :goto_1
    return v2

    .line 710
    .end local v0    # "slidePixelOffset":I
    .end local v1    # "slidingViewHeight":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 715
    .restart local v0    # "slidePixelOffset":I
    .restart local v1    # "slidingViewHeight":I
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelHeight:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    goto :goto_1
.end method

.method private computeSlideOffset(I)F
    .locals 3
    .param p1, "topPosition"    # I

    .prologue
    .line 720
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v0

    .line 724
    .local v0, "topBoundCollapsed":I
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_0

    sub-int v1, v0, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    sub-int v1, p1, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method private getScrollableViewScrollPosition()I
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 685
    iget-object v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mTarget:Landroid/support/v7/widget/RecyclerView;

    if-nez v6, :cond_1

    .line 705
    :cond_0
    :goto_0
    return v5

    .line 688
    :cond_1
    iget-object v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mTarget:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 689
    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mTarget:Landroid/support/v7/widget/RecyclerView;

    .line 690
    .local v4, "lv":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 693
    iget-boolean v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v6, :cond_2

    .line 694
    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 695
    .local v0, "firstChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 697
    .local v1, "firstVisiblePosition":I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_0

    .line 699
    .end local v0    # "firstChild":Landroid/view/View;
    .end local v1    # "firstVisiblePosition":I
    :cond_2
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    .line 700
    .local v3, "lastVisiblePosition":I
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 702
    .local v2, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 322
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 323
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isViewUnder(Landroid/view/View;II)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 667
    if-nez p1, :cond_0

    .line 677
    :goto_0
    return v5

    .line 670
    :cond_0
    new-array v3, v6, [I

    .line 671
    .local v3, "viewLocation":[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 672
    new-array v0, v6, [I

    .line 673
    .local v0, "parentLocation":[I
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getLocationOnScreen([I)V

    .line 674
    aget v6, v0, v5

    add-int v1, v6, p2

    .line 675
    .local v1, "screenX":I
    aget v6, v0, v4

    add-int v2, v6, p3

    .line 676
    .local v2, "screenY":I
    aget v6, v3, v5

    if-lt v1, v6, :cond_1

    aget v6, v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v1, v6, :cond_1

    aget v6, v3, v4

    if-lt v2, v6, :cond_1

    aget v6, v3, v4

    .line 677
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_1

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method private onPanelDragged(I)V
    .locals 4
    .param p1, "newTop"    # I

    .prologue
    .line 786
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    iput-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mLastNotDraggingSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    .line 787
    sget-object v2, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    iput-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    .line 789
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->computeSlideOffset(I)F

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideOffset:F

    .line 790
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->applyParallaxForCurrentSlideOffset()V

    .line 792
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    .line 795
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;

    .line 796
    .local v1, "lp":Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int v0, v2, v3

    .line 798
    .local v0, "defaultHeight":I
    iget v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideOffset:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v2, :cond_2

    .line 800
    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v2

    sub-int v2, p1, v2

    :goto_0
    iput v2, v1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;->height:I

    .line 801
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 806
    :cond_0
    :goto_1
    return-void

    .line 800
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p1

    goto :goto_0

    .line 802
    :cond_2
    iget v2, v1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;->height:I

    if-eq v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v2, :cond_0

    .line 803
    iput v0, v1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;->height:I

    .line 804
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    goto :goto_1
.end method

.method private touchOnTarget(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 509
    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mTarget:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->headerPadding:I

    add-int v1, v4, v5

    .line 511
    .local v1, "dy":I
    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mTarget:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getTop()I

    move-result v4

    add-int v2, v4, v1

    .line 512
    .local v2, "top":I
    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mTarget:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v4

    add-int v0, v4, v1

    .line 513
    .local v0, "bottom":I
    int-to-float v4, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    int-to-float v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    const/4 v3, 0x1

    .line 515
    .end local v0    # "bottom":I
    .end local v1    # "dy":I
    .end local v2    # "top":I
    :cond_0
    return v3
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 858
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 859
    check-cast v7, Landroid/view/ViewGroup;

    .line 860
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 861
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 862
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 864
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 865
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 866
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    .line 867
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    .line 868
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    .line 869
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 868
    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    const/4 v0, 0x1

    .line 874
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :goto_1
    return v0

    .line 864
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 874
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 892
    instance-of v0, p1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 849
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->abort()V

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 810
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    move-result v3

    .line 811
    .local v3, "save":I
    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 814
    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 815
    iget-object v5, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-boolean v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->bgAll:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getHeight()I

    move-result v4

    :goto_0
    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    .line 816
    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 817
    iget v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mCoveredFadeColor:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideOffset:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 818
    iget v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mCoveredFadeColor:I

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    ushr-int/lit8 v0, v4, 0x18

    .line 819
    .local v0, "baseAlpha":I
    int-to-float v4, v0

    iget v5, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideOffset:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 820
    .local v2, "imag":I
    shl-int/lit8 v4, v2, 0x18

    iget v5, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mCoveredFadeColor:I

    const v6, 0xffffff

    and-int/2addr v5, v6

    or-int v1, v4, v5

    .line 821
    .local v1, "color":I
    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 822
    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 825
    .end local v0    # "baseAlpha":I
    .end local v1    # "color":I
    .end local v2    # "imag":I
    :cond_0
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 827
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 828
    return-void

    .line 815
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_0
.end method

.method dispatchOnPanelAnchored(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;->onPanelAnchored(Landroid/view/View;)V

    .line 267
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    .line 268
    return-void
.end method

.method dispatchOnPanelCollapsed(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;->onPanelCollapsed(Landroid/view/View;)V

    .line 260
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    .line 261
    return-void
.end method

.method dispatchOnPanelExpanded(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;->onPanelExpanded(Landroid/view/View;)V

    .line 253
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    .line 254
    return-void
.end method

.method dispatchOnPanelHidden(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;->onPanelHidden(Landroid/view/View;)V

    .line 274
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    .line 275
    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 2
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;

    iget v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    .line 247
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, -0x1

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 589
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 591
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->isTouchEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    .line 592
    :cond_0
    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->cancel()V

    .line 593
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 663
    :goto_0
    return v4

    .line 596
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 598
    .local v3, "y":F
    if-nez v0, :cond_3

    .line 599
    iput-boolean v9, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 600
    iput v3, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPrevMotionY:F

    .line 663
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 601
    :cond_3
    const/4 v6, 0x2

    if-ne v0, v6, :cond_c

    .line 602
    iget v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPrevMotionY:F

    sub-float v1, v3, v6

    .line 603
    .local v1, "dy":F
    iput v3, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPrevMotionY:F

    .line 607
    iget-object v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mScrollableView:Landroid/view/View;

    iget v7, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mInitialMotionX:F

    float-to-int v7, v7

    iget v8, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mInitialMotionY:F

    float-to-int v8, v8

    invoke-direct {p0, v6, v7, v8}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->isViewUnder(Landroid/view/View;II)Z

    move-result v6

    if-nez v6, :cond_4

    .line 608
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 612
    :cond_4
    iget-boolean v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v6, :cond_5

    move v6, v5

    :goto_2
    int-to-float v6, v6

    mul-float/2addr v6, v1

    cmpl-float v6, v6, v10

    if-lez v6, :cond_8

    .line 615
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getScrollableViewScrollPosition()I

    move-result v4

    if-lez v4, :cond_6

    .line 616
    iput-boolean v5, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 617
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    :cond_5
    move v6, v4

    .line 612
    goto :goto_2

    .line 623
    :cond_6
    iget-boolean v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    if-eqz v4, :cond_7

    .line 625
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 626
    .local v2, "up":Landroid/view/MotionEvent;
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 627
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 628
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 632
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 635
    .end local v2    # "up":Landroid/view/MotionEvent;
    :cond_7
    iput-boolean v9, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 636
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 637
    :cond_8
    iget-boolean v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v6, :cond_9

    move v4, v5

    :cond_9
    int-to-float v4, v4

    mul-float/2addr v4, v1

    cmpg-float v4, v4, v10

    if-gez v4, :cond_2

    .line 640
    iget v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v6

    if-gez v4, :cond_a

    .line 641
    iput-boolean v9, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 642
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 648
    :cond_a
    iget-boolean v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->isDragging()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 649
    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->cancel()V

    .line 650
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 653
    :cond_b
    iput-boolean v5, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 654
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 656
    .end local v1    # "dy":F
    :cond_c
    if-ne v0, v5, :cond_2

    iget-boolean v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    if-eqz v4, :cond_2

    .line 659
    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    invoke-virtual {v4, v9}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->setDragState(I)V

    goto/16 :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 880
    new-instance v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 897
    new-instance v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 885
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getCurrentParalaxOffset()I
    .locals 4

    .prologue
    .line 205
    iget v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mParallaxOffset:I

    int-to-float v1, v1

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideOffset:F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 206
    .local v0, "offset":I
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_0

    neg-int v0, v0

    .end local v0    # "offset":I
    :cond_0
    return v0
.end method

.method public isTouchEnabled()Z
    .locals 2

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsTouchEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    sget-object v1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$setDragView$625(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->isTouchEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    sget-object v1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    sget-object v1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    if-eq v0, v1, :cond_0

    .line 227
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mAnchorPoint:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 228
    sget-object v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->setPanelState(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;)V

    goto :goto_0

    .line 230
    :cond_2
    sget-object v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->setPanelState(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 328
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 330
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 334
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 336
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 168
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 169
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragViewResId:I

    if-eq v0, v1, :cond_0

    .line 170
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragViewResId:I

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 172
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mScrollableViewResId:I

    if-eq v0, v1, :cond_1

    .line 173
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mScrollableViewResId:I

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->setScrollableView(Landroid/view/View;)V

    .line 175
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 521
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->touchOnTarget(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->canChildScrollUp()Z

    move-result v8

    if-nez v8, :cond_1

    .line 522
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    .line 523
    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->isDragging()Z

    move-result v8

    if-nez v8, :cond_2

    iget v8, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mInitialMotionY:F

    .line 524
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 570
    :cond_1
    :goto_0
    return v6

    .line 529
    :cond_2
    iget-boolean v8, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    if-eqz v8, :cond_3

    .line 530
    iget-object v7, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->cancel()V

    goto :goto_0

    .line 534
    :cond_3
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 535
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 536
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 538
    .local v5, "y":F
    packed-switch v0, :pswitch_data_0

    .line 570
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    invoke-virtual {v6, p1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 540
    :pswitch_0
    iput-boolean v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    .line 541
    iput v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mInitialMotionX:F

    .line 542
    iput v5, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mInitialMotionY:F

    goto :goto_1

    .line 547
    :pswitch_1
    iget v8, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mInitialMotionX:F

    sub-float v8, v4, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 548
    .local v1, "adx":F
    iget v8, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mInitialMotionY:F

    sub-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 549
    .local v2, "ady":F
    iget-object v8, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    .line 551
    .local v3, "dragSlop":I
    int-to-float v8, v3

    cmpl-float v8, v2, v8

    if-lez v8, :cond_5

    cmpl-float v8, v1, v2

    if-gtz v8, :cond_6

    :cond_5
    iget-object v8, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    iget v9, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mInitialMotionX:F

    float-to-int v9, v9

    iget v10, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mInitialMotionY:F

    float-to-int v10, v10

    invoke-direct {p0, v8, v9, v10}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->isViewUnder(Landroid/view/View;II)Z

    move-result v8

    if-nez v8, :cond_4

    .line 552
    :cond_6
    iget-object v8, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->cancel()V

    .line 553
    iput-boolean v7, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    goto :goto_0

    .line 564
    .end local v1    # "adx":F
    .end local v2    # "ady":F
    .end local v3    # "dragSlop":I
    :pswitch_2
    iget-object v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->isDragging()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 565
    iget-object v6, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    invoke-virtual {v6, p1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    move v6, v7

    .line 566
    goto :goto_0

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v10

    .line 427
    .local v10, "paddingLeft":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v11

    .line 429
    .local v11, "paddingTop":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getChildCount()I

    move-result v2

    .line 431
    .local v2, "childCount":I
    iget-boolean v12, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v12, :cond_0

    .line 432
    sget-object v12, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$1;->$SwitchMap$com$vkontakte$android$ui$widget$SlidingUpPanelLayout$PanelState:[I

    iget-object v13, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v13}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 444
    const/4 v12, 0x0

    iput v12, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideOffset:F

    .line 449
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v2, :cond_6

    .line 450
    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 451
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;

    .line 454
    .local v8, "lp":Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_3

    if-eqz v7, :cond_1

    iget-boolean v12, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v12, :cond_3

    .line 449
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 434
    .end local v0    # "child":Landroid/view/View;
    .end local v7    # "i":I
    .end local v8    # "lp":Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;
    :pswitch_0
    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_0

    .line 437
    :pswitch_1
    iget v12, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mAnchorPoint:F

    iput v12, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_0

    .line 440
    :pswitch_2
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v13

    iget-boolean v12, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v12, :cond_2

    iget v12, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelHeight:I

    :goto_3
    add-int v9, v13, v12

    .line 441
    .local v9, "newTop":I
    invoke-direct {p0, v9}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->computeSlideOffset(I)F

    move-result v12

    iput v12, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_0

    .line 440
    .end local v9    # "newTop":I
    :cond_2
    iget v12, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelHeight:I

    neg-int v12, v12

    goto :goto_3

    .line 458
    .restart local v0    # "child":Landroid/view/View;
    .restart local v7    # "i":I
    .restart local v8    # "lp":Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 459
    .local v3, "childHeight":I
    move v6, v11

    .line 461
    .local v6, "childTop":I
    iget-object v12, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-ne v0, v12, :cond_4

    .line 462
    iget v12, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-direct {p0, v12}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v6

    .line 465
    :cond_4
    iget-boolean v12, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-nez v12, :cond_5

    .line 466
    iget-object v12, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    if-ne v0, v12, :cond_5

    iget-boolean v12, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v12, :cond_5

    .line 467
    iget v12, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-direct {p0, v12}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v12

    iget-object v13, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int v6, v12, v13

    .line 470
    :cond_5
    add-int v1, v6, v3

    .line 471
    .local v1, "childBottom":I
    iget v12, v8, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;->leftMargin:I

    add-int v4, v10, v12

    .line 472
    .local v4, "childLeft":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int v5, v4, v12

    .line 474
    .local v5, "childRight":I
    invoke-virtual {v0, v4, v6, v5, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 477
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBottom":I
    .end local v3    # "childHeight":I
    .end local v4    # "childLeft":I
    .end local v5    # "childRight":I
    .end local v6    # "childTop":I
    .end local v8    # "lp":Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;
    :cond_6
    iget-boolean v12, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v12, :cond_7

    .line 478
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 480
    :cond_7
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->applyParallaxForCurrentSlideOffset()V

    .line 482
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 483
    return-void

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 341
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 342
    .local v13, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 343
    .local v14, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 344
    .local v6, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 346
    .local v7, "heightSize":I
    const/high16 v15, 0x40000000    # 2.0f

    if-eq v13, v15, :cond_0

    .line 347
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string/jumbo v16, "Width must have an exact value or MATCH_PARENT"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 348
    :cond_0
    const/high16 v15, 0x40000000    # 2.0f

    if-eq v6, v15, :cond_1

    .line 349
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string/jumbo v16, "Height must have an exact value or MATCH_PARENT"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 352
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getChildCount()I

    move-result v2

    .line 354
    .local v2, "childCount":I
    const/4 v15, 0x2

    if-eq v2, v15, :cond_2

    .line 355
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string/jumbo v16, "Sliding up panel layout must have exactly 2 children!"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 358
    :cond_2
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    .line 359
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    .line 360
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-nez v15, :cond_3

    .line 361
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 365
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eqz v15, :cond_4

    .line 366
    sget-object v15, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    .line 369
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v15

    sub-int v15, v7, v15

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v16

    sub-int v9, v15, v16

    .line 370
    .local v9, "layoutHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v15

    sub-int v15, v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getPaddingRight()I

    move-result v16

    sub-int v10, v15, v16

    .line 373
    .local v10, "layoutWidth":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_e

    .line 374
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 375
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;

    .line 378
    .local v11, "lp":Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    if-nez v8, :cond_6

    .line 373
    :cond_5
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 382
    :cond_6
    move v5, v9

    .line 383
    .local v5, "height":I
    move v12, v10

    .line 384
    .local v12, "width":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    if-ne v1, v15, :cond_9

    .line 385
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    sget-object v16, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_7

    .line 386
    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int/2addr v5, v15

    .line 389
    :cond_7
    iget v15, v11, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;->leftMargin:I

    iget v0, v11, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;->rightMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    sub-int/2addr v12, v15

    .line 397
    :cond_8
    :goto_2
    iget v15, v11, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;->width:I

    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 398
    const/high16 v15, -0x80000000

    invoke-static {v12, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 406
    .local v4, "childWidthSpec":I
    :goto_3
    iget v15, v11, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;->height:I

    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 407
    const/high16 v15, -0x80000000

    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 414
    .local v3, "childHeightSpec":I
    :goto_4
    invoke-virtual {v1, v4, v3}, Landroid/view/View;->measure(II)V

    .line 416
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-ne v1, v15, :cond_5

    .line 417
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelHeight:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideRange:I

    goto :goto_1

    .line 390
    .end local v3    # "childHeightSpec":I
    .end local v4    # "childWidthSpec":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-ne v1, v15, :cond_8

    .line 393
    iget v15, v11, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;->topMargin:I

    sub-int/2addr v5, v15

    goto :goto_2

    .line 399
    :cond_a
    iget v15, v11, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;->width:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 400
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v12, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .restart local v4    # "childWidthSpec":I
    goto :goto_3

    .line 402
    .end local v4    # "childWidthSpec":I
    :cond_b
    iget v15, v11, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;->width:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .restart local v4    # "childWidthSpec":I
    goto :goto_3

    .line 408
    :cond_c
    iget v15, v11, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;->height:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 409
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .restart local v3    # "childHeightSpec":I
    goto :goto_4

    .line 411
    .end local v3    # "childHeightSpec":I
    :cond_d
    iget v15, v11, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;->height:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .restart local v3    # "childHeightSpec":I
    goto :goto_4

    .line 421
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "childHeightSpec":I
    .end local v4    # "childWidthSpec":I
    .end local v5    # "height":I
    .end local v11    # "lp":Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$LayoutParams;
    .end local v12    # "width":I
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->setMeasuredDimension(II)V

    .line 422
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 915
    move-object v0, p1

    check-cast v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$SavedState;

    .line 916
    .local v0, "ss":Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$SavedState;
    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 917
    iget-object v1, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    :goto_0
    iput-object v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    .line 918
    return-void

    .line 917
    :cond_0
    sget-object v1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->DEFAULT_SLIDE_STATE:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 902
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 904
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$SavedState;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 905
    .local v0, "ss":Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$SavedState;
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    sget-object v3, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    if-eq v2, v3, :cond_0

    .line 906
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    iput-object v2, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    .line 910
    :goto_0
    return-object v0

    .line 908
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mLastNotDraggingSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    iput-object v2, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 487
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 489
    if-eq p2, p4, :cond_0

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 492
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->isTouchEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 576
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 583
    :goto_0
    return v1

    .line 579
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    invoke-virtual {v1, p1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    const/4 v1, 0x1

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 583
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setAllChildrenVisible()V
    .locals 5

    .prologue
    .line 313
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 314
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 315
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 316
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setDragView(Landroid/view/View;)V
    .locals 3
    .param p1, "dragView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 214
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    .line 218
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 220
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 221
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 222
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    invoke-static {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    :cond_1
    return-void
.end method

.method public setGravity(I)V
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    const/16 v1, 0x50

    .line 178
    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "gravity must be set to either top or bottom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z

    .line 182
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->requestLayout()V

    .line 185
    :cond_1
    return-void

    .line 181
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHeaderPadding(I)V
    .locals 0
    .param p1, "headerPadding"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->headerPadding:I

    .line 189
    return-void
.end method

.method public setPanelSlideListener(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;

    .line 211
    return-void
.end method

.method public setPanelState(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;)V
    .locals 5
    .param p1, "state"    # Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 735
    if-eqz p1, :cond_0

    sget-object v1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    if-ne p1, v1, :cond_1

    .line 736
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Panel state cannot be null or DRAGGING."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 738
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    sget-object v2, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    if-ne v1, v2, :cond_4

    .line 768
    :cond_3
    :goto_0
    return-void

    .line 745
    :cond_4
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v1, :cond_5

    .line 746
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    goto :goto_0

    .line 748
    :cond_5
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    sget-object v2, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    if-ne v1, v2, :cond_6

    .line 749
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 750
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->requestLayout()V

    .line 752
    :cond_6
    sget-object v1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$1;->$SwitchMap$com$vkontakte$android$ui$widget$SlidingUpPanelLayout$PanelState:[I

    invoke-virtual {p1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 760
    :pswitch_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v3}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    goto :goto_0

    .line 754
    :pswitch_1
    iget v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mAnchorPoint:F

    invoke-virtual {p0, v1, v3}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    goto :goto_0

    .line 757
    :pswitch_2
    invoke-virtual {p0, v4, v3}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    goto :goto_0

    .line 763
    :pswitch_3
    invoke-direct {p0, v4}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v2

    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelHeight:I

    :goto_1
    add-int v0, v2, v1

    .line 764
    .local v0, "newTop":I
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->computeSlideOffset(I)F

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    goto :goto_0

    .line 763
    .end local v0    # "newTop":I
    :cond_7
    iget v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mPanelHeight:I

    neg-int v1, v1

    goto :goto_1

    .line 752
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setScrollableView(Landroid/view/View;)V
    .locals 0
    .param p1, "scrollableView"    # Landroid/view/View;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mScrollableView:Landroid/view/View;

    .line 241
    return-void
.end method

.method public setTarget(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "mTarget"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mTarget:Landroid/support/v7/widget/RecyclerView;

    .line 682
    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 5
    .param p1, "slideOffset"    # F
    .param p2, "velocity"    # I

    .prologue
    const/4 v1, 0x0

    .line 831
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 842
    :cond_0
    :goto_0
    return v1

    .line 836
    :cond_1
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v0

    .line 837
    .local v0, "panelTop":I
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 838
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->setAllChildrenVisible()V

    .line 839
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 840
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public smoothToBottom()V
    .locals 2

    .prologue
    .line 196
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    .line 197
    return-void
.end method

.method public smoothToTop()V
    .locals 2

    .prologue
    .line 200
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    .line 201
    return-void
.end method

.method updateObscuredViewVisibility()V
    .locals 17

    .prologue
    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getChildCount()I

    move-result v15

    if-nez v15, :cond_0

    .line 310
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v9

    .line 282
    .local v9, "leftBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getPaddingRight()I

    move-result v16

    sub-int v11, v15, v16

    .line 283
    .local v11, "rightBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v13

    .line 284
    .local v13, "topBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v16

    sub-int v2, v15, v16

    .line 289
    .local v2, "bottomBound":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-static {v15}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 290
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 291
    .local v8, "left":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v10

    .line 292
    .local v10, "right":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v12

    .line 293
    .local v12, "top":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 297
    .local v1, "bottom":I
    :goto_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 298
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 299
    .local v5, "clampedChildLeft":I
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 300
    .local v7, "clampedChildTop":I
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v15

    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 301
    .local v6, "clampedChildRight":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v15

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 303
    .local v4, "clampedChildBottom":I
    if-lt v5, v8, :cond_2

    if-lt v7, v12, :cond_2

    if-gt v6, v10, :cond_2

    if-gt v4, v1, :cond_2

    .line 305
    const/4 v14, 0x4

    .line 309
    .local v14, "vis":I
    :goto_2
    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 295
    .end local v1    # "bottom":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "clampedChildBottom":I
    .end local v5    # "clampedChildLeft":I
    .end local v6    # "clampedChildRight":I
    .end local v7    # "clampedChildTop":I
    .end local v8    # "left":I
    .end local v10    # "right":I
    .end local v12    # "top":I
    .end local v14    # "vis":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "bottom":I
    move v12, v1

    .restart local v12    # "top":I
    move v10, v1

    .restart local v10    # "right":I
    move v8, v1

    .restart local v8    # "left":I
    goto :goto_1

    .line 307
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "clampedChildBottom":I
    .restart local v5    # "clampedChildLeft":I
    .restart local v6    # "clampedChildRight":I
    .restart local v7    # "clampedChildTop":I
    :cond_2
    const/4 v14, 0x0

    .restart local v14    # "vis":I
    goto :goto_2
.end method

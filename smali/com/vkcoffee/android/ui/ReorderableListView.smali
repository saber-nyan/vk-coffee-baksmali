.class public Lcom/vkcoffee/android/ui/ReorderableListView;
.super Landroid/widget/ListView;
.source "ReorderableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/ReorderableListView$DragListener;,
        Lcom/vkcoffee/android/ui/ReorderableListView$DraggableChecker;,
        Lcom/vkcoffee/android/ui/ReorderableListView$Swappable;
    }
.end annotation


# static fields
.field private static final sBoundEvaluator:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final INVALID_ID:I

.field private final INVALID_POINTER_ID:I

.field private final MOVE_DURATION:I

.field private final SMOOTH_SCROLL_AMOUNT_AT_EDGE:I

.field private dragListener:Lcom/vkcoffee/android/ui/ReorderableListView$DragListener;

.field private mAboveItemId:J

.field private mActivePointerId:I

.field private mBelowItemId:J

.field private mCellIsMobile:Z

.field private mDownX:I

.field private mDownY:I

.field private mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

.field private mHoverCellCurrentBounds:Landroid/graphics/Rect;

.field private mHoverCellOriginalBounds:Landroid/graphics/Rect;

.field private mIsMobileScrolling:Z

.field private mIsWaitingForScrollFinish:Z

.field private mLastEventY:I

.field private mMobileItemId:J

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mSmoothScrollAmountAtEdge:I

.field private mTotalOffset:I

.field private prevOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 455
    new-instance v0, Lcom/vkcoffee/android/ui/ReorderableListView$5;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/ReorderableListView$5;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/ui/ReorderableListView;->sBoundEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 31
    const/16 v0, 0xf

    iput v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->SMOOTH_SCROLL_AMOUNT_AT_EDGE:I

    .line 32
    const/16 v0, 0x96

    iput v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->MOVE_DURATION:I

    .line 34
    iput v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mLastEventY:I

    .line 36
    iput v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mDownY:I

    .line 37
    iput v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mDownX:I

    .line 39
    iput v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mTotalOffset:I

    .line 41
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mCellIsMobile:Z

    .line 42
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    .line 43
    iput v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mSmoothScrollAmountAtEdge:I

    .line 45
    iput v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->INVALID_ID:I

    .line 46
    iput-wide v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mAboveItemId:J

    .line 47
    iput-wide v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mMobileItemId:J

    .line 48
    iput-wide v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mBelowItemId:J

    .line 54
    iput v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->INVALID_POINTER_ID:I

    .line 55
    iput v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mActivePointerId:I

    .line 57
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mIsWaitingForScrollFinish:Z

    .line 58
    iput v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mScrollState:I

    .line 92
    new-instance v0, Lcom/vkcoffee/android/ui/ReorderableListView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/ReorderableListView$1;-><init>(Lcom/vkcoffee/android/ui/ReorderableListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 525
    new-instance v0, Lcom/vkcoffee/android/ui/ReorderableListView$6;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/ReorderableListView$6;-><init>(Lcom/vkcoffee/android/ui/ReorderableListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 64
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/ReorderableListView;->init(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/16 v0, 0xf

    iput v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->SMOOTH_SCROLL_AMOUNT_AT_EDGE:I

    .line 32
    const/16 v0, 0x96

    iput v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->MOVE_DURATION:I

    .line 34
    iput v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mLastEventY:I

    .line 36
    iput v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mDownY:I

    .line 37
    iput v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mDownX:I

    .line 39
    iput v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mTotalOffset:I

    .line 41
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mCellIsMobile:Z

    .line 42
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    .line 43
    iput v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mSmoothScrollAmountAtEdge:I

    .line 45
    iput v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->INVALID_ID:I

    .line 46
    iput-wide v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mAboveItemId:J

    .line 47
    iput-wide v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mMobileItemId:J

    .line 48
    iput-wide v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mBelowItemId:J

    .line 54
    iput v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->INVALID_POINTER_ID:I

    .line 55
    iput v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mActivePointerId:I

    .line 57
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mIsWaitingForScrollFinish:Z

    .line 58
    iput v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mScrollState:I

    .line 92
    new-instance v0, Lcom/vkcoffee/android/ui/ReorderableListView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/ReorderableListView$1;-><init>(Lcom/vkcoffee/android/ui/ReorderableListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 525
    new-instance v0, Lcom/vkcoffee/android/ui/ReorderableListView$6;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/ReorderableListView$6;-><init>(Lcom/vkcoffee/android/ui/ReorderableListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 74
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/ReorderableListView;->init(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/16 v0, 0xf

    iput v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->SMOOTH_SCROLL_AMOUNT_AT_EDGE:I

    .line 32
    const/16 v0, 0x96

    iput v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->MOVE_DURATION:I

    .line 34
    iput v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mLastEventY:I

    .line 36
    iput v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mDownY:I

    .line 37
    iput v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mDownX:I

    .line 39
    iput v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mTotalOffset:I

    .line 41
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mCellIsMobile:Z

    .line 42
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    .line 43
    iput v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mSmoothScrollAmountAtEdge:I

    .line 45
    iput v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->INVALID_ID:I

    .line 46
    iput-wide v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mAboveItemId:J

    .line 47
    iput-wide v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mMobileItemId:J

    .line 48
    iput-wide v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mBelowItemId:J

    .line 54
    iput v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->INVALID_POINTER_ID:I

    .line 55
    iput v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mActivePointerId:I

    .line 57
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mIsWaitingForScrollFinish:Z

    .line 58
    iput v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mScrollState:I

    .line 92
    new-instance v0, Lcom/vkcoffee/android/ui/ReorderableListView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/ReorderableListView$1;-><init>(Lcom/vkcoffee/android/ui/ReorderableListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 525
    new-instance v0, Lcom/vkcoffee/android/ui/ReorderableListView$6;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/ReorderableListView$6;-><init>(Lcom/vkcoffee/android/ui/ReorderableListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 69
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/ReorderableListView;->init(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/ReorderableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ReorderableListView;

    .prologue
    .line 29
    iget v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mTotalOffset:I

    return v0
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/ui/ReorderableListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ReorderableListView;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mTotalOffset:I

    return p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/ReorderableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ReorderableListView;

    .prologue
    .line 29
    iget v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mDownX:I

    return v0
.end method

.method static synthetic access$1002(Lcom/vkcoffee/android/ui/ReorderableListView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ReorderableListView;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mBelowItemId:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/vkcoffee/android/ui/ReorderableListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ReorderableListView;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mScrollState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/ui/ReorderableListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ReorderableListView;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/vkcoffee/android/ui/ReorderableListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ReorderableListView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->handleMobileCellScroll()V

    return-void
.end method

.method static synthetic access$1400(Lcom/vkcoffee/android/ui/ReorderableListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ReorderableListView;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mIsWaitingForScrollFinish:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/vkcoffee/android/ui/ReorderableListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ReorderableListView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->touchEventsEnded()V

    return-void
.end method

.method static synthetic access$1600(Lcom/vkcoffee/android/ui/ReorderableListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ReorderableListView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->handleCellSwitch()V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/ReorderableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ReorderableListView;

    .prologue
    .line 29
    iget v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mDownY:I

    return v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/ui/ReorderableListView;)J
    .locals 2
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ReorderableListView;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mMobileItemId:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/vkcoffee/android/ui/ReorderableListView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ReorderableListView;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mMobileItemId:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/vkcoffee/android/ui/ReorderableListView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ReorderableListView;
    .param p1, "x1"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/ui/ReorderableListView;Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ReorderableListView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/ReorderableListView;->getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/ui/ReorderableListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ReorderableListView;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mCellIsMobile:Z

    return v0
.end method

.method static synthetic access$602(Lcom/vkcoffee/android/ui/ReorderableListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ReorderableListView;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mCellIsMobile:Z

    return p1
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/ui/ReorderableListView;J)V
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ReorderableListView;
    .param p1, "x1"    # J

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/ReorderableListView;->updateNeighborViewsForID(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/ui/ReorderableListView;)Lcom/vkcoffee/android/ui/ReorderableListView$DragListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ReorderableListView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->dragListener:Lcom/vkcoffee/android/ui/ReorderableListView$DragListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/vkcoffee/android/ui/ReorderableListView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ReorderableListView;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mAboveItemId:J

    return-wide p1
.end method

.method private getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 127
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 128
    .local v2, "h":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 129
    .local v4, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 131
    .local v3, "left":I
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/ReorderableListView;->getBitmapWithBorder(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 134
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    const/16 v6, 0xb4

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 136
    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v5

    add-int v8, v4, v2

    invoke-direct {v6, v3, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    .line 137
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    .line 139
    iget-object v6, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 141
    return-object v1
.end method

.method private getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 161
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 162
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 163
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 164
    .local v0, "bgPaint":Landroid/graphics/Paint;
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 167
    .end local v0    # "bgPaint":Landroid/graphics/Paint;
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 168
    return-object v1
.end method

.method private getBitmapWithBorder(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/ReorderableListView;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 153
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private handleCellSwitch()V
    .locals 22

    .prologue
    .line 302
    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkcoffee/android/ui/ReorderableListView;->mLastEventY:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkcoffee/android/ui/ReorderableListView;->mDownY:I

    sub-int v10, v5, v6

    .line 303
    .local v10, "deltaY":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/ReorderableListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkcoffee/android/ui/ReorderableListView;->mTotalOffset:I

    add-int/2addr v5, v6

    add-int v14, v5, v10

    .line 305
    .local v14, "deltaYTotal":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vkcoffee/android/ui/ReorderableListView;->mBelowItemId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/ReorderableListView;->getViewForID(J)Landroid/view/View;

    move-result-object v13

    .line 306
    .local v13, "belowView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vkcoffee/android/ui/ReorderableListView;->mMobileItemId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/ReorderableListView;->getViewForID(J)Landroid/view/View;

    move-result-object v17

    .line 307
    .local v17, "mobileView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vkcoffee/android/ui/ReorderableListView;->mAboveItemId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/ReorderableListView;->getViewForID(J)Landroid/view/View;

    move-result-object v4

    .line 309
    .local v4, "aboveView":Landroid/view/View;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v14, v5, :cond_2

    const/16 v16, 0x1

    .line 310
    .local v16, "isBelow":Z
    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    if-ge v14, v5, :cond_3

    const/4 v15, 0x1

    .line 312
    .local v15, "isAbove":Z
    :goto_1
    if-nez v16, :cond_0

    if-eqz v15, :cond_1

    .line 313
    :cond_0
    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/vkcoffee/android/ui/ReorderableListView;->mBelowItemId:J

    .line 314
    .local v8, "switchItemID":J
    :goto_2
    if-eqz v16, :cond_5

    move-object/from16 v19, v13

    .line 315
    .local v19, "switchView":Landroid/view/View;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/ReorderableListView;->getPositionForView(Landroid/view/View;)I

    move-result v18

    .line 317
    .local v18, "originalItem":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    instance-of v5, v5, Lcom/vkcoffee/android/ui/ReorderableListView$DraggableChecker;

    if-eqz v5, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/ui/ReorderableListView$DraggableChecker;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/ReorderableListView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/vkcoffee/android/ui/ReorderableListView$DraggableChecker;->canDragToPosition(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 366
    .end local v8    # "switchItemID":J
    .end local v18    # "originalItem":I
    .end local v19    # "switchView":Landroid/view/View;
    :cond_1
    :goto_4
    return-void

    .line 309
    .end local v15    # "isAbove":Z
    .end local v16    # "isBelow":Z
    :cond_2
    const/16 v16, 0x0

    goto :goto_0

    .line 310
    .restart local v16    # "isBelow":Z
    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 313
    .restart local v15    # "isAbove":Z
    :cond_4
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/vkcoffee/android/ui/ReorderableListView;->mAboveItemId:J

    goto :goto_2

    .restart local v8    # "switchItemID":J
    :cond_5
    move-object/from16 v19, v4

    .line 314
    goto :goto_3

    .line 321
    .restart local v18    # "originalItem":I
    .restart local v19    # "switchView":Landroid/view/View;
    :cond_6
    if-nez v19, :cond_7

    .line 322
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vkcoffee/android/ui/ReorderableListView;->mMobileItemId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/ReorderableListView;->updateNeighborViewsForID(J)V

    goto :goto_4

    .line 326
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    .line 327
    .local v12, "adapter":Landroid/widget/ListAdapter;
    instance-of v5, v12, Lcom/vkcoffee/android/ui/ReorderableListView$Swappable;

    if-nez v5, :cond_8

    instance-of v5, v12, Landroid/widget/WrapperListAdapter;

    if-eqz v5, :cond_8

    .line 328
    check-cast v12, Landroid/widget/WrapperListAdapter;

    .end local v12    # "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v12}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    .restart local v12    # "adapter":Landroid/widget/ListAdapter;
    :cond_8
    move-object v5, v12

    .line 330
    check-cast v5, Lcom/vkcoffee/android/ui/ReorderableListView$Swappable;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/ReorderableListView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    move/from16 v0, v18

    invoke-interface {v5, v0, v6}, Lcom/vkcoffee/android/ui/ReorderableListView$Swappable;->swapItems(II)V

    .line 332
    check-cast v12, Landroid/widget/BaseAdapter;

    .end local v12    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v12}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 334
    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkcoffee/android/ui/ReorderableListView;->mLastEventY:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/vkcoffee/android/ui/ReorderableListView;->mDownY:I

    .line 336
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v11

    .line 338
    .local v11, "switchViewStartTop":I
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 339
    const/4 v5, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 341
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vkcoffee/android/ui/ReorderableListView;->mMobileItemId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/ReorderableListView;->updateNeighborViewsForID(J)V

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    .line 344
    .local v7, "observer":Landroid/view/ViewTreeObserver;
    new-instance v5, Lcom/vkcoffee/android/ui/ReorderableListView$2;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/vkcoffee/android/ui/ReorderableListView$2;-><init>(Lcom/vkcoffee/android/ui/ReorderableListView;Landroid/view/ViewTreeObserver;JII)V

    invoke-virtual {v7, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_4
.end method

.method private handleMobileCellScroll()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/ReorderableListView;->handleMobileCellScroll(Landroid/graphics/Rect;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    .line 474
    return-void
.end method

.method private lockOrientation()V
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->prevOrientation:I

    .line 226
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/vkcoffee/android/ViewUtils;->getScreenOrientation(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 227
    return-void
.end method

.method private touchEventsCancelled()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 430
    iget-wide v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mMobileItemId:J

    invoke-virtual {p0, v2, v3}, Lcom/vkcoffee/android/ui/ReorderableListView;->getViewForID(J)Landroid/view/View;

    move-result-object v0

    .line 431
    .local v0, "mobileView":Landroid/view/View;
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mCellIsMobile:Z

    if-eqz v1, :cond_0

    .line 432
    iput-wide v6, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mAboveItemId:J

    .line 433
    iput-wide v6, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mMobileItemId:J

    .line 434
    iput-wide v6, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mBelowItemId:J

    .line 435
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 436
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    .line 437
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->invalidate()V

    .line 439
    :cond_0
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mCellIsMobile:Z

    .line 440
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    .line 441
    const/4 v1, -0x1

    iput v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mActivePointerId:I

    .line 442
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->unlockOrientation()V

    .line 443
    return-void
.end method

.method private touchEventsEnded()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 374
    iget-wide v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mMobileItemId:J

    invoke-virtual {p0, v2, v3}, Lcom/vkcoffee/android/ui/ReorderableListView;->getViewForID(J)Landroid/view/View;

    move-result-object v1

    .line 375
    .local v1, "mobileView":Landroid/view/View;
    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mCellIsMobile:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mIsWaitingForScrollFinish:Z

    if-eqz v2, :cond_3

    .line 376
    :cond_0
    iput-boolean v7, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mCellIsMobile:Z

    .line 377
    iput-boolean v7, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mIsWaitingForScrollFinish:Z

    .line 378
    iput-boolean v7, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    .line 379
    const/4 v2, -0x1

    iput v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mActivePointerId:I

    .line 384
    iget v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mScrollState:I

    if-eqz v2, :cond_2

    .line 385
    iput-boolean v5, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mIsWaitingForScrollFinish:Z

    .line 424
    :cond_1
    :goto_0
    return-void

    .line 389
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 391
    iget-object v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    const-string/jumbo v3, "bounds"

    sget-object v4, Lcom/vkcoffee/android/ui/ReorderableListView;->sBoundEvaluator:Landroid/animation/TypeEvaluator;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    aput-object v6, v5, v7

    invoke-static {v2, v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 393
    .local v0, "hoverViewAnimator":Landroid/animation/ObjectAnimator;
    new-instance v2, Lcom/vkcoffee/android/ui/ReorderableListView$3;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/ui/ReorderableListView$3;-><init>(Lcom/vkcoffee/android/ui/ReorderableListView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 399
    new-instance v2, Lcom/vkcoffee/android/ui/ReorderableListView$4;

    invoke-direct {v2, p0, v1}, Lcom/vkcoffee/android/ui/ReorderableListView$4;-><init>(Lcom/vkcoffee/android/ui/ReorderableListView;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 416
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 417
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->unlockOrientation()V

    .line 418
    iget-object v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->dragListener:Lcom/vkcoffee/android/ui/ReorderableListView$DragListener;

    if-eqz v2, :cond_1

    .line 419
    iget-object v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->dragListener:Lcom/vkcoffee/android/ui/ReorderableListView$DragListener;

    iget-wide v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mMobileItemId:J

    invoke-interface {v2, v4, v5}, Lcom/vkcoffee/android/ui/ReorderableListView$DragListener;->onDragDrop(J)V

    goto :goto_0

    .line 422
    .end local v0    # "hoverViewAnimator":Landroid/animation/ObjectAnimator;
    :cond_3
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->touchEventsCancelled()V

    goto :goto_0
.end method

.method private unlockOrientation()V
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->prevOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 231
    return-void
.end method

.method private updateNeighborViewsForID(J)V
    .locals 7
    .param p1, "itemID"    # J

    .prologue
    const-wide/16 v4, -0x1

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/ReorderableListView;->getPositionForID(J)I

    move-result v0

    .line 179
    .local v0, "position":I
    if-gtz v0, :cond_0

    move-wide v2, v4

    :goto_0
    iput-wide v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mAboveItemId:J

    .line 180
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    :goto_1
    iput-wide v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mBelowItemId:J

    .line 181
    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    goto :goto_1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 219
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 222
    :cond_0
    return-void
.end method

.method public getPositionForID(J)I
    .locals 3
    .param p1, "itemID"    # J

    .prologue
    .line 203
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/ReorderableListView;->getViewForID(J)Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 205
    const/4 v1, -0x1

    .line 207
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/ReorderableListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public getViewForID(J)Landroid/view/View;
    .locals 7
    .param p1, "itemID"    # J

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 188
    .local v0, "firstVisiblePosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 189
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/ReorderableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 190
    .local v5, "v":Landroid/view/View;
    add-int v4, v0, v1

    .line 191
    .local v4, "position":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 192
    .local v2, "id":J
    cmp-long v6, v2, p1

    if-nez v6, :cond_0

    .line 196
    .end local v2    # "id":J
    .end local v4    # "position":I
    .end local v5    # "v":Landroid/view/View;
    :goto_1
    return-object v5

    .line 188
    .restart local v2    # "id":J
    .restart local v4    # "position":I
    .restart local v5    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v2    # "id":J
    .end local v4    # "position":I
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public handleMobileCellScroll(Landroid/graphics/Rect;)Z
    .locals 9
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 482
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->computeVerticalScrollOffset()I

    move-result v4

    .line 483
    .local v4, "offset":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->getHeight()I

    move-result v1

    .line 484
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->computeVerticalScrollExtent()I

    move-result v0

    .line 485
    .local v0, "extent":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->computeVerticalScrollRange()I

    move-result v5

    .line 486
    .local v5, "range":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 487
    .local v3, "hoverViewTop":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 489
    .local v2, "hoverHeight":I
    if-gtz v3, :cond_0

    if-lez v4, :cond_0

    .line 490
    iget v8, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mSmoothScrollAmountAtEdge:I

    neg-int v8, v8

    invoke-virtual {p0, v8, v7}, Lcom/vkcoffee/android/ui/ReorderableListView;->smoothScrollBy(II)V

    .line 499
    :goto_0
    return v6

    .line 494
    :cond_0
    add-int v8, v3, v2

    if-lt v8, v1, :cond_1

    add-int v8, v4, v0

    if-ge v8, v5, :cond_1

    .line 495
    iget v8, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mSmoothScrollAmountAtEdge:I

    invoke-virtual {p0, v8, v7}, Lcom/vkcoffee/android/ui/ReorderableListView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_1
    move v6, v7

    .line 499
    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-super {p0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 79
    iget-object v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/ReorderableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 81
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v1, 0x41700000    # 15.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mSmoothScrollAmountAtEdge:I

    .line 82
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    .line 289
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_1
    return v3

    .line 238
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mDownX:I

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mDownY:I

    .line 240
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mActivePointerId:I

    .line 241
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->lockOrientation()V

    goto :goto_0

    .line 244
    :pswitch_2
    iget v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mActivePointerId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 248
    iget v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 250
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mLastEventY:I

    .line 251
    iget v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mLastEventY:I

    iget v5, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mDownY:I

    sub-int v0, v4, v5

    .line 253
    .local v0, "deltaY":I
    iget-boolean v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mCellIsMobile:Z

    if-eqz v4, :cond_0

    .line 254
    iget-object v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mTotalOffset:I

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 256
    iget-object v4, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 257
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->invalidate()V

    .line 259
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->handleCellSwitch()V

    .line 261
    iput-boolean v3, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    .line 262
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->handleMobileCellScroll()V

    goto :goto_1

    .line 268
    .end local v0    # "deltaY":I
    .end local v2    # "pointerIndex":I
    :pswitch_3
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->touchEventsEnded()V

    goto :goto_0

    .line 271
    :pswitch_4
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->touchEventsCancelled()V

    goto :goto_0

    .line 278
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 280
    .restart local v2    # "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 281
    .local v1, "pointerId":I
    iget v3, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ReorderableListView;->touchEventsEnded()V

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public setDragListener(Lcom/vkcoffee/android/ui/ReorderableListView$DragListener;)V
    .locals 0
    .param p1, "dl"    # Lcom/vkcoffee/android/ui/ReorderableListView$DragListener;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ReorderableListView;->dragListener:Lcom/vkcoffee/android/ui/ReorderableListView$DragListener;

    .line 86
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 448
    return-void
.end method

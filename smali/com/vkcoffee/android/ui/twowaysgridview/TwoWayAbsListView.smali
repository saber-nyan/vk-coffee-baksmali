.class public abstract Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
.super Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;
.source "TwoWayAbsListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecyclerListener;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$WindowRunnnable;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field static final SCROLL_HORIZONTAL:I = 0x1

.field static final SCROLL_VERTICAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TwoWayAbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView",
            "<",
            "Landroid/widget/ListAdapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field private mDensityScale:F

.field mDrawSelectorOnTop:Z

.field private mFlingProfilingStarted:Z

.field private mIsChildViewEnabled:Z

.field final mIsScrap:[Z

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field private mLastX:F

.field private mLastY:F

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionPosition:I

.field mMotionX:I

.field mMotionY:I

.field private mOnScrollListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$OnScrollListener;

.field private mPendingCheckForKeyLongPress:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;

.field protected mPortraitOrientation:Z

.field final mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field mScrollLeft:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollRight:Landroid/view/View;

.field mScrollUp:Landroid/view/View;

.field protected mScrollVertically:Z

.field private mScrollVerticallyLandscape:Z

.field private mScrollVerticallyPortrait:Z

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTouchFrame:Landroid/graphics/Rect;

.field protected mTouchHandler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

.field mTouchMode:I

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 532
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;-><init>(Landroid/content/Context;)V

    .line 199
    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLayoutMode:I

    .line 214
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mDrawSelectorOnTop:Z

    .line 224
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 230
    new-instance v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    .line 235
    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectionLeftPadding:I

    .line 240
    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectionTopPadding:I

    .line 245
    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectionRightPadding:I

    .line 250
    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectionBottomPadding:I

    .line 255
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 260
    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mWidthMeasureSpec:I

    .line 308
    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 319
    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedTop:I

    .line 357
    iput-boolean v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    .line 377
    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mResurrectToPosition:I

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 388
    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLastTouchMode:I

    .line 391
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollProfilingStarted:Z

    .line 394
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFlingProfilingStarted:Z

    .line 436
    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLastScrollState:I

    .line 463
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mIsScrap:[Z

    .line 473
    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mActivePointerId:I

    .line 533
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->initAbsListView()V

    .line 534
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setupScrollInfo()V

    .line 538
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 541
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 542
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 545
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLayoutMode:I

    .line 214
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mDrawSelectorOnTop:Z

    .line 224
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 230
    new-instance v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    .line 235
    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectionLeftPadding:I

    .line 240
    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectionTopPadding:I

    .line 245
    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectionRightPadding:I

    .line 250
    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectionBottomPadding:I

    .line 255
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 260
    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mWidthMeasureSpec:I

    .line 308
    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 319
    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedTop:I

    .line 357
    iput-boolean v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    .line 377
    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mResurrectToPosition:I

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 388
    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLastTouchMode:I

    .line 391
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollProfilingStarted:Z

    .line 394
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFlingProfilingStarted:Z

    .line 436
    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLastScrollState:I

    .line 463
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mIsScrap:[Z

    .line 473
    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mActivePointerId:I

    .line 546
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->initAbsListView()V

    .line 588
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setupScrollInfo()V

    .line 589
    return-void
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    .prologue
    .line 82
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLastTouchMode:I

    return v0
.end method

.method static synthetic access$1802(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLastTouchMode:I

    return p1
.end method

.method static synthetic access$1900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    .prologue
    .line 82
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    .prologue
    .line 82
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLastScrollState:I

    return v0
.end method

.method static synthetic access$2002(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLastScrollState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mOnScrollListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p1, "x1"    # Landroid/view/VelocityTracker;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mPerformClick:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p1, "x1"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mPerformClick:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    .prologue
    .line 82
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$3302(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mActivePointerId:I

    return p1
.end method

.method static synthetic access$3400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->initOrResetVelocityTracker()V

    return-void
.end method

.method static synthetic access$3500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->detachViewsFromParent(II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    .prologue
    .line 82
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$3800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->detachViewsFromParent(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Landroid/view/View;IJ)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mPendingCheckForLongPress:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$602(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p1, "x1"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mPendingCheckForLongPress:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;

    return-object p1
.end method

.method private checkScrap(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3058
    .local p1, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p1, :cond_1

    .line 3059
    const/4 v2, 0x1

    .line 3078
    :cond_0
    return v2

    .line 3061
    :cond_1
    const/4 v2, 0x1

    .line 3063
    .local v2, "result":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3064
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3065
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3066
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3067
    const/4 v2, 0x0

    .line 3068
    const-string/jumbo v4, "Consistency"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TwoWayAbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has a view in its scrap heap still attached to a parent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    :cond_2
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 3072
    const/4 v2, 0x0

    .line 3073
    const-string/jumbo v4, "Consistency"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TwoWayAbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has a view in its scrap heap that is also a direct child: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1658
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1659
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1660
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 1661
    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLastX:F

    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLastY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1663
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1664
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1666
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 2559
    sparse-switch p2, :sswitch_data_0

    .line 2592
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2561
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 2562
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 2563
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 2564
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 2596
    .local v1, "dY":I
    :goto_0
    sub-int v2, v0, v4

    .line 2597
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 2598
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 2567
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 2568
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 2569
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 2570
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 2571
    .restart local v1    # "dY":I
    goto :goto_0

    .line 2573
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 2574
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 2575
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 2576
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 2577
    .restart local v1    # "dY":I
    goto :goto_0

    .line 2579
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 2580
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 2581
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 2582
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 2583
    .restart local v1    # "dY":I
    goto :goto_0

    .line 2586
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 2587
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 2588
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 2589
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 2590
    .restart local v1    # "dY":I
    goto :goto_0

    .line 2559
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAbsListView()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 593
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setClickable(Z)V

    .line 594
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setFocusableInTouchMode(Z)V

    .line 595
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setWillNotDraw(Z)V

    .line 596
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 597
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setScrollingCacheEnabled(Z)V

    .line 599
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 600
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchSlop:I

    .line 601
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMinimumVelocity:I

    .line 602
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMaximumVelocity:I

    .line 603
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mDensityScale:F

    .line 604
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mPortraitOrientation:Z

    .line 606
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVertically:Z

    .line 616
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 5673
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 5674
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5678
    :goto_0
    return-void

    .line 5676
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private orientationChanged()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 636
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mPortraitOrientation:Z

    .line 637
    .local v1, "temp":Z
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mPortraitOrientation:Z

    .line 640
    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mPortraitOrientation:Z

    if-eq v1, v2, :cond_2

    move v0, v3

    .line 641
    .local v0, "result":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 642
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setupScrollInfo()V

    .line 643
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->scrapActiveViews()V

    .line 646
    :cond_0
    return v0

    .end local v0    # "result":Z
    :cond_1
    move v2, v4

    .line 637
    goto :goto_0

    :cond_2
    move v0, v4

    .line 640
    goto :goto_1
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    .line 1958
    const/4 v6, 0x0

    .line 1960
    .local v6, "handled":Z
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mOnItemLongClickListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1961
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mOnItemLongClickListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1964
    :cond_0
    if-nez v6, :cond_1

    .line 1965
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1966
    invoke-super {p0, p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1968
    :cond_1
    if-eqz v6, :cond_2

    .line 1969
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->performHapticFeedback(I)Z

    .line 1971
    :cond_2
    return v6
.end method

.method private positionSelector(IIII)V
    .locals 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1551
    return-void
.end method

.method private setupScrollInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 620
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mPortraitOrientation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVerticallyPortrait:Z

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVertically:Z

    .line 621
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v0, :cond_1

    .line 622
    new-instance v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchHandler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    .line 623
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 624
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setHorizontalScrollBarEnabled(Z)V

    .line 625
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setIsVertical(Z)V

    .line 633
    :goto_1
    return-void

    .line 620
    :cond_0
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVerticallyLandscape:Z

    goto :goto_0

    .line 627
    :cond_1
    new-instance v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchHandler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    .line 628
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 629
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setHorizontalScrollBarEnabled(Z)V

    .line 630
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setIsVertical(Z)V

    goto :goto_1
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 816
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 818
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2164
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v2

    .line 2165
    .local v2, "count":I
    iget v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    .line 2166
    .local v3, "firstPosition":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2168
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 2179
    :cond_0
    return-void

    .line 2172
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 2173
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2174
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2175
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2177
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2172
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected checkConsistency(I)Z
    .locals 10
    .param p1, "consistency"    # I

    .prologue
    .line 3023
    const/4 v4, 0x1

    .line 3025
    .local v4, "result":Z
    const/4 v1, 0x1

    .line 3029
    .local v1, "checkLayout":Z
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    invoke-static {v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->access$900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;)[Landroid/view/View;

    move-result-object v0

    .line 3030
    .local v0, "activeViews":[Landroid/view/View;
    array-length v2, v0

    .line 3031
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 3032
    aget-object v7, v0, v3

    if-eqz v7, :cond_0

    .line 3033
    const/4 v4, 0x0

    .line 3034
    const-string/jumbo v7, "Consistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AbsListView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " has a view in its active recycler: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3041
    :cond_1
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    invoke-static {v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->access$1000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;)Ljava/util/ArrayList;

    move-result-object v5

    .line 3042
    .local v5, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3043
    const/4 v4, 0x0

    .line 3045
    :cond_2
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    invoke-static {v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->access$1100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;)[Ljava/util/ArrayList;

    move-result-object v6

    .line 3046
    .local v6, "scraps":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v2, v6

    .line 3047
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    .line 3048
    aget-object v7, v6, v3

    invoke-direct {p0, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3049
    const/4 v4, 0x0

    .line 3047
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3054
    :cond_4
    return v4
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2879
    instance-of v0, p1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1152
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v0

    .line 1153
    .local v0, "count":I
    if-lez v0, :cond_3

    iget-boolean v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVertically:Z

    if-nez v7, :cond_3

    .line 1154
    iget-boolean v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 1155
    mul-int/lit8 v1, v0, 0x64

    .line 1157
    .local v1, "extent":I
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1158
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1159
    .local v2, "left":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1160
    .local v5, "width":I
    if-lez v5, :cond_0

    .line 1161
    mul-int/lit8 v6, v2, 0x64

    div-int/2addr v6, v5

    add-int/2addr v1, v6

    .line 1164
    :cond_0
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1165
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1166
    .local v3, "right":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1167
    if-lez v5, :cond_1

    .line 1168
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getWidth()I

    move-result v6

    sub-int v6, v3, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v5

    sub-int/2addr v1, v6

    .line 1176
    .end local v1    # "extent":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "width":I
    :cond_1
    :goto_0
    return v1

    .line 1173
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v6

    .line 1176
    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1181
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    .line 1182
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v0

    .line 1183
    .local v0, "childCount":I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    iget-boolean v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVertically:Z

    if-nez v8, :cond_0

    .line 1184
    iget-boolean v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 1185
    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1186
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 1187
    .local v4, "left":I
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1188
    .local v6, "width":I
    if-lez v6, :cond_0

    .line 1189
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v6

    sub-int/2addr v8, v9

    .line 1190
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    .line 1189
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1205
    .end local v4    # "left":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "width":I
    :cond_0
    :goto_0
    return v7

    .line 1194
    :cond_1
    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    .line 1195
    .local v1, "count":I
    if-nez v2, :cond_2

    .line 1196
    const/4 v3, 0x0

    .line 1202
    .local v3, "index":I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v3

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 1197
    .end local v3    # "index":I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 1198
    move v3, v1

    .restart local v3    # "index":I
    goto :goto_1

    .line 1200
    .end local v3    # "index":I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v3, v2, v7

    .restart local v3    # "index":I
    goto :goto_1
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .prologue
    .line 1211
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v1, :cond_0

    .line 1212
    const/4 v0, 0x0

    .line 1218
    .local v0, "result":I
    :goto_0
    return v0

    .line 1213
    .end local v0    # "result":I
    :cond_0
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 1214
    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .restart local v0    # "result":I
    goto :goto_0

    .line 1216
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1081
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v1

    .line 1082
    .local v1, "count":I
    if-lez v1, :cond_3

    iget-boolean v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v7, :cond_3

    .line 1083
    iget-boolean v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 1084
    mul-int/lit8 v2, v1, 0x64

    .line 1086
    .local v2, "extent":I
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1087
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1088
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1089
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 1090
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 1093
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1094
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1095
    .local v0, "bottom":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1096
    if-lez v3, :cond_1

    .line 1097
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 1105
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 1102
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 1105
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1110
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    .line 1111
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v0

    .line 1112
    .local v0, "childCount":I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    iget-boolean v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v8, :cond_0

    .line 1113
    iget-boolean v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 1114
    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1115
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1116
    .local v5, "top":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1117
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 1118
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    .line 1119
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    .line 1118
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1134
    .end local v3    # "height":I
    .end local v5    # "top":I
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return v7

    .line 1123
    :cond_1
    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    .line 1124
    .local v1, "count":I
    if-nez v2, :cond_2

    .line 1125
    const/4 v4, 0x0

    .line 1131
    .local v4, "index":I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 1126
    .end local v4    # "index":I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 1127
    move v4, v1

    .restart local v4    # "index":I
    goto :goto_1

    .line 1129
    .end local v4    # "index":I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4    # "index":I
    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 1140
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVertically:Z

    if-nez v1, :cond_0

    .line 1141
    const/4 v0, 0x0

    .line 1147
    .local v0, "result":I
    :goto_0
    return v0

    .line 1142
    .end local v0    # "result":I
    :cond_0
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 1143
    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .restart local v0    # "result":I
    goto :goto_0

    .line 1145
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1867
    new-instance v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1555
    const/4 v1, 0x0

    .line 1569
    .local v1, "saveCount":I
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mDrawSelectorOnTop:Z

    .line 1570
    .local v0, "drawSelectorOnTop":Z
    if-nez v0, :cond_0

    .line 1571
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1574
    :cond_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1576
    if-eqz v0, :cond_1

    .line 1577
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1617
    :cond_1
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 2036
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1769
    invoke-super {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->drawableStateChanged()V

    .line 1770
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1773
    :cond_0
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    const/4 v2, -0x1

    .line 2339
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v0

    .line 2340
    .local v0, "childCount":I
    if-nez v0, :cond_1

    move v1, v2

    .line 2345
    :cond_0
    :goto_0
    return v1

    .line 2344
    :cond_1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->findMotionRowX(I)I

    move-result v1

    .line 2345
    .local v1, "motionRow":I
    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method findClosestMotionRowY(I)I
    .locals 3
    .param p1, "y"    # I

    .prologue
    const/4 v2, -0x1

    .line 2315
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v0

    .line 2316
    .local v0, "childCount":I
    if-nez v0, :cond_1

    move v1, v2

    .line 2321
    :cond_0
    :goto_0
    return v1

    .line 2320
    :cond_1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->findMotionRowY(I)I

    move-result v1

    .line 2321
    .local v1, "motionRow":I
    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRowX(I)I
.end method

.method abstract findMotionRowY(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2869
    new-instance v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2874
    new-instance v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 8

    .prologue
    .line 1241
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v1

    .line 1242
    .local v1, "count":I
    invoke-super {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 1243
    .local v2, "fadeEdge":F
    if-eqz v1, :cond_0

    iget-boolean v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVertically:Z

    if-nez v6, :cond_1

    .line 1254
    .end local v2    # "fadeEdge":F
    :cond_0
    :goto_0
    return v2

    .line 1246
    .restart local v2    # "fadeEdge":F
    :cond_1
    iget v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_2

    .line 1247
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1250
    :cond_2
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1251
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHeight()I

    move-result v4

    .line 1252
    .local v4, "height":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getVerticalFadingEdgeLength()I

    move-result v6

    int-to-float v3, v6

    .line 1253
    .local v3, "fadeLength":F
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getPaddingBottom()I

    move-result v5

    .line 1254
    .local v5, "paddingBottom":I
    sub-int v6, v4, v5

    if-le v0, v6, :cond_0

    sub-int v6, v0, v4

    add-int/2addr v6, v5

    int-to-float v6, v6

    div-float v2, v6, v3

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1

    .prologue
    .line 2988
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mCacheColorHint:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 804
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 807
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 808
    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 813
    :goto_0
    return-void

    .line 811
    :cond_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 2257
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 2247
    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 6

    .prologue
    .line 1261
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v0

    .line 1262
    .local v0, "count":I
    invoke-super {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getLeftFadingEdgeStrength()F

    move-result v1

    .line 1263
    .local v1, "fadeEdge":F
    if-eqz v0, :cond_0

    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v5, :cond_1

    .line 1273
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 1266
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    if-lez v5, :cond_2

    .line 1267
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1270
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1271
    .local v3, "left":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    .line 1272
    .local v2, "fadeLength":F
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getPaddingLeft()I

    move-result v4

    .line 1273
    .local v4, "paddingLeft":I
    if-ge v3, v4, :cond_0

    sub-int v5, v3, v4

    neg-int v5, v5

    int-to-float v5, v5

    div-float v1, v5, v2

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 8

    .prologue
    .line 1279
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v0

    .line 1280
    .local v0, "count":I
    invoke-super {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getRightFadingEdgeStrength()F

    move-result v1

    .line 1281
    .local v1, "fadeEdge":F
    if-eqz v0, :cond_0

    iget-boolean v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v6, :cond_1

    .line 1292
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 1284
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_2

    .line 1285
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1288
    :cond_2
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v4

    .line 1289
    .local v4, "right":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getWidth()I

    move-result v5

    .line 1290
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v2, v6

    .line 1291
    .local v2, "fadeLength":F
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getPaddingRight()I

    move-result v3

    .line 1292
    .local v3, "paddingRight":I
    sub-int v6, v5, v3

    if-le v4, v6, :cond_0

    sub-int v6, v4, v5

    add-int/2addr v6, v3

    int-to-float v6, v6

    div-float v1, v6, v2

    goto :goto_0
.end method

.method public getScrollDirectionLandscape()I
    .locals 1

    .prologue
    .line 2956
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVerticallyLandscape:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getScrollDirectionPortrait()I
    .locals 1

    .prologue
    .line 2929
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVerticallyPortrait:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1426
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1427
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedPosition:I

    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1429
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 2961
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mCacheColorHint:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 6

    .prologue
    .line 1223
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v0

    .line 1224
    .local v0, "count":I
    invoke-super {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 1225
    .local v1, "fadeEdge":F
    if-eqz v0, :cond_0

    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVertically:Z

    if-nez v5, :cond_1

    .line 1235
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 1228
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    if-lez v5, :cond_2

    .line 1229
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1232
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1233
    .local v4, "top":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    .line 1234
    .local v2, "fadeLength":F
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getPaddingTop()I

    move-result v3

    .line 1235
    .local v3, "paddintTop":I
    if-ge v4, v3, :cond_0

    sub-int v5, v4, v3

    neg-int v5, v5

    int-to-float v5, v5

    div-float v1, v5, v2

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 2902
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x5

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 2377
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    .line 2378
    .local v0, "count":I
    if-lez v0, :cond_b

    .line 2385
    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mNeedSync:Z

    if-eqz v5, :cond_3

    .line 2387
    iput-boolean v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mNeedSync:Z

    .line 2389
    iget v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTranscriptMode:I

    if-eq v5, v10, :cond_0

    iget v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTranscriptMode:I

    if-ne v5, v4, :cond_2

    iget v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    .line 2391
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mOldItemCount:I

    if-lt v5, v6, :cond_2

    .line 2392
    :cond_0
    const/4 v4, 0x3

    iput v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLayoutMode:I

    .line 2488
    :cond_1
    :goto_0
    return-void

    .line 2396
    :cond_2
    iget v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSyncMode:I

    packed-switch v5, :pswitch_data_0

    .line 2444
    :cond_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isInTouchMode()Z

    move-result v5

    if-nez v5, :cond_a

    .line 2446
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getSelectedItemPosition()I

    move-result v1

    .line 2449
    .local v1, "newPos":I
    if-lt v1, v0, :cond_4

    .line 2450
    add-int/lit8 v1, v0, -0x1

    .line 2452
    :cond_4
    if-gez v1, :cond_5

    .line 2453
    const/4 v1, 0x0

    .line 2457
    :cond_5
    invoke-virtual {p0, v1, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2459
    .local v2, "selectablePos":I
    if-ltz v2, :cond_9

    .line 2460
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 2398
    .end local v1    # "newPos":I
    .end local v2    # "selectablePos":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2403
    iput v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLayoutMode:I

    .line 2404
    iget v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSyncPosition:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSyncPosition:I

    goto :goto_0

    .line 2410
    :cond_6
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->findSyncPosition()I

    move-result v1

    .line 2411
    .restart local v1    # "newPos":I
    if-ltz v1, :cond_3

    .line 2413
    invoke-virtual {p0, v1, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2414
    .restart local v2    # "selectablePos":I
    if-ne v2, v1, :cond_3

    .line 2416
    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSyncPosition:I

    .line 2417
    iget-boolean v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mIsVertical:Z

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHeight()I

    move-result v3

    .line 2418
    .local v3, "size":I
    :goto_1
    iget-wide v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSyncSize:J

    int-to-long v6, v3

    cmp-long v4, v4, v6

    if-nez v4, :cond_8

    .line 2421
    iput v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLayoutMode:I

    .line 2429
    :goto_2
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 2417
    .end local v3    # "size":I
    :cond_7
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getWidth()I

    move-result v3

    goto :goto_1

    .line 2425
    .restart local v3    # "size":I
    :cond_8
    iput v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLayoutMode:I

    goto :goto_2

    .line 2437
    .end local v1    # "newPos":I
    .end local v2    # "selectablePos":I
    .end local v3    # "size":I
    :pswitch_1
    iput v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLayoutMode:I

    .line 2438
    iget v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSyncPosition:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSyncPosition:I

    goto :goto_0

    .line 2464
    .restart local v1    # "newPos":I
    .restart local v2    # "selectablePos":I
    :cond_9
    invoke-virtual {p0, v1, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2465
    if-ltz v2, :cond_b

    .line 2466
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 2473
    .end local v1    # "newPos":I
    .end local v2    # "selectablePos":I
    :cond_a
    iget v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mResurrectToPosition:I

    if-gez v5, :cond_1

    .line 2481
    :cond_b
    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_c

    const/4 v4, 0x3

    :cond_c
    iput v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLayoutMode:I

    .line 2482
    iput v9, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedPosition:I

    .line 2483
    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedRowId:J

    .line 2484
    iput v9, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mNextSelectedPosition:I

    .line 2485
    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mNextSelectedRowId:J

    .line 2486
    iput-boolean v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mNeedSync:Z

    .line 2487
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    .line 2396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 2271
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 2272
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2273
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedPosition:I

    iput v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mResurrectToPosition:I

    .line 2275
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 2276
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mResurrectToPosition:I

    .line 2278
    :cond_1
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setSelectedPositionInt(I)V

    .line 2279
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setNextSelectedPositionInt(I)V

    .line 2280
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedTop:I

    .line 2281
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2283
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 2352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mDataChanged:Z

    .line 2353
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->rememberSyncState()V

    .line 2354
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->requestLayout()V

    .line 2355
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->invalidate()V

    .line 2356
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 737
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mOnScrollListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mOnScrollListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$OnScrollListener;

    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$OnScrollListener;->onScroll(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;III)V

    .line 740
    :cond_0
    return-void
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 717
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 828
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1721
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1758
    :cond_0
    :goto_0
    return-void

    .line 1725
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1726
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1727
    .local v3, "selectorRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    if-eqz v3, :cond_0

    .line 1728
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1730
    iget v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedPosition:I

    iget v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1732
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 1733
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1736
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1738
    :cond_3
    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setPressed(Z)V

    .line 1740
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isLongClickable()Z

    move-result v1

    .line 1741
    .local v1, "longClickable":Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1742
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 1743
    if-eqz v1, :cond_6

    .line 1744
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 1745
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    .line 1744
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1750
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 1751
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mPendingCheckForKeyLongPress:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 1752
    new-instance v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$1;)V

    iput-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mPendingCheckForKeyLongPress:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;

    .line 1754
    :cond_5
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mPendingCheckForKeyLongPress:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1755
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mPendingCheckForKeyLongPress:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1747
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 1355
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    const/4 v3, 0x0

    .line 1489
    aput-boolean v3, p2, v3

    .line 1492
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1495
    .local v1, "scrapView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1501
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1508
    .local v0, "child":Landroid/view/View;
    if-eq v0, v1, :cond_1

    .line 1509
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1510
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 1511
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1532
    :cond_0
    :goto_0
    return-object v0

    .line 1518
    :cond_1
    const/4 v2, 0x1

    aput-boolean v2, p2, v3

    .line 1519
    invoke-virtual {v0}, Landroid/view/View;->onFinishTemporaryDetach()V

    goto :goto_0

    .line 1522
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1523
    .restart local v0    # "child":Landroid/view/View;
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 1524
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1816
    invoke-super {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->onAttachedToWindow()V

    .line 1818
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1819
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1820
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1826
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .prologue
    .line 1778
    iget-boolean v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 1780
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1806
    :cond_0
    :goto_0
    return-object v3

    .line 1786
    :cond_1
    sget-object v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1791
    .local v1, "enabledState":I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1792
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 1793
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 1794
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 1795
    move v0, v2

    .line 1801
    :cond_2
    if-ltz v0, :cond_0

    .line 1802
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1793
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1830
    invoke-super {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->onDetachedFromWindow()V

    .line 1836
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->clear()V

    .line 1838
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1839
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1840
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1847
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1049
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1050
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1051
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->resurrectSelection()Z

    .line 1053
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2156
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchHandler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2004
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 2009
    sparse-switch p1, :sswitch_data_0

    .line 2029
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 2012
    :sswitch_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2015
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2017
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2019
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedPosition:I

    iget v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2020
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2021
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 2022
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 2024
    :cond_2
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setPressed(Z)V

    goto :goto_0

    .line 2009
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1317
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->orientationChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1318
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setupScrollInfo()V

    .line 1320
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->onLayout(ZIIII)V

    .line 1321
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mInLayout:Z

    .line 1322
    if-eqz p1, :cond_2

    .line 1323
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v0

    .line 1324
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1325
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 1324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1327
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->markChildrenDirty()V

    .line 1330
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->layoutChildren()V

    .line 1331
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mInLayout:Z

    .line 1332
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1299
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->orientationChanged()Z

    .line 1301
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1302
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->useDefaultSelector()V

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 1305
    .local v0, "listPadding":Landroid/graphics/Rect;
    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectionLeftPadding:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1306
    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectionTopPadding:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1307
    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectionRightPadding:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1308
    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectionBottomPadding:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1309
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 974
    move-object v0, p1

    check-cast v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;

    .line 976
    .local v0, "ss":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;
    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 977
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mDataChanged:Z

    .line 979
    iget v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->height:I

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSyncSize:J

    .line 981
    iget-wide v2, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->selectedId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1

    .line 982
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mNeedSync:Z

    .line 983
    iget-wide v2, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSyncRowId:J

    .line 984
    iget v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSyncPosition:I

    .line 985
    iget v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSpecificTop:I

    .line 986
    const/4 v1, 0x0

    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSyncMode:I

    .line 1000
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->requestLayout()V

    .line 1001
    return-void

    .line 987
    :cond_1
    iget-wide v2, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->firstId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    .line 988
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setSelectedPositionInt(I)V

    .line 990
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setNextSelectedPositionInt(I)V

    .line 991
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mNeedSync:Z

    .line 992
    iget-wide v2, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSyncRowId:J

    .line 993
    iget v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSyncPosition:I

    .line 994
    iget v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSpecificTop:I

    .line 995
    iput v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v6, 0x0

    .line 926
    invoke-super {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    .line 928
    .local v4, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;

    invoke-direct {v1, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 930
    .local v1, "ss":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v0, 0x1

    .line 931
    .local v0, "haveChildren":Z
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getSelectedItemId()J

    move-result-wide v2

    .line 932
    .local v2, "selectedId":J
    iput-wide v2, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->selectedId:J

    .line 933
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHeight()I

    move-result v7

    iput v7, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->height:I

    .line 935
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-ltz v7, :cond_1

    .line 937
    iget v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedTop:I

    iput v6, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->viewTop:I

    .line 938
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getSelectedItemPosition()I

    move-result v6

    iput v6, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->position:I

    .line 939
    iput-wide v10, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->firstId:J

    .line 969
    :goto_1
    return-object v1

    .end local v0    # "haveChildren":Z
    .end local v2    # "selectedId":J
    :cond_0
    move v0, v6

    .line 930
    goto :goto_0

    .line 941
    .restart local v0    # "haveChildren":Z
    .restart local v2    # "selectedId":J
    :cond_1
    if-eqz v0, :cond_3

    .line 943
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 944
    .local v5, "v":Landroid/view/View;
    iget-boolean v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v6, :cond_2

    .line 945
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->viewTop:I

    .line 949
    :goto_2
    iget v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    iput v6, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->position:I

    .line 950
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->firstId:J

    goto :goto_1

    .line 947
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->viewTop:I

    goto :goto_2

    .line 952
    .end local v5    # "v":Landroid/view/View;
    :cond_3
    iput v6, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->viewTop:I

    .line 953
    iput-wide v10, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->firstId:J

    .line 954
    iput v6, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$SavedState;->position:I

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1621
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mDataChanged:Z

    .line 1623
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->rememberSyncState()V

    .line 1629
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLastX:F

    .line 2141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLastY:F

    .line 2142
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchHandler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 1
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchHandler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->onTouchModeChanged(Z)V

    .line 2136
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 2200
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->onWindowFocusChanged(Z)V

    .line 2201
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchHandler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->onWindowFocusChanged(Z)V

    .line 2202
    return-void
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2047
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2048
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 2049
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2050
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2053
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v1

    .line 2054
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 2055
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2056
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2057
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2058
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2059
    iget v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 2063
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v4

    .line 2054
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2063
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2076
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->pointToPosition(II)I

    move-result v0

    .line 2077
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 2078
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 2080
    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0
.end method

.method positionSelector(Landroid/view/View;)V
    .locals 6
    .param p1, "sel"    # Landroid/view/View;

    .prologue
    .line 1536
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1537
    .local v1, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1538
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->positionSelector(IIII)V

    .line 1541
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mIsChildViewEnabled:Z

    .line 1542
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1543
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mIsChildViewEnabled:Z

    .line 1544
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->refreshDrawableState()V

    .line 1546
    :cond_0
    return-void

    .line 1543
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2999
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v1

    .line 3000
    .local v1, "childCount":I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->access$800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecyclerListener;

    move-result-object v3

    .line 3003
    .local v3, "listener":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3004
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3005
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;

    .line 3007
    .local v4, "lp":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    iget v6, v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3008
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3009
    if-eqz v3, :cond_0

    .line 3011
    invoke-interface {v3, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 3003
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3015
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 3016
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->removeAllViewsInLayout()V

    .line 3017
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 2291
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedPosition:I

    .line 2292
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 2293
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mResurrectToPosition:I

    .line 2295
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2296
    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2297
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 2190
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2191
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mOnScrollListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2192
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mOnScrollListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;I)V

    .line 2193
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLastScrollState:I

    .line 2196
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1057
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1058
    invoke-super {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->requestLayout()V

    .line 1060
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 846
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 847
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->resetList()V

    .line 848
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->requestLayout()V

    .line 849
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->invalidate()V

    .line 851
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1066
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->removeAllViewsInLayout()V

    .line 1067
    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    .line 1068
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mDataChanged:Z

    .line 1069
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mNeedSync:Z

    .line 1070
    iput v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mOldSelectedPosition:I

    .line 1071
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mOldSelectedRowId:J

    .line 1072
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setSelectedPositionInt(I)V

    .line 1073
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setNextSelectedPositionInt(I)V

    .line 1074
    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedTop:I

    .line 1075
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1076
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->invalidate()V

    .line 1077
    return-void
.end method

.method resurrectSelection()Z
    .locals 1

    .prologue
    .line 2372
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchHandler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->resurrectSelection()Z

    move-result v0

    return v0
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 2971
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 2972
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mCacheColorHint:I

    .line 2973
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v0

    .line 2974
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2975
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2974
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2977
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 2979
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 1677
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mDrawSelectorOnTop:Z

    .line 1678
    return-void
.end method

.method public setOnScrollListener(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$OnScrollListener;

    .prologue
    .line 726
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mOnScrollListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$OnScrollListener;

    .line 727
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->invokeOnItemScrollListener()V

    .line 728
    return-void
.end method

.method public setRecyclerListener(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecyclerListener;

    .prologue
    .line 3092
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->access$802(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecyclerListener;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecyclerListener;

    .line 3093
    return-void
.end method

.method public setScrollDirectionLandscape(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 2940
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVerticallyLandscape:Z

    .line 2941
    .local v0, "tempDirection":Z
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVerticallyLandscape:Z

    .line 2942
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVerticallyLandscape:Z

    if-eq v0, v1, :cond_0

    .line 2943
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setupScrollInfo()V

    .line 2945
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->resetList()V

    .line 2946
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->clear()V

    .line 2948
    :cond_0
    return-void

    .line 2941
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setScrollDirectionPortrait(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 2913
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVerticallyPortrait:Z

    .line 2914
    .local v0, "tempDirection":Z
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVerticallyPortrait:Z

    .line 2915
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVerticallyPortrait:Z

    if-eq v0, v1, :cond_0

    .line 2916
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setupScrollInfo()V

    .line 2918
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->resetList()V

    .line 2919
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->clear()V

    .line 2921
    :cond_0
    return-void

    .line 2914
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "up"    # Landroid/view/View;
    .param p2, "down"    # Landroid/view/View;
    .param p3, "left"    # Landroid/view/View;
    .param p4, "right"    # Landroid/view/View;

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollUp:Landroid/view/View;

    .line 1762
    iput-object p2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollDown:Landroid/view/View;

    .line 1763
    iput-object p3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollLeft:Landroid/view/View;

    .line 1764
    iput-object p4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollRight:Landroid/view/View;

    .line 1765
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 768
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 769
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchHandler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->clearScrollingCache()V

    .line 771
    :cond_0
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollingCacheEnabled:Z

    .line 772
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 1687
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1688
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1691
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1692
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1693
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1695
    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1696
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1697
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1698
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectionLeftPadding:I

    .line 1699
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectionTopPadding:I

    .line 1700
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectionRightPadding:I

    .line 1701
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectionBottomPadding:I

    .line 1702
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1703
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1704
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 706
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    .line 707
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 839
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 840
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mStackFromBottom:Z

    .line 841
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->requestLayoutIfNecessary()V

    .line 843
    :cond_0
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 2892
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTranscriptMode:I

    .line 2893
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 1654
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 1981
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 1982
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2

    .line 1983
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1984
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 1986
    .local v6, "handled":Z
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mOnItemLongClickListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1987
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mOnItemLongClickListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1990
    :cond_0
    if-nez v6, :cond_1

    .line 1991
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    .line 1992
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1991
    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1994
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1999
    .end local v4    # "longPressId":J
    .end local v6    # "handled":Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 2236
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchHandler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->smoothScrollBy(II)V

    .line 2237
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchHandler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->smoothScrollToPosition(I)V

    .line 2213
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 2226
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchHandler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->smoothScrollToPosition(II)V

    .line 2227
    return-void
.end method

.method public startScrollIfNeeded(I)Z
    .locals 1
    .param p1, "delta"    # I

    .prologue
    .line 2130
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchHandler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->startScrollIfNeeded(I)Z

    move-result v0

    return v0
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchHandler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    if-eqz v0, :cond_0

    .line 1851
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchHandler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->stopScroll()V

    .line 1853
    :cond_0
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 1637
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1642
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1640
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1637
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method updateScrollIndicators()V
    .locals 12

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1358
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v8, :cond_1

    .line 1361
    iget v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    if-lez v8, :cond_8

    move v3, v6

    .line 1364
    .local v3, "canScrollUp":Z
    :goto_0
    if-nez v3, :cond_0

    .line 1365
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 1366
    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1367
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v8, v10, :cond_9

    move v3, v6

    .line 1371
    .end local v4    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v3, :cond_a

    move v8, v7

    :goto_2
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1374
    .end local v3    # "canScrollUp":Z
    :cond_1
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v8, :cond_3

    .line 1376
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v5

    .line 1379
    .local v5, "count":I
    iget v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v8, v5

    iget v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    if-ge v8, v10, :cond_b

    move v0, v6

    .line 1382
    .local v0, "canScrollDown":Z
    :goto_3
    if-nez v0, :cond_2

    if-lez v5, :cond_2

    .line 1383
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1384
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getBottom()I

    move-result v10

    iget-object v11, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-le v8, v10, :cond_c

    move v0, v6

    .line 1387
    .end local v4    # "child":Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_d

    move v8, v7

    :goto_5
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1390
    .end local v0    # "canScrollDown":Z
    .end local v5    # "count":I
    :cond_3
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollLeft:Landroid/view/View;

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVertically:Z

    if-nez v8, :cond_5

    .line 1393
    iget v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    if-lez v8, :cond_e

    move v1, v6

    .line 1396
    .local v1, "canScrollLeft":Z
    :goto_6
    if-nez v1, :cond_4

    .line 1397
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 1398
    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1399
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    if-ge v8, v10, :cond_f

    move v1, v6

    .line 1403
    .end local v4    # "child":Landroid/view/View;
    :cond_4
    :goto_7
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollLeft:Landroid/view/View;

    if-eqz v1, :cond_10

    move v8, v7

    :goto_8
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1406
    .end local v1    # "canScrollLeft":Z
    :cond_5
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollVertically:Z

    if-nez v8, :cond_7

    .line 1408
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v5

    .line 1411
    .restart local v5    # "count":I
    iget v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v8, v5

    iget v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    if-ge v8, v10, :cond_11

    move v2, v6

    .line 1414
    .local v2, "canScrollRight":Z
    :goto_9
    if-nez v2, :cond_6

    if-lez v5, :cond_6

    .line 1415
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1416
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getRight()I

    move-result v10

    iget-object v11, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    if-le v8, v10, :cond_12

    move v2, v6

    .line 1419
    .end local v4    # "child":Landroid/view/View;
    :cond_6
    :goto_a
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v2, :cond_13

    :goto_b
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1421
    .end local v2    # "canScrollRight":Z
    .end local v5    # "count":I
    :cond_7
    return-void

    :cond_8
    move v3, v7

    .line 1361
    goto/16 :goto_0

    .restart local v3    # "canScrollUp":Z
    .restart local v4    # "child":Landroid/view/View;
    :cond_9
    move v3, v7

    .line 1367
    goto/16 :goto_1

    .end local v4    # "child":Landroid/view/View;
    :cond_a
    move v8, v9

    .line 1371
    goto/16 :goto_2

    .end local v3    # "canScrollUp":Z
    .restart local v5    # "count":I
    :cond_b
    move v0, v7

    .line 1379
    goto/16 :goto_3

    .restart local v0    # "canScrollDown":Z
    .restart local v4    # "child":Landroid/view/View;
    :cond_c
    move v0, v7

    .line 1384
    goto :goto_4

    .end local v4    # "child":Landroid/view/View;
    :cond_d
    move v8, v9

    .line 1387
    goto :goto_5

    .end local v0    # "canScrollDown":Z
    .end local v5    # "count":I
    :cond_e
    move v1, v7

    .line 1393
    goto :goto_6

    .restart local v1    # "canScrollLeft":Z
    .restart local v4    # "child":Landroid/view/View;
    :cond_f
    move v1, v7

    .line 1399
    goto :goto_7

    .end local v4    # "child":Landroid/view/View;
    :cond_10
    move v8, v9

    .line 1403
    goto :goto_8

    .end local v1    # "canScrollLeft":Z
    .restart local v5    # "count":I
    :cond_11
    move v2, v7

    .line 1411
    goto :goto_9

    .restart local v2    # "canScrollRight":Z
    .restart local v4    # "child":Landroid/view/View;
    :cond_12
    move v2, v7

    .line 1416
    goto :goto_a

    .end local v4    # "child":Landroid/view/View;
    :cond_13
    move v7, v9

    .line 1419
    goto :goto_b
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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

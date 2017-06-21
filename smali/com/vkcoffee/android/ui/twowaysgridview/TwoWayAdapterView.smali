.class public abstract Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;
.super Landroid/view/ViewGroup;
.source "TwoWayAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$SelectionNotifier;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterContextMenuInfo;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemSelectedListener;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemLongClickListener;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field protected mContext:Landroid/content/Context;

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mInLayout:Z

.field protected mIsVertical:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J

.field mSyncSize:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    const/4 v4, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v1, 0x0

    .line 249
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mContext:Landroid/content/Context;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mIsVertical:Z

    .line 83
    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mFirstPosition:I

    .line 100
    iput-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSyncRowId:J

    .line 110
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNeedSync:Z

    .line 147
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mInLayout:Z

    .line 173
    iput v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNextSelectedPosition:I

    .line 179
    iput-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNextSelectedRowId:J

    .line 184
    iput v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectedPosition:I

    .line 190
    iput-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectedRowId:J

    .line 222
    iput v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOldSelectedPosition:I

    .line 227
    iput-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOldSelectedRowId:J

    .line 246
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mBlockLayoutRequests:Z

    .line 250
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mContext:Landroid/content/Context;

    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    const/4 v4, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v1, 0x0

    .line 254
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mContext:Landroid/content/Context;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mIsVertical:Z

    .line 83
    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mFirstPosition:I

    .line 100
    iput-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSyncRowId:J

    .line 110
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNeedSync:Z

    .line 147
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mInLayout:Z

    .line 173
    iput v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNextSelectedPosition:I

    .line 179
    iput-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNextSelectedRowId:J

    .line 184
    iput v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectedPosition:I

    .line 190
    iput-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectedRowId:J

    .line 222
    iput v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOldSelectedPosition:I

    .line 227
    iput-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOldSelectedRowId:J

    .line 246
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mBlockLayoutRequests:Z

    .line 255
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mContext:Landroid/content/Context;

    .line 256
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    const/4 v4, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v1, 0x0

    .line 259
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mContext:Landroid/content/Context;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mIsVertical:Z

    .line 83
    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mFirstPosition:I

    .line 100
    iput-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSyncRowId:J

    .line 110
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNeedSync:Z

    .line 147
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mInLayout:Z

    .line 173
    iput v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNextSelectedPosition:I

    .line 179
    iput-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNextSelectedRowId:J

    .line 184
    iput v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectedPosition:I

    .line 190
    iput-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectedRowId:J

    .line 222
    iput v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOldSelectedPosition:I

    .line 227
    iput-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOldSelectedRowId:J

    .line 246
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mBlockLayoutRequests:Z

    .line 260
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mContext:Landroid/content/Context;

    .line 261
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;
    .param p1, "x1"    # Landroid/os/Parcelable;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 886
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOnItemSelectedListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 898
    :goto_0
    return-void

    .line 890
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 891
    .local v3, "selection":I
    if-ltz v3, :cond_1

    .line 892
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 893
    .local v2, "v":Landroid/view/View;
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOnItemSelectedListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemSelectedListener;

    .line 894
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    .line 893
    invoke-interface/range {v0 .. v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemSelectedListener;->onItemSelected(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 896
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOnItemSelectedListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;)V

    goto :goto_0
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .param p1, "empty"    # Z

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 732
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    const/4 p1, 0x0

    .line 736
    :cond_0
    if-eqz p1, :cond_3

    .line 737
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 738
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 739
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->setVisibility(I)V

    .line 748
    :goto_0
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 749
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->onLayout(ZIIII)V

    .line 757
    :cond_1
    :goto_1
    return-void

    .line 742
    :cond_2
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->setVisibility(I)V

    goto :goto_0

    .line 752
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 753
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 755
    :cond_4
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 464
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 476
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 502
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 488
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 932
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkFocus()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 713
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 714
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    move v1, v4

    .line 715
    .local v1, "empty":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    move v2, v4

    .line 719
    .local v2, "focusable":Z
    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 720
    if-eqz v2, :cond_8

    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_3
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 721
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 722
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-direct {p0, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->updateEmptyStatus(Z)V

    .line 724
    :cond_4
    return-void

    .end local v1    # "empty":Z
    .end local v2    # "focusable":Z
    :cond_5
    move v1, v5

    .line 714
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_6
    move v2, v5

    .line 715
    goto :goto_1

    .restart local v2    # "focusable":Z
    :cond_7
    move v3, v5

    .line 719
    goto :goto_2

    :cond_8
    move v3, v5

    .line 720
    goto :goto_3
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 999
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1000
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->selectionChanged()V

    .line 1001
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOldSelectedPosition:I

    .line 1002
    iget-wide v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOldSelectedRowId:J

    .line 1004
    :cond_1
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 794
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 795
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 786
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 787
    return-void
.end method

.method findSyncPosition()I
    .locals 20

    .prologue
    .line 1015
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mItemCount:I

    .line 1017
    .local v3, "count":I
    if-nez v3, :cond_1

    .line 1018
    const/4 v13, -0x1

    .line 1090
    :cond_0
    :goto_0
    return v13

    .line 1021
    :cond_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSyncRowId:J

    .line 1022
    .local v10, "idToMatch":J
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSyncPosition:I

    .line 1025
    .local v13, "seed":I
    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v16, v10, v16

    if-nez v16, :cond_2

    .line 1026
    const/4 v13, -0x1

    goto :goto_0

    .line 1030
    :cond_2
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1031
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1033
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x64

    add-long v4, v16, v18

    .line 1038
    .local v4, "endTime":J
    move v6, v13

    .line 1041
    .local v6, "first":I
    move v9, v13

    .line 1044
    .local v9, "last":I
    const/4 v12, 0x0

    .line 1054
    .local v12, "next":Z
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1055
    .local v2, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v2, :cond_5

    .line 1056
    const/4 v13, -0x1

    goto :goto_0

    .line 1074
    .local v7, "hitFirst":Z
    .local v8, "hitLast":Z
    .local v14, "rowId":J
    :cond_3
    if-nez v7, :cond_4

    if-eqz v12, :cond_9

    if-nez v8, :cond_9

    .line 1076
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 1077
    move v13, v9

    .line 1079
    const/4 v12, 0x0

    .line 1059
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v14    # "rowId":J
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    cmp-long v16, v16, v4

    if-gtz v16, :cond_6

    .line 1060
    invoke-interface {v2, v13}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v14

    .line 1061
    .restart local v14    # "rowId":J
    cmp-long v16, v14, v10

    if-eqz v16, :cond_0

    .line 1066
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_7

    const/4 v8, 0x1

    .line 1067
    .restart local v8    # "hitLast":Z
    :goto_2
    if-nez v6, :cond_8

    const/4 v7, 0x1

    .line 1069
    .restart local v7    # "hitFirst":Z
    :goto_3
    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .line 1090
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v14    # "rowId":J
    :cond_6
    const/4 v13, -0x1

    goto :goto_0

    .line 1066
    .restart local v14    # "rowId":J
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 1067
    .restart local v8    # "hitLast":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .line 1080
    .restart local v7    # "hitFirst":Z
    :cond_9
    if-nez v8, :cond_a

    if-nez v12, :cond_5

    if-nez v7, :cond_5

    .line 1082
    :cond_a
    add-int/lit8 v6, v6, -0x1

    .line 1083
    move v13, v6

    .line 1085
    const/4 v12, 0x1

    goto :goto_1
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 590
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 673
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 633
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 766
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 767
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 771
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 772
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    :goto_0
    return-wide v2

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 643
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 301
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOnItemClickListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 363
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOnItemLongClickListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 407
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOnItemSelectedListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    const/4 v5, -0x1

    .line 603
    move-object v3, p1

    .line 606
    .local v3, "listItem":Landroid/view/View;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 607
    move-object v3, v4

    goto :goto_0

    .line 609
    .end local v4    # "v":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 623
    :cond_0
    :goto_1
    return v5

    .line 615
    .restart local v4    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getChildCount()I

    move-result v0

    .line 616
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 617
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 618
    iget v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_1

    .line 616
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 574
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 575
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 576
    .local v1, "selection":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 577
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 579
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 560
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    iget-wide v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 551
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    const-wide/high16 v8, -0x8000000000000000L

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 936
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mItemCount:I

    .line 937
    .local v0, "count":I
    const/4 v1, 0x0

    .line 939
    .local v1, "found":Z
    if-lez v0, :cond_4

    .line 944
    iget-boolean v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 947
    iput-boolean v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNeedSync:Z

    .line 951
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->findSyncPosition()I

    move-result v2

    .line 952
    .local v2, "newPos":I
    if-ltz v2, :cond_0

    .line 954
    invoke-virtual {p0, v2, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 955
    .local v3, "selectablePos":I
    if-ne v3, v2, :cond_0

    .line 957
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->setNextSelectedPositionInt(I)V

    .line 958
    const/4 v1, 0x1

    .line 962
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_0
    if-nez v1, :cond_4

    .line 964
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 967
    .restart local v2    # "newPos":I
    if-lt v2, v0, :cond_1

    .line 968
    add-int/lit8 v2, v0, -0x1

    .line 970
    :cond_1
    if-gez v2, :cond_2

    .line 971
    const/4 v2, 0x0

    .line 975
    :cond_2
    invoke-virtual {p0, v2, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 976
    .restart local v3    # "selectablePos":I
    if-gez v3, :cond_3

    .line 978
    invoke-virtual {p0, v2, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 980
    :cond_3
    if-ltz v3, :cond_4

    .line 981
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->setNextSelectedPositionInt(I)V

    .line 982
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->checkSelectionChanged()V

    .line 983
    const/4 v1, 0x1

    .line 987
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_4
    if-nez v1, :cond_5

    .line 989
    iput v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectedPosition:I

    .line 990
    iput-wide v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectedRowId:J

    .line 991
    iput v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNextSelectedPosition:I

    .line 992
    iput-wide v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNextSelectedRowId:J

    .line 993
    iput-boolean v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNeedSync:Z

    .line 994
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->checkSelectionChanged()V

    .line 996
    :cond_5
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 683
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected isVertical()Z
    .locals 1

    .prologue
    .line 1211
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mIsVertical:Z

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    .line 1102
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    return p1
.end method

.method public offsetChildrenLeftAndRight(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 1198
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getChildCount()I

    move-result v0

    .line 1200
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1201
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1202
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1204
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 1184
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getChildCount()I

    move-result v0

    .line 1186
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1187
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1188
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1190
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 540
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mLayoutHeight:I

    .line 541
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mLayoutWidth:I

    .line 542
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    const/4 v0, 0x0

    .line 314
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOnItemClickListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->playSoundEffect(I)V

    .line 316
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOnItemClickListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemClickListener;->onItemClick(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;Landroid/view/View;IJ)V

    .line 317
    const/4 v0, 0x1

    .line 320
    :cond_0
    return v0
.end method

.method rememberSyncState()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1136
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1137
    iput-boolean v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNeedSync:Z

    .line 1138
    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mIsVertical:Z

    if-eqz v2, :cond_2

    .line 1139
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSyncSize:J

    .line 1143
    :goto_0
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_4

    .line 1145
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1146
    .local v1, "v":Landroid/view/View;
    iget-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSyncRowId:J

    .line 1147
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSyncPosition:I

    .line 1148
    if-eqz v1, :cond_0

    .line 1149
    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mIsVertical:Z

    if-eqz v2, :cond_3

    .line 1150
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSpecificTop:I

    .line 1155
    :cond_0
    :goto_1
    iput v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSyncMode:I

    .line 1176
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    :goto_2
    return-void

    .line 1141
    :cond_2
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mLayoutWidth:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSyncSize:J

    goto :goto_0

    .line 1152
    .restart local v1    # "v":Landroid/view/View;
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSpecificTop:I

    goto :goto_1

    .line 1158
    .end local v1    # "v":Landroid/view/View;
    :cond_4
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1159
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1160
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mFirstPosition:I

    if-ltz v2, :cond_6

    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1161
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSyncRowId:J

    .line 1165
    :goto_3
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSyncPosition:I

    .line 1166
    if-eqz v1, :cond_5

    .line 1167
    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mIsVertical:Z

    if-eqz v2, :cond_7

    .line 1168
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSpecificTop:I

    .line 1173
    :cond_5
    :goto_4
    iput v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSyncMode:I

    goto :goto_2

    .line 1163
    :cond_6
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSyncRowId:J

    goto :goto_3

    .line 1170
    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSpecificTop:I

    goto :goto_4
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 535
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 514
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 525
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .line 863
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOnItemSelectedListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 864
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_3

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectionNotifier:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$SelectionNotifier;

    if-nez v0, :cond_1

    .line 870
    new-instance v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$SelectionNotifier;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectionNotifier:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$SelectionNotifier;

    .line 872
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectionNotifier:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$SelectionNotifier;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectionNotifier:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$SelectionNotifier;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    .line 883
    :cond_2
    :goto_0
    return-void

    .line 874
    :cond_3
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->fireOnSelected()V

    goto :goto_0
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 3
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 658
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mEmptyView:Landroid/view/View;

    .line 660
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 661
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 662
    .local v1, "empty":Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->updateEmptyStatus(Z)V

    .line 663
    return-void

    .line 661
    .end local v1    # "empty":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 688
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 689
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 691
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mDesiredFocusableState:Z

    .line 692
    if-nez p1, :cond_1

    .line 693
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 696
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 697
    return-void

    .end local v1    # "empty":Z
    :cond_3
    move v1, v2

    .line 689
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_4
    move v3, v2

    .line 696
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 701
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 702
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 704
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 705
    if-eqz p1, :cond_1

    .line 706
    iput-boolean v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mDesiredFocusableState:Z

    .line 709
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 710
    return-void

    .end local v1    # "empty":Z
    :cond_3
    move v1, v2

    .line 702
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_4
    move v3, v2

    .line 709
    goto :goto_1
.end method

.method protected setIsVertical(Z)V
    .locals 0
    .param p1, "vertical"    # Z

    .prologue
    .line 1207
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mIsVertical:Z

    .line 1208
    return-void
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1122
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNextSelectedPosition:I

    .line 1123
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNextSelectedRowId:J

    .line 1125
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1126
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSyncPosition:I

    .line 1127
    iget-wide v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSyncRowId:J

    .line 1129
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 777
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemClickListener;

    .prologue
    .line 293
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOnItemClickListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemClickListener;

    .line 294
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemLongClickListener;

    .prologue
    .line 352
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->setLongClickable(Z)V

    .line 355
    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOnItemLongClickListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemLongClickListener;

    .line 356
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemSelectedListener;

    .prologue
    .line 403
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOnItemSelectedListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$OnItemSelectedListener;

    .line 404
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1111
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>;"
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectedPosition:I

    .line 1112
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectedRowId:J

    .line 1113
    return-void
.end method

.method public abstract setSelection(I)V
.end method

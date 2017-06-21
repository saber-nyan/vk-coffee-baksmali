.class Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "TwoWayAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    .prologue
    .line 797
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    .line 845
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 846
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 803
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mDataChanged:Z

    .line 804
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    iget v1, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mItemCount:I

    iput v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOldItemCount:I

    .line 805
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mItemCount:I

    .line 809
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->access$000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;Landroid/os/Parcelable;)V

    .line 812
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 816
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->checkFocus()V

    .line 817
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->requestLayout()V

    .line 818
    return-void

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>.AdapterDataSetObserver;"
    const-wide/high16 v4, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 822
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mDataChanged:Z

    .line 824
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->access$100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    iget v1, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mItemCount:I

    iput v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mOldItemCount:I

    .line 832
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    iput v3, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mItemCount:I

    .line 833
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    iput v2, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectedPosition:I

    .line 834
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    iput-wide v4, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mSelectedRowId:J

    .line 835
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    iput v2, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNextSelectedPosition:I

    .line 836
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    iput-wide v4, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNextSelectedRowId:J

    .line 837
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    iput-boolean v3, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mNeedSync:Z

    .line 838
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->checkSelectionChanged()V

    .line 840
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->checkFocus()V

    .line 841
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->requestLayout()V

    .line 842
    return-void
.end method

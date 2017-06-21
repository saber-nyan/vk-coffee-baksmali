.class Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;
.super Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$WindowRunnnable;
.source "TwoWayAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mChild:Landroid/view/View;

.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V
    .locals 1

    .prologue
    .line 1886
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$WindowRunnnable;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p2, "x1"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$1;

    .prologue
    .line 1886
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1893
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-boolean v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 1904
    :cond_0
    :goto_0
    return-void

    .line 1897
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v0, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1898
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;->mClickMotionPosition:I

    .line 1899
    .local v1, "motionPosition":I
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    if-lez v2, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1901
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;->sameWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1902
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;->mChild:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.class Lcom/vkcoffee/android/ui/ReorderableListView$6;
.super Ljava/lang/Object;
.source "ReorderableListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/ReorderableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurrentFirstVisibleItem:I

.field private mCurrentScrollState:I

.field private mCurrentVisibleItemCount:I

.field private mPreviousFirstVisibleItem:I

.field private mPreviousVisibleItemCount:I

.field final synthetic this$0:Lcom/vkcoffee/android/ui/ReorderableListView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/ReorderableListView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/ReorderableListView;

    .prologue
    const/4 v0, -0x1

    .line 525
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iput v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mPreviousFirstVisibleItem:I

    .line 528
    iput v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mPreviousVisibleItemCount:I

    return-void
.end method

.method private isScrollCompleted()V
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mCurrentVisibleItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mCurrentScrollState:I

    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/ReorderableListView;->access$600(Lcom/vkcoffee/android/ui/ReorderableListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/ReorderableListView;->access$1200(Lcom/vkcoffee/android/ui/ReorderableListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/ReorderableListView;->access$1300(Lcom/vkcoffee/android/ui/ReorderableListView;)V

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/ReorderableListView;->access$1400(Lcom/vkcoffee/android/ui/ReorderableListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/ReorderableListView;->access$1500(Lcom/vkcoffee/android/ui/ReorderableListView;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAndHandleFirstVisibleCellChange()V
    .locals 4

    .prologue
    .line 580
    iget v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mCurrentFirstVisibleItem:I

    iget v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mPreviousFirstVisibleItem:I

    if-eq v0, v1, :cond_0

    .line 581
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/ReorderableListView;->access$600(Lcom/vkcoffee/android/ui/ReorderableListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/ReorderableListView;->access$300(Lcom/vkcoffee/android/ui/ReorderableListView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/ReorderableListView;->access$300(Lcom/vkcoffee/android/ui/ReorderableListView;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/vkcoffee/android/ui/ReorderableListView;->access$700(Lcom/vkcoffee/android/ui/ReorderableListView;J)V

    .line 583
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/ReorderableListView;->access$1600(Lcom/vkcoffee/android/ui/ReorderableListView;)V

    .line 586
    :cond_0
    return-void
.end method

.method public checkAndHandleLastVisibleCellChange()V
    .locals 6

    .prologue
    .line 593
    iget v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mCurrentFirstVisibleItem:I

    iget v3, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mCurrentVisibleItemCount:I

    add-int v0, v2, v3

    .line 594
    .local v0, "currentLastVisibleItem":I
    iget v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mPreviousFirstVisibleItem:I

    iget v3, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mPreviousVisibleItemCount:I

    add-int v1, v2, v3

    .line 595
    .local v1, "previousLastVisibleItem":I
    if-eq v0, v1, :cond_0

    .line 596
    iget-object v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/ReorderableListView;->access$600(Lcom/vkcoffee/android/ui/ReorderableListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/ReorderableListView;->access$300(Lcom/vkcoffee/android/ui/ReorderableListView;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 597
    iget-object v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/ReorderableListView;->access$300(Lcom/vkcoffee/android/ui/ReorderableListView;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/vkcoffee/android/ui/ReorderableListView;->access$700(Lcom/vkcoffee/android/ui/ReorderableListView;J)V

    .line 598
    iget-object v2, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/ReorderableListView;->access$1600(Lcom/vkcoffee/android/ui/ReorderableListView;)V

    .line 601
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v1, -0x1

    .line 535
    iput p2, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mCurrentFirstVisibleItem:I

    .line 536
    iput p3, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mCurrentVisibleItemCount:I

    .line 538
    iget v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mPreviousFirstVisibleItem:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mCurrentFirstVisibleItem:I

    :goto_0
    iput v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mPreviousFirstVisibleItem:I

    .line 540
    iget v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mPreviousVisibleItemCount:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mCurrentVisibleItemCount:I

    :goto_1
    iput v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mPreviousVisibleItemCount:I

    .line 543
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ReorderableListView$6;->checkAndHandleFirstVisibleCellChange()V

    .line 544
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ReorderableListView$6;->checkAndHandleLastVisibleCellChange()V

    .line 546
    iget v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mCurrentFirstVisibleItem:I

    iput v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mPreviousFirstVisibleItem:I

    .line 547
    iget v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mCurrentVisibleItemCount:I

    iput v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mPreviousVisibleItemCount:I

    .line 548
    return-void

    .line 538
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mPreviousFirstVisibleItem:I

    goto :goto_0

    .line 540
    :cond_1
    iget v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mPreviousVisibleItemCount:I

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 552
    iput p2, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->mCurrentScrollState:I

    .line 553
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$6;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    invoke-static {v0, p2}, Lcom/vkcoffee/android/ui/ReorderableListView;->access$1102(Lcom/vkcoffee/android/ui/ReorderableListView;I)I

    .line 554
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ReorderableListView$6;->isScrollCompleted()V

    .line 555
    return-void
.end method

.class public Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "WrapSizeLinearLayoutManager.java"


# instance fields
.field lastMeasureItemCount:I

.field lastMeasuredHeight:I

.field lastMeasuredWidth:I

.field manuallyMeasured:Z

.field maxHeight:I

.field maxWidth:I

.field measuredHeight:I

.field measuredWidth:I

.field relayoutHandler:Landroid/os/Handler;

.field requestRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v1, 0x7fffffff

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 18
    iput v0, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->lastMeasuredWidth:I

    .line 19
    iput v0, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->lastMeasuredHeight:I

    .line 20
    iput v0, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->measuredWidth:I

    .line 21
    iput v0, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->measuredHeight:I

    .line 22
    iput v1, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->maxWidth:I

    .line 23
    iput v1, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->maxHeight:I

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->relayoutHandler:Landroid/os/Handler;

    .line 27
    invoke-static {p0}, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->requestRunnable:Ljava/lang/Runnable;

    .line 35
    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v8, 0x0

    .line 40
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->relayoutHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->requestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 41
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->getItemCount()I

    move-result v3

    .line 42
    .local v3, "itemCount":I
    iget-boolean v6, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->manuallyMeasured:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->lastMeasureItemCount:I

    if-eq v6, v3, :cond_6

    .line 43
    :cond_0
    iget v5, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->maxWidth:I

    .line 44
    .local v5, "widthSize":I
    if-lez v3, :cond_4

    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, "i":I
    const/4 v0, 0x0

    .line 47
    .local v0, "acumulatedSize":I
    :goto_0
    if-ge v2, v3, :cond_2

    if-ge v0, v5, :cond_2

    .line 48
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v4

    .line 49
    .local v4, "viewForPosition":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 51
    invoke-virtual {p0, v4, v8, v8}, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 52
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    .line 53
    .local v1, "childWidth":I
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 54
    add-int/2addr v0, v1

    .line 56
    .end local v1    # "childWidth":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 57
    goto :goto_0

    .line 58
    .end local v4    # "viewForPosition":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v0, v6

    .line 59
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 60
    iput v0, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->measuredWidth:I

    .line 61
    iget v6, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->maxHeight:I

    iput v6, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->measuredHeight:I

    .line 62
    iput v3, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->lastMeasureItemCount:I

    .line 63
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->manuallyMeasured:Z

    .line 64
    if-lt v0, v5, :cond_3

    iget v6, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->measuredWidth:I

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->lastMeasuredWidth:I

    if-nez v6, :cond_5

    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->requestPostLayout()V

    .line 74
    .end local v0    # "acumulatedSize":I
    .end local v2    # "i":I
    .end local v5    # "widthSize":I
    :cond_4
    :goto_1
    return-void

    .line 67
    .restart local v0    # "acumulatedSize":I
    .restart local v2    # "i":I
    .restart local v5    # "widthSize":I
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    goto :goto_1

    .line 71
    .end local v0    # "acumulatedSize":I
    .end local v2    # "i":I
    .end local v5    # "widthSize":I
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    goto :goto_1
.end method

.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 6
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "widthSpec"    # I
    .param p4, "heightSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->relayoutHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->requestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 80
    .local v2, "maxW":I
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 81
    .local v1, "maxH":I
    iget v4, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->maxWidth:I

    if-ne v2, v4, :cond_0

    iget v4, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->maxHeight:I

    if-eq v1, v4, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 82
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 83
    iput v2, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->maxWidth:I

    .line 84
    iput v1, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->maxHeight:I

    .line 85
    iput-boolean v3, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->manuallyMeasured:Z

    .line 87
    :cond_1
    iget v3, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->measuredWidth:I

    iput v3, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->lastMeasuredWidth:I

    iget v4, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->maxHeight:I

    iput v4, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->lastMeasuredHeight:I

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->setMeasuredDimension(II)V

    .line 88
    return-void

    .end local v0    # "changed":Z
    :cond_2
    move v0, v3

    .line 81
    goto :goto_0
.end method

.method requestPostLayout()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->relayoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;->requestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    return-void
.end method

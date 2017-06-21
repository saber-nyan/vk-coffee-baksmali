.class Lcom/tonicartos/superslim/LayoutManager$1$1;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "LayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonicartos/superslim/LayoutManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tonicartos/superslim/LayoutManager$1;


# direct methods
.method constructor <init>(Lcom/tonicartos/superslim/LayoutManager$1;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tonicartos/superslim/LayoutManager$1;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/tonicartos/superslim/LayoutManager$1$1;->this$1:Lcom/tonicartos/superslim/LayoutManager$1;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    .prologue
    const/4 v3, 0x0

    .line 437
    invoke-virtual {p0}, Lcom/tonicartos/superslim/LayoutManager$1$1;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v7

    .line 438
    .local v7, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    :goto_0
    return v3

    .line 442
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 443
    .local v8, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v7, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    iget v5, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v1, v0, v5

    .line 444
    .local v1, "top":I
    invoke-virtual {v7, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    iget v5, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v2, v0, v5

    .line 446
    .local v2, "bottom":I
    iget-object v0, p0, Lcom/tonicartos/superslim/LayoutManager$1$1;->this$1:Lcom/tonicartos/superslim/LayoutManager$1;

    iget-object v0, v0, Lcom/tonicartos/superslim/LayoutManager$1;->this$0:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v0, p1}, Lcom/tonicartos/superslim/LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    .line 448
    .local v3, "start":I
    :cond_1
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    .line 449
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int v4, v0, v5

    .local v4, "end":I
    move-object v0, p0

    move v5, p2

    .line 450
    invoke-virtual/range {v0 .. v5}, Lcom/tonicartos/superslim/LayoutManager$1$1;->calculateDtToFit(IIIII)I

    move-result v6

    .line 451
    .local v6, "dy":I
    if-nez v6, :cond_2

    const/4 v6, 0x1

    .end local v6    # "dy":I
    :cond_2
    move v3, v6

    goto :goto_0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3
    .param p1, "targetPosition"    # I

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/tonicartos/superslim/LayoutManager$1$1;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 457
    const/4 v0, 0x0

    .line 460
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tonicartos/superslim/LayoutManager$1$1;->this$1:Lcom/tonicartos/superslim/LayoutManager$1;

    iget-object v2, v2, Lcom/tonicartos/superslim/LayoutManager$1;->this$0:Lcom/tonicartos/superslim/LayoutManager;

    invoke-static {v2, p1}, Lcom/tonicartos/superslim/LayoutManager;->access$000(Lcom/tonicartos/superslim/LayoutManager;I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    .prologue
    .line 432
    const/4 v0, -0x1

    return v0
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 420
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 421
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 425
    invoke-super {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->onStop()V

    .line 427
    iget-object v0, p0, Lcom/tonicartos/superslim/LayoutManager$1$1;->this$1:Lcom/tonicartos/superslim/LayoutManager$1;

    iget-object v0, v0, Lcom/tonicartos/superslim/LayoutManager$1;->this$0:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v0}, Lcom/tonicartos/superslim/LayoutManager;->requestLayout()V

    .line 428
    return-void
.end method

.class Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "VkBottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    .prologue
    .line 530
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;"
    iput-object p1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 601
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;"
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 596
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;"
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$600(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I

    move-result v1

    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$700(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$900(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I

    move-result v0

    :goto_0
    invoke-static {p2, v1, v0}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->constrain(III)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$1000(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I

    move-result v0

    goto :goto_0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 606
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;"
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$700(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$900(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I

    move-result v0

    iget-object v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$600(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 609
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$1000(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I

    move-result v0

    iget-object v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$600(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public onViewDragStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;"
    const/4 v1, 0x1

    .line 557
    if-ne p1, v1, :cond_0

    .line 558
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v0, v1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$500(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;I)V

    .line 560
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 552
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;"
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-virtual {v0, p3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->dispatchOnSlide(I)V

    .line 553
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 5
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;"
    const/4 v4, 0x0

    .line 566
    cmpg-float v3, p3, v4

    if-gez v3, :cond_0

    .line 567
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$600(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I

    move-result v2

    .line 568
    .local v2, "top":I
    const/4 v1, 0x3

    .line 585
    .local v1, "targetState":I
    :goto_0
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$1100(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 586
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$500(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;I)V

    .line 587
    new-instance v3, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SettleRunnable;

    iget-object v4, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-direct {v3, v4, p1, v1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SettleRunnable;-><init>(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 592
    :goto_1
    return-void

    .line 569
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_0
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$700(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v3, p1, p3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$800(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;Landroid/view/View;F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 570
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$900(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I

    move-result v2

    .line 571
    .restart local v2    # "top":I
    const/4 v1, 0x5

    .restart local v1    # "targetState":I
    goto :goto_0

    .line 572
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_1
    cmpl-float v3, p3, v4

    if-nez v3, :cond_3

    .line 573
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 574
    .local v0, "currentTop":I
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$600(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I

    move-result v3

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v4}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$1000(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I

    move-result v4

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 575
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$600(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I

    move-result v2

    .line 576
    .restart local v2    # "top":I
    const/4 v1, 0x3

    .restart local v1    # "targetState":I
    goto :goto_0

    .line 578
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_2
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$1000(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I

    move-result v2

    .line 579
    .restart local v2    # "top":I
    const/4 v1, 0x4

    .restart local v1    # "targetState":I
    goto :goto_0

    .line 582
    .end local v0    # "currentTop":I
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_3
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$1000(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I

    move-result v2

    .line 583
    .restart local v2    # "top":I
    const/4 v1, 0x4

    .restart local v1    # "targetState":I
    goto :goto_0

    .line 590
    :cond_4
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v3, v1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$500(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;I)V

    goto :goto_1
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 534
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$000(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return v2

    .line 537
    :cond_1
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$100(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 540
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$000(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$200(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 541
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$300(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 542
    .local v0, "scroll":Landroid/view/View;
    if-eqz v0, :cond_2

    const/4 v3, -0x1

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 547
    .end local v0    # "scroll":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$400(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$1;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$400(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

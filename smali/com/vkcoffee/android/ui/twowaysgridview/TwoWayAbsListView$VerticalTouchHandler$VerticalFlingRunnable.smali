.class Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;
.super Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerticalFlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field protected mLastFlingY:I

.field final synthetic this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;)V
    .locals 0

    .prologue
    .line 4522
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;
    .param p2, "x1"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$1;

    .prologue
    .line 4522
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;)V

    return-void
.end method


# virtual methods
.method public flywheelTouch()V
    .locals 4

    .prologue
    .line 4620
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 4621
    new-instance v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 4643
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4644
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    .line 4556
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    packed-switch v8, :pswitch_data_0

    .line 4615
    :goto_0
    return-void

    .line 4561
    :pswitch_0
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 4562
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->endFling()V

    goto :goto_0

    .line 4566
    :cond_1
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 4567
    .local v6, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v6}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    .line 4568
    .local v4, "more":Z
    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 4572
    .local v7, "y":I
    iget v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mLastFlingY:I

    sub-int v1, v8, v7

    .line 4575
    .local v1, "delta":I
    if-lez v1, :cond_2

    .line 4577
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v9, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v9, v9, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v9, v9, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    iput v9, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionPosition:I

    .line 4578
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4579
    .local v2, "firstView":Landroid/view/View;
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->mMotionViewOriginalTop:I

    .line 4582
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v9, v9, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v9, v9, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4595
    .end local v2    # "firstView":Landroid/view/View;
    :goto_1
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    invoke-virtual {v8, v1, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->trackMotionScroll(II)Z

    move-result v0

    .line 4597
    .local v0, "atEnd":Z
    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    .line 4598
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->invalidate()V

    .line 4599
    iput v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mLastFlingY:I

    .line 4600
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v8, p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4585
    .end local v0    # "atEnd":Z
    :cond_2
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .line 4586
    .local v5, "offsetToLast":I
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v9, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v9, v9, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v9, v9, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v9, v5

    iput v9, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionPosition:I

    .line 4588
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v8, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4589
    .local v3, "lastView":Landroid/view/View;
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->mMotionViewOriginalTop:I

    .line 4592
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v9, v9, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v9, v9, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    neg-int v8, v8

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 4602
    .end local v3    # "lastView":Landroid/view/View;
    .end local v5    # "offsetToLast":I
    .restart local v0    # "atEnd":Z
    :cond_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 4556
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .param p1, "initialVelocity"    # I

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 4530
    if-gez p1, :cond_0

    move v2, v6

    .line 4531
    .local v2, "initialY":I
    :goto_0
    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mLastFlingY:I

    .line 4532
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 4534
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 4535
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4543
    return-void

    .end local v2    # "initialY":I
    :cond_0
    move v2, v1

    .line 4530
    goto :goto_0
.end method

.method startScroll(II)V
    .locals 6
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 4547
    if-gez p1, :cond_0

    const v2, 0x7fffffff

    .line 4548
    .local v2, "initialY":I
    :goto_0
    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mLastFlingY:I

    .line 4549
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 4550
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 4551
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4552
    return-void

    .end local v2    # "initialY":I
    :cond_0
    move v2, v1

    .line 4547
    goto :goto_0
.end method

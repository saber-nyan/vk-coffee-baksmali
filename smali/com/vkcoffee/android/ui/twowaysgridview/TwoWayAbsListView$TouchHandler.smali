.class abstract Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "TouchHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;
    }
.end annotation


# instance fields
.field protected mFlingRunnable:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;

.field mMotionCorrection:I

.field protected mPositionScroller:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;

.field final synthetic this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    .prologue
    .line 3484
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3776
    return-void
.end method


# virtual methods
.method protected clearScrollingCache()V
    .locals 2

    .prologue
    .line 3673
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3674
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    new-instance v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$1;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;)V

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2402(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3689
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3690
    return-void
.end method

.method protected createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3665
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 3666
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2200(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Z)V

    .line 3667
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Z)V

    .line 3668
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iput-boolean v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mCachingStarted:Z

    .line 3670
    :cond_0
    return-void
.end method

.method protected abstract getFlingRunnable()Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;
.end method

.method protected abstract getPositionScroller()Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;
.end method

.method public abstract onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public onTouchModeChanged(Z)V
    .locals 1
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 3583
    if-eqz p1, :cond_0

    .line 3585
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->hideSelector()V

    .line 3589
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3592
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->layoutChildren()V

    .line 3595
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3502
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 3504
    .local v0, "touchMode":I
    :goto_0
    if-nez p1, :cond_3

    .line 3505
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v3, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$1700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Z)V

    .line 3506
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->mFlingRunnable:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;

    if-eqz v3, :cond_0

    .line 3507
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->mFlingRunnable:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3510
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->mFlingRunnable:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->endFling()V

    .line 3512
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getScrollY()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3513
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getScrollX()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->scrollTo(II)V

    .line 3515
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->invalidate()V

    .line 3521
    :cond_0
    if-ne v0, v2, :cond_1

    .line 3523
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedPosition:I

    iput v2, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mResurrectToPosition:I

    .line 3547
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$1802(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;I)I

    .line 3548
    return-void

    .end local v0    # "touchMode":I
    :cond_2
    move v0, v2

    .line 3502
    goto :goto_0

    .line 3532
    .restart local v0    # "touchMode":I
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$1800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)I

    move-result v3

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$1800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 3534
    if-ne v0, v2, :cond_4

    .line 3536
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->resurrectSelection()Z

    goto :goto_1

    .line 3540
    :cond_4
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->hideSelector()V

    .line 3541
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iput v1, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLayoutMode:I

    .line 3542
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method reportScrollStateChange(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 3605
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 3606
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3607
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$OnScrollListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-interface {v0, v1, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;I)V

    .line 3608
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2002(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;I)I

    .line 3611
    :cond_0
    return-void
.end method

.method abstract resurrectSelection()Z
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 3650
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->mFlingRunnable:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;

    if-nez v0, :cond_0

    .line 3651
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->getFlingRunnable()Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->mFlingRunnable:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;

    .line 3655
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->mFlingRunnable:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->startScroll(II)V

    .line 3656
    return-void

    .line 3653
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->mFlingRunnable:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->endFling()V

    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 3620
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;

    if-nez v0, :cond_0

    .line 3621
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->getPositionScroller()Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;

    .line 3623
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->start(I)V

    .line 3624
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 3637
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;

    if-nez v0, :cond_0

    .line 3638
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->getPositionScroller()Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;

    .line 3640
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->start(II)V

    .line 3641
    return-void
.end method

.method public startScrollIfNeeded(I)Z
    .locals 8
    .param p1, "delta"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3554
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3555
    .local v0, "distance":I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$1900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)I

    move-result v5

    if-le v0, v5, :cond_2

    .line 3556
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->createScrollingCache()V

    .line 3557
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    const/4 v6, 0x3

    iput v6, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 3558
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->mMotionCorrection:I

    .line 3559
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 3563
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 3564
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3566
    :cond_0
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v5, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setPressed(Z)V

    .line 3567
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v6, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionPosition:I

    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3568
    .local v2, "motionView":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 3569
    invoke-virtual {v2, v4}, Landroid/view/View;->setPressed(Z)V

    .line 3571
    :cond_1
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->reportScrollStateChange(I)V

    .line 3574
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v4, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 3578
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "motionView":Landroid/view/View;
    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method stopScroll()V
    .locals 1

    .prologue
    .line 3659
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->mFlingRunnable:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;

    if-eqz v0, :cond_0

    .line 3660
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->mFlingRunnable:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->stopFling()V

    .line 3662
    :cond_0
    return-void
.end method

.method abstract trackMotionScroll(II)Z
.end method

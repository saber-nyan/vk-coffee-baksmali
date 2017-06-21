.class public abstract Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "FlingRunnable"
.end annotation


# instance fields
.field protected mCheckFlywheel:Ljava/lang/Runnable;

.field protected final mScroller:Landroid/widget/Scroller;

.field final synthetic this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;)V
    .locals 2
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    .prologue
    .line 3741
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3742
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 3743
    return-void
.end method


# virtual methods
.method protected endFling()V
    .locals 2

    .prologue
    .line 3752
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 3754
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->reportScrollStateChange(I)V

    .line 3755
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->clearScrollingCache()V

    .line 3757
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3759
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3760
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3762
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;

    if-eqz v0, :cond_1

    .line 3763
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3766
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3767
    return-void
.end method

.method abstract flywheelTouch()V
.end method

.method public isScrollingInDirection(FF)Z
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    .line 3734
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getStartX()I

    move-result v3

    sub-int v0, v2, v3

    .line 3735
    .local v0, "dx":I
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getStartY()I

    move-result v3

    sub-int v1, v2, v3

    .line 3736
    .local v1, "dy":I
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 3737
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract run()V
.end method

.method abstract start(I)V
.end method

.method abstract startScroll(II)V
.end method

.method public stopFling()V
    .locals 1

    .prologue
    .line 3770
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3771
    return-void
.end method

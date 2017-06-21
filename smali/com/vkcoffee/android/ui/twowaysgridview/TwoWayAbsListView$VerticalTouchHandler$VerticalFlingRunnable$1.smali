.class Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->flywheelTouch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;)V
    .locals 0
    .param p1, "this$2"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    .prologue
    .line 4621
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;->this$2:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 4623
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;->this$2:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v0

    .line 4624
    .local v0, "vt":Landroid/view/VelocityTracker;
    if-nez v0, :cond_0

    .line 4640
    :goto_0
    return-void

    .line 4628
    :cond_0
    const/16 v2, 0x3e8

    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;->this$2:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$3600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4629
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    neg-float v1, v2

    .line 4631
    .local v1, "yvel":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;->this$2:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$3100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;->this$2:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    const/4 v3, 0x0

    .line 4632
    invoke-virtual {v2, v3, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->isScrollingInDirection(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4634
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;->this$2:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    const-wide/16 v4, 0x28

    invoke-virtual {v2, p0, v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4636
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;->this$2:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->endFling()V

    .line 4637
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;->this$2:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    const/4 v3, 0x3

    iput v3, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 4638
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;->this$2:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->reportScrollStateChange(I)V

    goto :goto_0
.end method

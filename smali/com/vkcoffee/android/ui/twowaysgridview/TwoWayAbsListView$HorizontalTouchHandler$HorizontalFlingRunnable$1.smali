.class Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable$1;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->flywheelTouch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;)V
    .locals 0
    .param p1, "this$2"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;

    .prologue
    .line 5509
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable$1;->this$2:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 5511
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable$1;->this$2:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v0

    .line 5512
    .local v0, "vt":Landroid/view/VelocityTracker;
    if-nez v0, :cond_0

    .line 5528
    :goto_0
    return-void

    .line 5516
    :cond_0
    const/16 v2, 0x3e8

    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable$1;->this$2:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$3600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 5517
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    neg-float v1, v2

    .line 5519
    .local v1, "xvel":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable$1;->this$2:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$3100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable$1;->this$2:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;

    const/4 v3, 0x0

    .line 5520
    invoke-virtual {v2, v3, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->isScrollingInDirection(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5522
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable$1;->this$2:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    const-wide/16 v4, 0x28

    invoke-virtual {v2, p0, v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5524
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable$1;->this$2:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->endFling()V

    .line 5525
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable$1;->this$2:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    const/4 v3, 0x3

    iput v3, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 5526
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable$1;->this$2:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->reportScrollStateChange(I)V

    goto :goto_0
.end method

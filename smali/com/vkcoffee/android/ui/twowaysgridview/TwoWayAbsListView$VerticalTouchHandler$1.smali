.class Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$1;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;Landroid/view/View;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    .prologue
    .line 4082
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$1;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$1;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$1;->val$performClick:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4084
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$1;->val$child:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4085
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$1;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setPressed(Z)V

    .line 4086
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$1;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 4087
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$1;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$1;->val$performClick:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4089
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$1;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 4090
    return-void
.end method

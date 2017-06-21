.class Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;
.super Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalTouchHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;
    }
.end annotation


# instance fields
.field mLastX:I

.field mMotionViewNewLeft:I

.field mMotionViewOriginalLeft:I

.field final synthetic this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    .prologue
    .line 4787
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V

    .line 5536
    return-void
.end method


# virtual methods
.method protected getFlingRunnable()Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;
    .locals 2

    .prologue
    .line 4806
    new-instance v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$1;)V

    return-object v0
.end method

.method protected getPositionScroller()Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;
    .locals 1

    .prologue
    .line 4812
    new-instance v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;)V

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x4

    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 4818
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 4829
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v6, v7

    .line 4878
    :goto_1
    return v6

    .line 4831
    :pswitch_0
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v2, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 4833
    .local v2, "touchMode":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 4834
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 4836
    .local v5, "y":I
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v8, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->findMotionRowX(I)I

    move-result v1

    .line 4837
    .local v1, "motionPosition":I
    if-eq v2, v10, :cond_1

    if-ltz v1, :cond_1

    .line 4840
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v9, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v9, v9, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    sub-int v9, v1, v9

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4841
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    iput v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->mMotionViewOriginalLeft:I

    .line 4842
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iput v4, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionX:I

    .line 4843
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iput v5, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionY:I

    .line 4844
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iput v1, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionPosition:I

    .line 4845
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iput v7, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 4846
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->clearScrollingCache()V

    .line 4848
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    const/high16 v8, -0x80000000

    iput v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->mLastX:I

    .line 4849
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$3400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V

    .line 4850
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4851
    if-ne v2, v10, :cond_0

    goto :goto_1

    .line 4858
    .end local v1    # "motionPosition":I
    .end local v2    # "touchMode":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :pswitch_1
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    packed-switch v8, :pswitch_data_1

    goto :goto_0

    .line 4860
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 4861
    .restart local v4    # "x":I
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionX:I

    sub-int v8, v4, v8

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->startScrollIfNeeded(I)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 4870
    .end local v4    # "x":I
    :pswitch_3
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iput v8, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 4871
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v6, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$3302(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;I)I

    .line 4872
    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->reportScrollStateChange(I)V

    goto :goto_0

    .line 4829
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 4858
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isEnabled()Z

    move-result v20

    if-nez v20, :cond_2

    .line 4887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isClickable()Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isLongClickable()Z

    move-result v20

    if-eqz v20, :cond_1

    :cond_0
    const/16 v20, 0x1

    .line 5153
    :goto_0
    return v20

    .line 4887
    :cond_1
    const/16 v20, 0x0

    goto :goto_0

    .line 4898
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 4903
    .local v4, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v20

    if-nez v20, :cond_3

    .line 4904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2702(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 4906
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4908
    packed-switch v4, :pswitch_data_0

    .line 5153
    :cond_4
    :goto_1
    const/16 v20, 0x1

    goto :goto_0

    .line 4910
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 4911
    .local v18, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 4912
    .local v19, "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->pointToPosition(II)I

    move-result v13

    .line 4913
    .local v13, "motionPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mDataChanged:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 4914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    if-ltz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    .line 4915
    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v20

    check-cast v20, Landroid/widget/ListAdapter;

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 4918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 4920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Ljava/lang/Runnable;

    move-result-object v20

    if-nez v20, :cond_5

    .line 4921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2802(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 4923
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Ljava/lang/Runnable;

    move-result-object v21

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v20 .. v23}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4943
    :cond_6
    :goto_2
    if-ltz v13, :cond_7

    .line 4945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v21, v13, v21

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 4946
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->mMotionViewOriginalLeft:I

    .line 4948
    .end local v16    # "v":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move/from16 v0, v18

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionX:I

    .line 4949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionY:I

    .line 4950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput v13, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionPosition:I

    .line 4951
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->mLastX:I

    goto/16 :goto_1

    .line 4925
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v20

    if-eqz v20, :cond_9

    if-gez v13, :cond_9

    .line 4929
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 4932
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 4934
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->createScrollingCache()V

    .line 4935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 4936
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->mMotionCorrection:I

    .line 4937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->findMotionRowX(I)I

    move-result v13

    .line 4938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->mFlingRunnable:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->flywheelTouch()V

    goto/16 :goto_2

    .line 4956
    .end local v13    # "motionPosition":I
    .end local v18    # "x":I
    .end local v19    # "y":I
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 4957
    .restart local v18    # "x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionX:I

    move/from16 v20, v0

    sub-int v9, v18, v20

    .line 4958
    .local v9, "deltaX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_1

    goto/16 :goto_1

    .line 4964
    :pswitch_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    .line 4974
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->mLastX:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 4975
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->mMotionCorrection:I

    move/from16 v20, v0

    sub-int v9, v9, v20

    .line 4976
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->mLastX:I

    move/from16 v20, v0

    const/high16 v21, -0x80000000

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->mLastX:I

    move/from16 v20, v0

    sub-int v11, v18, v20

    .line 4979
    .local v11, "incrementalDeltaX":I
    :goto_3
    const/4 v5, 0x0

    .line 4980
    .local v5, "atEdge":Z
    if-eqz v11, :cond_a

    .line 4981
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->trackMotionScroll(II)Z

    move-result v5

    .line 4985
    :cond_a
    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v20

    if-lez v20, :cond_c

    .line 4990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->findMotionRowX(I)I

    move-result v13

    .line 4991
    .restart local v13    # "motionPosition":I
    if-ltz v13, :cond_b

    .line 4992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v21, v13, v21

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 4993
    .local v14, "motionView":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->mMotionViewOriginalLeft:I

    .line 4995
    .end local v14    # "motionView":Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move/from16 v0, v18

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionX:I

    .line 4996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput v13, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionPosition:I

    .line 4997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->invalidate()V

    .line 4999
    .end local v13    # "motionPosition":I
    :cond_c
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->mLastX:I

    goto/16 :goto_1

    .end local v5    # "atEdge":Z
    .end local v11    # "incrementalDeltaX":I
    :cond_d
    move v11, v9

    .line 4976
    goto :goto_3

    .line 5008
    .end local v9    # "deltaX":I
    .end local v18    # "x":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_2

    .line 5103
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setPressed(Z)V

    .line 5106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->invalidate()V

    .line 5108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 5109
    .local v10, "handler":Landroid/os/Handler;
    if-eqz v10, :cond_e

    .line 5110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5113
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v20

    if-eqz v20, :cond_f

    .line 5114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 5115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2702(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 5118
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$3302(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;I)I

    goto/16 :goto_1

    .line 5012
    .end local v10    # "handler":Landroid/os/Handler;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v13, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionPosition:I

    .line 5013
    .restart local v13    # "motionPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v21, v13, v21

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5014
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_18

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v20

    if-nez v20, :cond_18

    .line 5015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 5016
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5019
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;

    move-result-object v20

    if-nez v20, :cond_11

    .line 5020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {v21 .. v23}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$1;)V

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2902(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;

    .line 5023
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;

    move-result-object v15

    .line 5024
    .local v15, "performClick":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;
    iput-object v6, v15, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;->mChild:Landroid/view/View;

    .line 5025
    iput v13, v15, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;->mClickMotionPosition:I

    .line 5026
    invoke-virtual {v15}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 5028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput v13, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mResurrectToPosition:I

    .line 5030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 5031
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 5032
    .restart local v10    # "handler":Landroid/os/Handler;
    if-eqz v10, :cond_13

    .line 5033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-nez v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    .line 5034
    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Ljava/lang/Runnable;

    move-result-object v20

    .line 5033
    :goto_5
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5036
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLayoutMode:I

    .line 5037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mDataChanged:Z

    move/from16 v20, v0

    if-nez v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 5038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 5039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionPosition:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setSelectedPositionInt(I)V

    .line 5040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->layoutChildren()V

    .line 5041
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->positionSelector(Landroid/view/View;)V

    .line 5043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setPressed(Z)V

    .line 5044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14

    .line 5045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 5046
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_14

    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_14

    .line 5047
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 5050
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v15}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$1;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;Landroid/view/View;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;)V

    .line 5059
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 5050
    invoke-virtual/range {v20 .. v23}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5063
    :goto_6
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 5034
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;

    move-result-object v20

    goto/16 :goto_5

    .line 5061
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    goto :goto_6

    .line 5064
    .end local v10    # "handler":Landroid/os/Handler;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mDataChanged:Z

    move/from16 v20, v0

    if-nez v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_18

    .line 5065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5068
    .end local v15    # "performClick":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    goto/16 :goto_4

    .line 5071
    .end local v6    # "child":Landroid/view/View;
    .end local v13    # "motionPosition":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v7

    .line 5072
    .local v7, "childCount":I
    if-lez v7, :cond_1c

    .line 5073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v20, v0

    if-nez v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v20, v0

    add-int v20, v20, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    add-int/lit8 v21, v7, -0x1

    .line 5075
    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    .line 5076
    invoke-virtual/range {v21 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_19

    .line 5077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 5078
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 5080
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v17

    .line 5081
    .local v17, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v20, 0x3e8

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 5082
    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v20

    move/from16 v0, v20

    float-to-int v12, v0

    .line 5084
    .local v12, "initialVelocity":I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$3100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1b

    .line 5085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->mFlingRunnable:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;

    move-object/from16 v20, v0

    if-nez v20, :cond_1a

    .line 5086
    new-instance v20, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$1;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->mFlingRunnable:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;

    .line 5088
    :cond_1a
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->reportScrollStateChange(I)V

    .line 5090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->mFlingRunnable:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;

    move-object/from16 v20, v0

    neg-int v0, v12

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->start(I)V

    goto/16 :goto_4

    .line 5092
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 5093
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 5097
    .end local v12    # "initialVelocity":I
    .end local v17    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 5098
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 5130
    .end local v7    # "childCount":I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 5131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setPressed(Z)V

    .line 5132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 5133
    .restart local v14    # "motionView":Landroid/view/View;
    if-eqz v14, :cond_1d

    .line 5134
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5136
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->clearScrollingCache()V

    .line 5138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 5139
    .restart local v10    # "handler":Landroid/os/Handler;
    if-eqz v10, :cond_1e

    .line 5140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5143
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v20

    if-eqz v20, :cond_1f

    .line 5144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 5145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2702(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 5148
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$3302(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;I)I

    goto/16 :goto_1

    .line 4908
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 4958
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 5008
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 5159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v2

    .line 5161
    .local v2, "childCount":I
    if-gtz v2, :cond_0

    .line 5162
    const/16 v17, 0x0

    .line 5253
    :goto_0
    return v17

    .line 5165
    :cond_0
    const/4 v12, 0x0

    .line 5167
    .local v12, "selectedLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 5168
    .local v3, "childrenLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getRight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getLeft()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 5169
    .local v4, "childrenRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    .line 5170
    .local v6, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mResurrectToPosition:I

    .line 5171
    .local v15, "toPosition":I
    const/4 v5, 0x1

    .line 5173
    .local v5, "down":Z
    if-lt v15, v6, :cond_3

    add-int v17, v6, v2

    move/from16 v0, v17

    if-ge v15, v0, :cond_3

    .line 5174
    move v13, v15

    .line 5176
    .local v13, "selectedPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    invoke-virtual/range {v17 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 5177
    .local v11, "selected":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 5178
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v14

    .line 5181
    .local v14, "selectedRight":I
    if-ge v12, v3, :cond_2

    .line 5182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v12, v3, v17

    .line 5238
    .end local v11    # "selected":Landroid/view/View;
    .end local v14    # "selectedRight":I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mResurrectToPosition:I

    .line 5239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->mFlingRunnable:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 5241
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->clearScrollingCache()V

    .line 5242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v12, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSpecificTop:I

    .line 5243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->lookForSelectablePosition(IZ)I

    move-result v13

    .line 5244
    if-lt v13, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v13, v0, :cond_b

    .line 5245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLayoutMode:I

    .line 5246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setSelectionInt(I)V

    .line 5247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->invokeOnItemScrollListener()V

    .line 5251
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->reportScrollStateChange(I)V

    .line 5253
    if-ltz v13, :cond_c

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 5183
    .restart local v11    # "selected":Landroid/view/View;
    .restart local v14    # "selectedRight":I
    :cond_2
    if-le v14, v4, :cond_1

    .line 5184
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v4, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v18, v0

    .line 5185
    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v18

    sub-int v12, v17, v18

    goto/16 :goto_1

    .line 5188
    .end local v11    # "selected":Landroid/view/View;
    .end local v13    # "selectedPos":I
    .end local v14    # "selectedRight":I
    :cond_3
    if-ge v15, v6, :cond_7

    .line 5190
    move v13, v6

    .line 5191
    .restart local v13    # "selectedPos":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v2, :cond_1

    .line 5192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 5193
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 5195
    .local v9, "left":I
    if-nez v7, :cond_5

    .line 5197
    move v12, v9

    .line 5199
    if-gtz v6, :cond_4

    if-ge v9, v3, :cond_5

    .line 5202
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v3, v3, v17

    .line 5205
    :cond_5
    if-lt v9, v3, :cond_6

    .line 5207
    add-int v13, v6, v7

    .line 5208
    move v12, v9

    .line 5209
    goto/16 :goto_1

    .line 5191
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 5213
    .end local v7    # "i":I
    .end local v9    # "left":I
    .end local v13    # "selectedPos":I
    .end local v16    # "v":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v8, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    .line 5214
    .local v8, "itemCount":I
    const/4 v5, 0x0

    .line 5215
    add-int v17, v6, v2

    add-int/lit8 v13, v17, -0x1

    .line 5217
    .restart local v13    # "selectedPos":I
    add-int/lit8 v7, v2, -0x1

    .restart local v7    # "i":I
    :goto_4
    if-ltz v7, :cond_1

    .line 5218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 5219
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 5220
    .restart local v9    # "left":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v10

    .line 5222
    .local v10, "right":I
    add-int/lit8 v17, v2, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_9

    .line 5223
    move v12, v9

    .line 5224
    add-int v17, v6, v2

    move/from16 v0, v17

    if-lt v0, v8, :cond_8

    if-le v10, v4, :cond_9

    .line 5225
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 5229
    :cond_9
    if-gt v10, v4, :cond_a

    .line 5230
    add-int v13, v6, v7

    .line 5231
    move v12, v9

    .line 5232
    goto/16 :goto_1

    .line 5217
    :cond_a
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 5249
    .end local v7    # "i":I
    .end local v8    # "itemCount":I
    .end local v9    # "left":I
    .end local v10    # "right":I
    .end local v16    # "v":Landroid/view/View;
    :cond_b
    const/4 v13, -0x1

    goto/16 :goto_2

    .line 5253
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method trackMotionScroll(II)Z
    .locals 26
    .param p1, "delta"    # I
    .param p2, "incrementalDelta"    # I

    .prologue
    .line 5262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v4

    .line 5263
    .local v4, "childCount":I
    if-nez v4, :cond_0

    .line 5264
    const/16 v24, 0x1

    .line 5400
    :goto_0
    return v24

    .line 5267
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 5268
    .local v9, "firstLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    add-int/lit8 v25, v4, -0x1

    invoke-virtual/range {v24 .. v25}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getRight()I

    move-result v15

    .line 5270
    .local v15, "lastRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 5273
    .local v17, "listPadding":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v20, v24, v9

    .line 5274
    .local v20, "spaceAbove":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getWidth()I

    move-result v24

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v8, v24, v25

    .line 5275
    .local v8, "end":I
    sub-int v21, v15, v8

    .line 5277
    .local v21, "spaceBelow":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getPaddingRight()I

    move-result v25

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getPaddingLeft()I

    move-result v25

    sub-int v23, v24, v25

    .line 5278
    .local v23, "width":I
    if-gez p1, :cond_1

    .line 5279
    add-int/lit8 v24, v23, -0x1

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5284
    :goto_1
    if-gez p2, :cond_2

    .line 5285
    add-int/lit8 v24, v23, -0x1

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 5290
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v10, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    .line 5292
    .local v10, "firstPosition":I
    if-nez v10, :cond_3

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v9, v0, :cond_3

    if-ltz p1, :cond_3

    .line 5298
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 5281
    .end local v10    # "firstPosition":I
    :cond_1
    add-int/lit8 v24, v23, -0x1

    move/from16 v0, v24

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 5287
    :cond_2
    add-int/lit8 v24, v23, -0x1

    move/from16 v0, v24

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    .line 5301
    .restart local v10    # "firstPosition":I
    :cond_3
    add-int v24, v10, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    if-gt v15, v8, :cond_4

    if-gtz p1, :cond_4

    .line 5307
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 5310
    :cond_4
    if-gez p2, :cond_c

    const/4 v7, 0x1

    .line 5312
    .local v7, "down":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isInTouchMode()Z

    move-result v14

    .line 5313
    .local v14, "inTouchMode":Z
    if-eqz v14, :cond_5

    .line 5314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->hideSelector()V

    .line 5317
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHeaderViewsCount()I

    move-result v12

    .line 5318
    .local v12, "headerViewsCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getFooterViewsCount()I

    move-result v25

    sub-int v11, v24, v25

    .line 5320
    .local v11, "footerViewsStart":I
    const/16 v22, 0x0

    .line 5321
    .local v22, "start":I
    const/4 v6, 0x0

    .line 5323
    .local v6, "count":I
    if-eqz v7, :cond_f

    .line 5324
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v16, v24, p2

    .line 5325
    .local v16, "left":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    if-ge v13, v4, :cond_6

    .line 5326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5327
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v16

    if-lt v0, v1, :cond_d

    .line 5366
    .end local v3    # "child":Landroid/view/View;
    .end local v16    # "left":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->mMotionViewOriginalLeft:I

    move/from16 v24, v0

    add-int v24, v24, p1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->mMotionViewNewLeft:I

    .line 5368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mBlockLayoutRequests:Z

    .line 5370
    if-lez v6, :cond_7

    .line 5371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-static {v0, v1, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$3800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;II)V

    .line 5373
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->offsetChildrenLeftAndRight(I)V

    .line 5375
    if-eqz v7, :cond_8

    .line 5376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v25, v0

    add-int v25, v25, v6

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    .line 5379
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->invalidate()V

    .line 5381
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 5382
    .local v2, "absIncrementalDelta":I
    move/from16 v0, v20

    if-lt v0, v2, :cond_9

    move/from16 v0, v21

    if-ge v0, v2, :cond_a

    .line 5383
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->fillGap(Z)V

    .line 5386
    :cond_a
    if-nez v14, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedPosition:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_b

    .line 5387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedPosition:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v25, v0

    sub-int v5, v24, v25

    .line 5388
    .local v5, "childIndex":I
    if-ltz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v24

    move/from16 v0, v24

    if-ge v5, v0, :cond_b

    .line 5389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->positionSelector(Landroid/view/View;)V

    .line 5393
    .end local v5    # "childIndex":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mBlockLayoutRequests:Z

    .line 5395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->invokeOnItemScrollListener()V

    .line 5400
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 5310
    .end local v2    # "absIncrementalDelta":I
    .end local v6    # "count":I
    .end local v7    # "down":Z
    .end local v11    # "footerViewsStart":I
    .end local v12    # "headerViewsCount":I
    .end local v13    # "i":I
    .end local v14    # "inTouchMode":Z
    .end local v22    # "start":I
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 5330
    .restart local v3    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "down":Z
    .restart local v11    # "footerViewsStart":I
    .restart local v12    # "headerViewsCount":I
    .restart local v13    # "i":I
    .restart local v14    # "inTouchMode":Z
    .restart local v16    # "left":I
    .restart local v22    # "start":I
    :cond_d
    add-int/lit8 v6, v6, 0x1

    .line 5331
    add-int v18, v10, v13

    .line 5332
    .local v18, "position":I
    move/from16 v0, v18

    if-lt v0, v12, :cond_e

    move/from16 v0, v18

    if-ge v0, v11, :cond_e

    .line 5333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 5325
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 5344
    .end local v3    # "child":Landroid/view/View;
    .end local v13    # "i":I
    .end local v16    # "left":I
    .end local v18    # "position":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getWidth()I

    move-result v24

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    sub-int v19, v24, p2

    .line 5345
    .local v19, "right":I
    add-int/lit8 v13, v4, -0x1

    .restart local v13    # "i":I
    :goto_5
    if-ltz v13, :cond_6

    .line 5346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5347
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 5350
    move/from16 v22, v13

    .line 5351
    add-int/lit8 v6, v6, 0x1

    .line 5352
    add-int v18, v10, v13

    .line 5353
    .restart local v18    # "position":I
    move/from16 v0, v18

    if-lt v0, v12, :cond_10

    move/from16 v0, v18

    if-ge v0, v11, :cond_10

    .line 5354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 5345
    :cond_10
    add-int/lit8 v13, v13, -0x1

    goto :goto_5
.end method

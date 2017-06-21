.class Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;
.super Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerticalTouchHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;
    }
.end annotation


# instance fields
.field mLastY:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field final synthetic this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    .prologue
    .line 3898
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V

    .line 4648
    return-void
.end method


# virtual methods
.method protected getFlingRunnable()Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;
    .locals 2

    .prologue
    .line 4513
    new-instance v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$1;)V

    return-object v0
.end method

.method protected getPositionScroller()Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;
    .locals 1

    .prologue
    .line 4508
    new-instance v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;)V

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

    .line 4192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 4203
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v6, v7

    .line 4251
    :goto_1
    return v6

    .line 4205
    :pswitch_0
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v2, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 4207
    .local v2, "touchMode":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 4208
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 4210
    .local v5, "y":I
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v8, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->findMotionRowY(I)I

    move-result v1

    .line 4211
    .local v1, "motionPosition":I
    if-eq v2, v10, :cond_1

    if-ltz v1, :cond_1

    .line 4214
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v9, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v9, v9, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    sub-int v9, v1, v9

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4215
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->mMotionViewOriginalTop:I

    .line 4216
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iput v4, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionX:I

    .line 4217
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iput v5, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionY:I

    .line 4218
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iput v1, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionPosition:I

    .line 4219
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iput v7, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 4220
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->clearScrollingCache()V

    .line 4222
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    const/high16 v8, -0x80000000

    iput v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->mLastY:I

    .line 4223
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$3400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V

    .line 4224
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4225
    if-ne v2, v10, :cond_0

    goto :goto_1

    .line 4232
    .end local v1    # "motionPosition":I
    .end local v2    # "touchMode":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :pswitch_1
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    packed-switch v8, :pswitch_data_1

    goto :goto_0

    .line 4234
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 4235
    .restart local v5    # "y":I
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionY:I

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->startScrollIfNeeded(I)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 4244
    .end local v5    # "y":I
    :pswitch_3
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iput v8, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 4245
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v6, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$3302(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;I)I

    .line 4246
    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->reportScrollStateChange(I)V

    goto :goto_0

    .line 4203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 4232
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isEnabled()Z

    move-result v20

    if-nez v20, :cond_2

    .line 3919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isClickable()Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isLongClickable()Z

    move-result v20

    if-eqz v20, :cond_1

    :cond_0
    const/16 v20, 0x1

    .line 4186
    :goto_0
    return v20

    .line 3919
    :cond_1
    const/16 v20, 0x0

    goto :goto_0

    .line 3930
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 3935
    .local v4, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v20

    if-nez v20, :cond_3

    .line 3936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2702(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 3938
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3940
    packed-switch v4, :pswitch_data_0

    .line 4186
    :cond_4
    :goto_1
    const/16 v20, 0x1

    goto :goto_0

    .line 3942
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 3943
    .local v18, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 3944
    .local v19, "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->pointToPosition(II)I

    move-result v13

    .line 3945
    .local v13, "motionPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mDataChanged:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 3946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

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

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    .line 3947
    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v20

    check-cast v20, Landroid/widget/ListAdapter;

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 3950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 3952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Ljava/lang/Runnable;

    move-result-object v20

    if-nez v20, :cond_5

    .line 3953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2802(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3955
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Ljava/lang/Runnable;

    move-result-object v21

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v20 .. v23}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3975
    :cond_6
    :goto_2
    if-ltz v13, :cond_7

    .line 3977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v21, v13, v21

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 3978
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->mMotionViewOriginalTop:I

    .line 3980
    .end local v16    # "v":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move/from16 v0, v18

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionX:I

    .line 3981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionY:I

    .line 3982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput v13, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionPosition:I

    .line 3983
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->mLastY:I

    goto/16 :goto_1

    .line 3957
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v20

    if-eqz v20, :cond_9

    if-gez v13, :cond_9

    .line 3961
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 3964
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 3966
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->createScrollingCache()V

    .line 3967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 3968
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->mMotionCorrection:I

    .line 3969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->findMotionRowY(I)I

    move-result v13

    .line 3970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->mFlingRunnable:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->flywheelTouch()V

    goto/16 :goto_2

    .line 3988
    .end local v13    # "motionPosition":I
    .end local v18    # "x":I
    .end local v19    # "y":I
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 3989
    .restart local v19    # "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionY:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    .line 3990
    .local v9, "deltaY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_1

    goto/16 :goto_1

    .line 3996
    :pswitch_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    .line 4006
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->mLastY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 4007
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->mMotionCorrection:I

    move/from16 v20, v0

    sub-int v9, v9, v20

    .line 4008
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->mLastY:I

    move/from16 v20, v0

    const/high16 v21, -0x80000000

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->mLastY:I

    move/from16 v20, v0

    sub-int v11, v19, v20

    .line 4011
    .local v11, "incrementalDeltaY":I
    :goto_3
    const/4 v5, 0x0

    .line 4012
    .local v5, "atEdge":Z
    if-eqz v11, :cond_a

    .line 4013
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->trackMotionScroll(II)Z

    move-result v5

    .line 4017
    :cond_a
    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v20

    if-lez v20, :cond_c

    .line 4022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->findMotionRowY(I)I

    move-result v13

    .line 4023
    .restart local v13    # "motionPosition":I
    if-ltz v13, :cond_b

    .line 4024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v21, v13, v21

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 4025
    .local v14, "motionView":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->mMotionViewOriginalTop:I

    .line 4027
    .end local v14    # "motionView":Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionY:I

    .line 4028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput v13, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionPosition:I

    .line 4029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->invalidate()V

    .line 4031
    .end local v13    # "motionPosition":I
    :cond_c
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->mLastY:I

    goto/16 :goto_1

    .end local v5    # "atEdge":Z
    .end local v11    # "incrementalDeltaY":I
    :cond_d
    move v11, v9

    .line 4008
    goto :goto_3

    .line 4040
    .end local v9    # "deltaY":I
    .end local v19    # "y":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_2

    .line 4135
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setPressed(Z)V

    .line 4138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->invalidate()V

    .line 4140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 4141
    .local v10, "handler":Landroid/os/Handler;
    if-eqz v10, :cond_e

    .line 4142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4145
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v20

    if-eqz v20, :cond_f

    .line 4146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 4147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2702(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 4150
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$3302(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;I)I

    goto/16 :goto_1

    .line 4044
    .end local v10    # "handler":Landroid/os/Handler;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v13, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionPosition:I

    .line 4045
    .restart local v13    # "motionPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v21, v13, v21

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4046
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_18

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v20

    if-nez v20, :cond_18

    .line 4047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 4048
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4051
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;

    move-result-object v20

    if-nez v20, :cond_11

    .line 4052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {v21 .. v23}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$1;)V

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2902(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;

    .line 4055
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;

    move-result-object v15

    .line 4056
    .local v15, "performClick":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;
    iput-object v6, v15, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;->mChild:Landroid/view/View;

    .line 4057
    iput v13, v15, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;->mClickMotionPosition:I

    .line 4058
    invoke-virtual {v15}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 4060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput v13, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mResurrectToPosition:I

    .line 4062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 4063
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 4064
    .restart local v10    # "handler":Landroid/os/Handler;
    if-eqz v10, :cond_13

    .line 4065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-nez v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    .line 4066
    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Ljava/lang/Runnable;

    move-result-object v20

    .line 4065
    :goto_5
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4068
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLayoutMode:I

    .line 4069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mDataChanged:Z

    move/from16 v20, v0

    if-nez v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 4070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 4071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionPosition:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setSelectedPositionInt(I)V

    .line 4072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->layoutChildren()V

    .line 4073
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->positionSelector(Landroid/view/View;)V

    .line 4075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setPressed(Z)V

    .line 4076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14

    .line 4077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 4078
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_14

    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_14

    .line 4079
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 4082
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v15}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$1;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;Landroid/view/View;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;)V

    .line 4091
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 4082
    invoke-virtual/range {v20 .. v23}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4095
    :goto_6
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 4066
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;

    move-result-object v20

    goto/16 :goto_5

    .line 4093
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    goto :goto_6

    .line 4096
    .end local v10    # "handler":Landroid/os/Handler;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mDataChanged:Z

    move/from16 v20, v0

    if-nez v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_18

    .line 4097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4100
    .end local v15    # "performClick":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$PerformClick;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    goto/16 :goto_4

    .line 4103
    .end local v6    # "child":Landroid/view/View;
    .end local v13    # "motionPosition":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v7

    .line 4104
    .local v7, "childCount":I
    if-lez v7, :cond_1c

    .line 4105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v20, v0

    if-nez v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v20, v0

    add-int v20, v20, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    add-int/lit8 v21, v7, -0x1

    .line 4107
    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    .line 4108
    invoke-virtual/range {v21 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_19

    .line 4109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 4110
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 4112
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v17

    .line 4113
    .local v17, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v20, 0x3e8

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 4114
    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v20

    move/from16 v0, v20

    float-to-int v12, v0

    .line 4116
    .local v12, "initialVelocity":I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$3100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1b

    .line 4117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->mFlingRunnable:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;

    move-object/from16 v20, v0

    if-nez v20, :cond_1a

    .line 4118
    new-instance v20, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$1;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->mFlingRunnable:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;

    .line 4120
    :cond_1a
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->reportScrollStateChange(I)V

    .line 4122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->mFlingRunnable:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;

    move-object/from16 v20, v0

    neg-int v0, v12

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;->start(I)V

    goto/16 :goto_4

    .line 4124
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 4125
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 4129
    .end local v12    # "initialVelocity":I
    .end local v17    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 4130
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 4162
    .end local v7    # "childCount":I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 4163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setPressed(Z)V

    .line 4164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 4165
    .restart local v14    # "motionView":Landroid/view/View;
    if-eqz v14, :cond_1d

    .line 4166
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4168
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->clearScrollingCache()V

    .line 4170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 4171
    .restart local v10    # "handler":Landroid/os/Handler;
    if-eqz v10, :cond_1e

    .line 4172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4175
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v20

    if-eqz v20, :cond_1f

    .line 4176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 4177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2702(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 4180
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$3302(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;I)I

    goto/16 :goto_1

    .line 3940
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 3990
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 4040
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
    .line 4408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v3

    .line 4410
    .local v3, "childCount":I
    if-gtz v3, :cond_0

    .line 4411
    const/16 v17, 0x0

    .line 4502
    :goto_0
    return v17

    .line 4414
    :cond_0
    const/4 v13, 0x0

    .line 4416
    .local v13, "selectedTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 4417
    .local v5, "childrenTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getBottom()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getTop()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 4418
    .local v4, "childrenBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v7, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    .line 4419
    .local v7, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v14, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mResurrectToPosition:I

    .line 4420
    .local v14, "toPosition":I
    const/4 v6, 0x1

    .line 4422
    .local v6, "down":Z
    if-lt v14, v7, :cond_3

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_3

    .line 4423
    move v12, v14

    .line 4425
    .local v12, "selectedPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v18, v12, v18

    invoke-virtual/range {v17 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4426
    .local v10, "selected":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 4427
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 4430
    .local v11, "selectedBottom":I
    if-ge v13, v5, :cond_2

    .line 4431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 4487
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mResurrectToPosition:I

    .line 4488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->mFlingRunnable:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$FlingRunnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 4490
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->clearScrollingCache()V

    .line 4491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v13, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSpecificTop:I

    .line 4492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 4493
    if-lt v12, v7, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_b

    .line 4494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLayoutMode:I

    .line 4495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setSelectionInt(I)V

    .line 4496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->invokeOnItemScrollListener()V

    .line 4500
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->reportScrollStateChange(I)V

    .line 4502
    if-ltz v12, :cond_c

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 4432
    .restart local v10    # "selected":Landroid/view/View;
    .restart local v11    # "selectedBottom":I
    :cond_2
    if-le v11, v4, :cond_1

    .line 4433
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v18, v0

    .line 4434
    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto/16 :goto_1

    .line 4437
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    .end local v12    # "selectedPos":I
    :cond_3
    if-ge v14, v7, :cond_7

    .line 4439
    move v12, v7

    .line 4440
    .restart local v12    # "selectedPos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v3, :cond_1

    .line 4441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 4442
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 4444
    .local v15, "top":I
    if-nez v8, :cond_5

    .line 4446
    move v13, v15

    .line 4448
    if-gtz v7, :cond_4

    if-ge v15, v5, :cond_5

    .line 4451
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 4454
    :cond_5
    if-lt v15, v5, :cond_6

    .line 4456
    add-int v12, v7, v8

    .line 4457
    move v13, v15

    .line 4458
    goto/16 :goto_1

    .line 4440
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 4462
    .end local v8    # "i":I
    .end local v12    # "selectedPos":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v9, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    .line 4463
    .local v9, "itemCount":I
    const/4 v6, 0x0

    .line 4464
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 4466
    .restart local v12    # "selectedPos":I
    add-int/lit8 v8, v3, -0x1

    .restart local v8    # "i":I
    :goto_4
    if-ltz v8, :cond_1

    .line 4467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 4468
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 4469
    .restart local v15    # "top":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 4471
    .local v2, "bottom":I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_9

    .line 4472
    move v13, v15

    .line 4473
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_8

    if-le v2, v4, :cond_9

    .line 4474
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 4478
    :cond_9
    if-gt v2, v4, :cond_a

    .line 4479
    add-int v12, v7, v8

    .line 4480
    move v13, v15

    .line 4481
    goto/16 :goto_1

    .line 4466
    :cond_a
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 4498
    .end local v2    # "bottom":I
    .end local v8    # "i":I
    .end local v9    # "itemCount":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_b
    const/4 v12, -0x1

    goto/16 :goto_2

    .line 4502
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method trackMotionScroll(II)Z
    .locals 26
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .prologue
    .line 4267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v5

    .line 4268
    .local v5, "childCount":I
    if-nez v5, :cond_0

    .line 4269
    const/16 v24, 0x1

    .line 4397
    :goto_0
    return v24

    .line 4272
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v11

    .line 4273
    .local v11, "firstTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    add-int/lit8 v25, v5, -0x1

    invoke-virtual/range {v24 .. v25}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getBottom()I

    move-result v17

    .line 4275
    .local v17, "lastBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 4278
    .local v18, "listPadding":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v20, v24, v11

    .line 4279
    .local v20, "spaceAbove":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHeight()I

    move-result v24

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v9, v24, v25

    .line 4280
    .local v9, "end":I
    sub-int v21, v17, v9

    .line 4282
    .local v21, "spaceBelow":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHeight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getPaddingBottom()I

    move-result v25

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getPaddingTop()I

    move-result v25

    sub-int v14, v24, v25

    .line 4283
    .local v14, "height":I
    if-gez p1, :cond_1

    .line 4284
    add-int/lit8 v24, v14, -0x1

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4289
    :goto_1
    if-gez p2, :cond_2

    .line 4290
    add-int/lit8 v24, v14, -0x1

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 4295
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v10, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    .line 4297
    .local v10, "firstPosition":I
    if-nez v10, :cond_3

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_3

    if-ltz p1, :cond_3

    .line 4300
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 4286
    .end local v10    # "firstPosition":I
    :cond_1
    add-int/lit8 v24, v14, -0x1

    move/from16 v0, v24

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 4292
    :cond_2
    add-int/lit8 v24, v14, -0x1

    move/from16 v0, v24

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    .line 4303
    .restart local v10    # "firstPosition":I
    :cond_3
    add-int v24, v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    move/from16 v0, v17

    if-gt v0, v9, :cond_4

    if-gtz p1, :cond_4

    .line 4306
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 4309
    :cond_4
    if-gez p2, :cond_c

    const/4 v8, 0x1

    .line 4311
    .local v8, "down":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isInTouchMode()Z

    move-result v16

    .line 4312
    .local v16, "inTouchMode":Z
    if-eqz v16, :cond_5

    .line 4313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->hideSelector()V

    .line 4316
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHeaderViewsCount()I

    move-result v13

    .line 4317
    .local v13, "headerViewsCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getFooterViewsCount()I

    move-result v25

    sub-int v12, v24, v25

    .line 4319
    .local v12, "footerViewsStart":I
    const/16 v22, 0x0

    .line 4320
    .local v22, "start":I
    const/4 v7, 0x0

    .line 4322
    .local v7, "count":I
    if-eqz v8, :cond_f

    .line 4323
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v24, p2

    .line 4324
    .local v23, "top":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4
    if-ge v15, v5, :cond_6

    .line 4325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4326
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v23

    if-lt v0, v1, :cond_d

    .line 4365
    .end local v4    # "child":Landroid/view/View;
    .end local v23    # "top":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->mMotionViewOriginalTop:I

    move/from16 v24, v0

    add-int v24, v24, p1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->mMotionViewNewTop:I

    .line 4367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mBlockLayoutRequests:Z

    .line 4369
    if-lez v7, :cond_7

    .line 4370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-static {v0, v1, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$3500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;II)V

    .line 4372
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->offsetChildrenTopAndBottom(I)V

    .line 4374
    if-eqz v8, :cond_8

    .line 4375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v25, v0

    add-int v25, v25, v7

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    .line 4378
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->invalidate()V

    .line 4380
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4381
    .local v2, "absIncrementalDeltaY":I
    move/from16 v0, v20

    if-lt v0, v2, :cond_9

    move/from16 v0, v21

    if-ge v0, v2, :cond_a

    .line 4382
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->fillGap(Z)V

    .line 4385
    :cond_a
    if-nez v16, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedPosition:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_b

    .line 4386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedPosition:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v25, v0

    sub-int v6, v24, v25

    .line 4387
    .local v6, "childIndex":I
    if-ltz v6, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v24

    move/from16 v0, v24

    if-ge v6, v0, :cond_b

    .line 4388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->positionSelector(Landroid/view/View;)V

    .line 4392
    .end local v6    # "childIndex":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mBlockLayoutRequests:Z

    .line 4394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->invokeOnItemScrollListener()V

    .line 4397
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 4309
    .end local v2    # "absIncrementalDeltaY":I
    .end local v7    # "count":I
    .end local v8    # "down":Z
    .end local v12    # "footerViewsStart":I
    .end local v13    # "headerViewsCount":I
    .end local v15    # "i":I
    .end local v16    # "inTouchMode":Z
    .end local v22    # "start":I
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 4329
    .restart local v4    # "child":Landroid/view/View;
    .restart local v7    # "count":I
    .restart local v8    # "down":Z
    .restart local v12    # "footerViewsStart":I
    .restart local v13    # "headerViewsCount":I
    .restart local v15    # "i":I
    .restart local v16    # "inTouchMode":Z
    .restart local v22    # "start":I
    .restart local v23    # "top":I
    :cond_d
    add-int/lit8 v7, v7, 0x1

    .line 4330
    add-int v19, v10, v15

    .line 4331
    .local v19, "position":I
    move/from16 v0, v19

    if-lt v0, v13, :cond_e

    move/from16 v0, v19

    if-ge v0, v12, :cond_e

    .line 4332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4324
    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 4343
    .end local v4    # "child":Landroid/view/View;
    .end local v15    # "i":I
    .end local v19    # "position":I
    .end local v23    # "top":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHeight()I

    move-result v24

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    sub-int v3, v24, p2

    .line 4344
    .local v3, "bottom":I
    add-int/lit8 v15, v5, -0x1

    .restart local v15    # "i":I
    :goto_5
    if-ltz v15, :cond_6

    .line 4345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4346
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v3, :cond_6

    .line 4349
    move/from16 v22, v15

    .line 4350
    add-int/lit8 v7, v7, 0x1

    .line 4351
    add-int v19, v10, v15

    .line 4352
    .restart local v19    # "position":I
    move/from16 v0, v19

    if-lt v0, v13, :cond_10

    move/from16 v0, v19

    if-ge v0, v12, :cond_10

    .line 4353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4344
    :cond_10
    add-int/lit8 v15, v15, -0x1

    goto :goto_5
.end method

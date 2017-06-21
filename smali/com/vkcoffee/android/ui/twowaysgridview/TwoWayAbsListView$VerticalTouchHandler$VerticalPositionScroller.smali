.class Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;
.super Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerticalPositionScroller"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    .prologue
    .line 4648
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 4651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getHeight()I

    move-result v15

    .line 4652
    .local v15, "listHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v5, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    .line 4654
    .local v5, "firstPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mMode:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 4778
    :cond_0
    :goto_0
    return-void

    .line 4656
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v21

    add-int/lit8 v12, v21, -0x1

    .line 4657
    .local v12, "lastViewIndex":I
    add-int v8, v5, v12

    .line 4659
    .local v8, "lastPos":I
    if-ltz v12, :cond_0

    .line 4663
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v8, v0, :cond_1

    .line 4665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4669
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4670
    .local v9, "lastView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 4671
    .local v11, "lastViewHeight":I
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v14

    .line 4672
    .local v14, "lastViewTop":I
    sub-int v13, v15, v14

    .line 4673
    .local v13, "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v8, v0, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mExtraScroll:I

    .line 4675
    .local v4, "extraScroll":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    sub-int v22, v11, v13

    add-int v22, v22, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->smoothScrollBy(II)V

    .line 4678
    move-object/from16 v0, p0

    iput v8, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    .line 4679
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mTargetPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_0

    .line 4680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4673
    .end local v4    # "extraScroll":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 4686
    .end local v8    # "lastPos":I
    .end local v9    # "lastView":Landroid/view/View;
    .end local v11    # "lastViewHeight":I
    .end local v12    # "lastViewIndex":I
    .end local v13    # "lastViewPixelsShowing":I
    .end local v14    # "lastViewTop":I
    :pswitch_1
    const/16 v19, 0x1

    .line 4687
    .local v19, "nextViewIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v3

    .line 4689
    .local v3, "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v5, v0, :cond_0

    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v3, v0, :cond_0

    add-int v21, v5, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 4693
    add-int/lit8 v16, v5, 0x1

    .line 4695
    .local v16, "nextPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 4697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4701
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 4702
    .local v17, "nextView":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v18

    .line 4703
    .local v18, "nextViewHeight":I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v20

    .line 4704
    .local v20, "nextViewTop":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mExtraScroll:I

    .line 4705
    .restart local v4    # "extraScroll":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 4706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    add-int v23, v18, v20

    sub-int v23, v23, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->smoothScrollBy(II)V

    .line 4709
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    .line 4711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4713
    :cond_4
    move/from16 v0, v20

    if-le v0, v4, :cond_0

    .line 4714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    sub-int v22, v20, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 4721
    .end local v3    # "childCount":I
    .end local v4    # "extraScroll":I
    .end local v16    # "nextPos":I
    .end local v17    # "nextView":Landroid/view/View;
    .end local v18    # "nextViewHeight":I
    .end local v19    # "nextViewIndex":I
    .end local v20    # "nextViewTop":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v5, v0, :cond_5

    .line 4723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4727
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4728
    .local v6, "firstView":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 4731
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    .line 4732
    .local v7, "firstViewTop":I
    if-lez v5, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mExtraScroll:I

    .line 4734
    .restart local v4    # "extraScroll":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    sub-int v22, v7, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->smoothScrollBy(II)V

    .line 4736
    move-object/from16 v0, p0

    iput v5, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    .line 4738
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mTargetPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v5, v0, :cond_0

    .line 4739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4732
    .end local v4    # "extraScroll":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 4745
    .end local v6    # "firstView":Landroid/view/View;
    .end local v7    # "firstViewTop":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v21

    add-int/lit8 v12, v21, -0x2

    .line 4746
    .restart local v12    # "lastViewIndex":I
    if-ltz v12, :cond_0

    .line 4749
    add-int v8, v5, v12

    .line 4751
    .restart local v8    # "lastPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v8, v0, :cond_7

    .line 4753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4757
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4758
    .restart local v9    # "lastView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 4759
    .restart local v11    # "lastViewHeight":I
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v14

    .line 4760
    .restart local v14    # "lastViewTop":I
    sub-int v13, v15, v14

    .line 4761
    .restart local v13    # "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iput v8, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    .line 4762
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v8, v0, :cond_8

    .line 4763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mExtraScroll:I

    move/from16 v22, v0

    sub-int v22, v13, v22

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->smoothScrollBy(II)V

    .line 4764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4766
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mExtraScroll:I

    move/from16 v21, v0

    sub-int v2, v15, v21

    .line 4767
    .local v2, "bottom":I
    add-int v10, v14, v11

    .line 4768
    .local v10, "lastViewBottom":I
    if-le v2, v10, :cond_0

    .line 4769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    sub-int v22, v2, v10

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$VerticalTouchHandler;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 4654
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

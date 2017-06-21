.class Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;
.super Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalPositionScroller"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    .prologue
    .line 5536
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 5539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getWidth()I

    move-result v14

    .line 5540
    .local v14, "listWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v4, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    .line 5542
    .local v4, "firstPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mMode:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 5666
    :cond_0
    :goto_0
    return-void

    .line 5544
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v21

    add-int/lit8 v9, v21, -0x1

    .line 5545
    .local v9, "lastViewIndex":I
    add-int v7, v4, v9

    .line 5547
    .local v7, "lastPos":I
    if-ltz v9, :cond_0

    .line 5551
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v7, v0, :cond_1

    .line 5553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5557
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 5558
    .local v8, "lastView":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v13

    .line 5559
    .local v13, "lastViewWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 5560
    .local v10, "lastViewLeft":I
    sub-int v11, v14, v10

    .line 5561
    .local v11, "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v7, v0, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mExtraScroll:I

    .line 5563
    .local v3, "extraScroll":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    sub-int v22, v13, v11

    add-int v22, v22, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->smoothScrollBy(II)V

    .line 5566
    move-object/from16 v0, p0

    iput v7, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    .line 5567
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mTargetPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_0

    .line 5568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 5561
    .end local v3    # "extraScroll":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 5574
    .end local v7    # "lastPos":I
    .end local v8    # "lastView":Landroid/view/View;
    .end local v9    # "lastViewIndex":I
    .end local v10    # "lastViewLeft":I
    .end local v11    # "lastViewPixelsShowing":I
    .end local v13    # "lastViewWidth":I
    :pswitch_1
    const/16 v17, 0x1

    .line 5575
    .local v17, "nextViewIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v2

    .line 5577
    .local v2, "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v4, v0, :cond_0

    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v2, v0, :cond_0

    add-int v21, v4, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mItemCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 5581
    add-int/lit8 v15, v4, 0x1

    .line 5583
    .local v15, "nextPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v15, v0, :cond_3

    .line 5585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 5589
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 5590
    .local v16, "nextView":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v19

    .line 5591
    .local v19, "nextViewWidth":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v18

    .line 5592
    .local v18, "nextViewLeft":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mExtraScroll:I

    .line 5593
    .restart local v3    # "extraScroll":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v15, v0, :cond_4

    .line 5594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    add-int v23, v19, v18

    sub-int v23, v23, v3

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->smoothScrollBy(II)V

    .line 5597
    move-object/from16 v0, p0

    iput v15, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    .line 5599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 5601
    :cond_4
    move/from16 v0, v18

    if-le v0, v3, :cond_0

    .line 5602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    sub-int v22, v18, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 5609
    .end local v2    # "childCount":I
    .end local v3    # "extraScroll":I
    .end local v15    # "nextPos":I
    .end local v16    # "nextView":Landroid/view/View;
    .end local v17    # "nextViewIndex":I
    .end local v18    # "nextViewLeft":I
    .end local v19    # "nextViewWidth":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v4, v0, :cond_5

    .line 5611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 5615
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 5616
    .local v5, "firstView":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 5619
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 5620
    .local v6, "firstViewLeft":I
    if-lez v4, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mExtraScroll:I

    .line 5622
    .restart local v3    # "extraScroll":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    sub-int v22, v6, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->smoothScrollBy(II)V

    .line 5624
    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    .line 5626
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mTargetPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v4, v0, :cond_0

    .line 5627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 5620
    .end local v3    # "extraScroll":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 5633
    .end local v5    # "firstView":Landroid/view/View;
    .end local v6    # "firstViewLeft":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v21

    add-int/lit8 v9, v21, -0x2

    .line 5634
    .restart local v9    # "lastViewIndex":I
    if-ltz v9, :cond_0

    .line 5637
    add-int v7, v4, v9

    .line 5639
    .restart local v7    # "lastPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v7, v0, :cond_7

    .line 5641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 5645
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 5646
    .restart local v8    # "lastView":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v13

    .line 5647
    .restart local v13    # "lastViewWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 5648
    .restart local v10    # "lastViewLeft":I
    sub-int v11, v14, v10

    .line 5649
    .restart local v11    # "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iput v7, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    .line 5650
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v7, v0, :cond_8

    .line 5651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mExtraScroll:I

    move/from16 v22, v0

    sub-int v22, v11, v22

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->smoothScrollBy(II)V

    .line 5652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 5654
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mExtraScroll:I

    move/from16 v21, v0

    sub-int v20, v14, v21

    .line 5655
    .local v20, "right":I
    add-int v12, v10, v13

    .line 5656
    .local v12, "lastViewRight":I
    move/from16 v0, v20

    if-le v0, v12, :cond_0

    .line 5657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    sub-int v22, v20, v12

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$HorizontalTouchHandler;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 5542
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

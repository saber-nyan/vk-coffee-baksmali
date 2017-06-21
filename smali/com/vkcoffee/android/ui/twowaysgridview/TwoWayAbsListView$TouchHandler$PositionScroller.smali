.class abstract Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PositionScroller"
.end annotation


# static fields
.field protected static final MOVE_DOWN_BOUND:I = 0x3

.field protected static final MOVE_DOWN_POS:I = 0x1

.field protected static final MOVE_UP_BOUND:I = 0x4

.field protected static final MOVE_UP_POS:I = 0x2

.field protected static final SCROLL_DURATION:I = 0x190


# instance fields
.field protected mBoundPos:I

.field protected final mExtraScroll:I

.field protected mLastSeenPos:I

.field protected mMode:I

.field protected mScrollDuration:I

.field protected mTargetPos:I

.field protected mVertical:Z

.field final synthetic this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;)V
    .locals 1
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    .prologue
    .line 3792
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3793
    iget-object v0, p1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->mExtraScroll:I

    .line 3794
    return-void
.end method


# virtual methods
.method public abstract run()V
.end method

.method start(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/16 v5, 0x190

    const/4 v4, -0x1

    .line 3797
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v0, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    .line 3798
    .local v0, "firstPos":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v1, v3, -0x1

    .line 3800
    .local v1, "lastPos":I
    const/4 v2, 0x0

    .line 3801
    .local v2, "viewTravelCount":I
    if-gt p1, v0, :cond_1

    .line 3802
    sub-int v3, v0, p1

    add-int/lit8 v2, v3, 0x1

    .line 3803
    const/4 v3, 0x2

    iput v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->mMode:I

    .line 3812
    :goto_0
    if-lez v2, :cond_2

    .line 3813
    div-int v3, v5, v2

    iput v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->mScrollDuration:I

    .line 3817
    :goto_1
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->mTargetPos:I

    .line 3818
    iput v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->mBoundPos:I

    .line 3819
    iput v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->mLastSeenPos:I

    .line 3821
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v3, p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3822
    :cond_0
    return-void

    .line 3804
    :cond_1
    if-lt p1, v1, :cond_0

    .line 3805
    sub-int v3, p1, v1

    add-int/lit8 v2, v3, 0x1

    .line 3806
    const/4 v3, 0x1

    iput v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->mMode:I

    goto :goto_0

    .line 3815
    :cond_2
    iput v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->mScrollDuration:I

    goto :goto_1
.end method

.method start(II)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    const/16 v10, 0x190

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 3825
    if-ne p2, v9, :cond_1

    .line 3826
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->start(I)V

    .line 3881
    :cond_0
    :goto_0
    return-void

    .line 3830
    :cond_1
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    iget-object v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v3, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    .line 3831
    .local v3, "firstPos":I
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    iget-object v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v3

    add-int/lit8 v4, v7, -0x1

    .line 3833
    .local v4, "lastPos":I
    const/4 v6, 0x0

    .line 3834
    .local v6, "viewTravelCount":I
    if-gt p1, v3, :cond_3

    .line 3835
    sub-int v1, v4, p2

    .line 3836
    .local v1, "boundPosFromLast":I
    if-lt v1, v8, :cond_0

    .line 3841
    sub-int v7, v3, p1

    add-int/lit8 v5, v7, 0x1

    .line 3842
    .local v5, "posTravel":I
    add-int/lit8 v2, v1, -0x1

    .line 3843
    .local v2, "boundTravel":I
    if-ge v2, v5, :cond_2

    .line 3844
    move v6, v2

    .line 3845
    const/4 v7, 0x4

    iput v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->mMode:I

    .line 3871
    .end local v1    # "boundPosFromLast":I
    :goto_1
    if-lez v6, :cond_5

    .line 3872
    div-int v7, v10, v6

    iput v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->mScrollDuration:I

    .line 3876
    :goto_2
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->mTargetPos:I

    .line 3877
    iput p2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->mBoundPos:I

    .line 3878
    iput v9, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->mLastSeenPos:I

    .line 3880
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    iget-object v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v7, p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3847
    .restart local v1    # "boundPosFromLast":I
    :cond_2
    move v6, v5

    .line 3848
    const/4 v7, 0x2

    iput v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->mMode:I

    goto :goto_1

    .line 3850
    .end local v1    # "boundPosFromLast":I
    .end local v2    # "boundTravel":I
    .end local v5    # "posTravel":I
    :cond_3
    if-lt p1, v4, :cond_0

    .line 3851
    sub-int v0, p2, v3

    .line 3852
    .local v0, "boundPosFromFirst":I
    if-lt v0, v8, :cond_0

    .line 3857
    sub-int v7, p1, v4

    add-int/lit8 v5, v7, 0x1

    .line 3858
    .restart local v5    # "posTravel":I
    add-int/lit8 v2, v0, -0x1

    .line 3859
    .restart local v2    # "boundTravel":I
    if-ge v2, v5, :cond_4

    .line 3860
    move v6, v2

    .line 3861
    const/4 v7, 0x3

    iput v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->mMode:I

    goto :goto_1

    .line 3863
    :cond_4
    move v6, v5

    .line 3864
    iput v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->mMode:I

    goto :goto_1

    .line 3874
    .end local v0    # "boundPosFromFirst":I
    :cond_5
    iput v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method stop()V
    .locals 1

    .prologue
    .line 3884
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3885
    return-void
.end method

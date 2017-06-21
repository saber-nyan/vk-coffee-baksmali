.class final Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    .prologue
    .line 2083
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 2085
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v4, v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    if-nez v4, :cond_2

    .line 2086
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iput v7, v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    .line 2087
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v5, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mMotionPosition:I

    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v6, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2088
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2089
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    const/4 v5, 0x0

    iput v5, v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mLayoutMode:I

    .line 2091
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-boolean v4, v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mDataChanged:Z

    if-nez v4, :cond_5

    .line 2092
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->layoutChildren()V

    .line 2093
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 2094
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v4, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->positionSelector(Landroid/view/View;)V

    .line 2095
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v4, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setPressed(Z)V

    .line 2097
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .line 2098
    .local v3, "longPressTimeout":I
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isLongClickable()Z

    move-result v2

    .line 2100
    .local v2, "longClickable":Z
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v4, v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 2101
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v4, v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2102
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_0

    .line 2103
    if-eqz v2, :cond_3

    .line 2104
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2111
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 2112
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2113
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    new-instance v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;

    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$1;)V

    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$602(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;

    .line 2115
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 2116
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2125
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_2
    :goto_1
    return-void

    .line 2106
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "longClickable":Z
    .restart local v3    # "longPressTimeout":I
    :cond_3
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    .line 2118
    :cond_4
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iput v8, v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    goto :goto_1

    .line 2121
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_5
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForTap;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iput v8, v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mTouchMode:I

    goto :goto_1
.end method

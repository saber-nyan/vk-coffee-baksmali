.class Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;
.super Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;
.source "TwoWayGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HorizontalGridBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)V
    .locals 1

    .prologue
    .line 2166
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
    .param p2, "x1"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$1;

    .prologue
    .line 2166
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)V

    return-void
.end method

.method private adjustForLeftFadingEdge(Landroid/view/View;II)V
    .locals 4
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "leftSelectionPixel"    # I
    .param p3, "rightSelectionPixel"    # I

    .prologue
    .line 3171
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, p2, :cond_0

    .line 3174
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v1, p2, v3

    .line 3178
    .local v1, "spaceToLeft":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v2, p3, v3

    .line 3179
    .local v2, "spaceToRight":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3182
    .local v0, "offset":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v3, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    .line 3184
    .end local v0    # "offset":I
    .end local v1    # "spaceToLeft":I
    .end local v2    # "spaceToRight":I
    :cond_0
    return-void
.end method

.method private adjustForRightFadingEdge(Landroid/view/View;II)V
    .locals 5
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "leftSelectionPixel"    # I
    .param p3, "rightSelectionPixel"    # I

    .prologue
    .line 3143
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, p3, :cond_0

    .line 3147
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v1, v3, p2

    .line 3151
    .local v1, "spaceToLeft":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v2, v3, p3

    .line 3152
    .local v2, "spaceToRight":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3155
    .local v0, "offset":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    neg-int v4, v0

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    .line 3157
    .end local v0    # "offset":I
    .end local v1    # "spaceToLeft":I
    .end local v2    # "spaceToRight":I
    :cond_0
    return-void
.end method

.method private adjustViewsLeftOrRight()V
    .locals 6

    .prologue
    .line 3192
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v1

    .line 3194
    .local v1, "childCount":I
    if-lez v1, :cond_2

    .line 3198
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 3201
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3202
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v4, v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v4

    .line 3203
    .local v2, "delta":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 3206
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 3208
    :cond_0
    if-gez v2, :cond_1

    .line 3210
    const/4 v2, 0x0

    .line 3229
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 3230
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    neg-int v4, v2

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    .line 3233
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    .line 3214
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3215
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v5, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 3217
    .restart local v2    # "delta":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v4, v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 3220
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3223
    :cond_4
    if-lez v2, :cond_1

    .line 3225
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private correctTooLeft(III)V
    .locals 9
    .param p1, "numRows"    # I
    .param p2, "horizontalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 2532
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v4, v7, -0x1

    .line 2533
    .local v4, "lastPosition":I
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_3

    if-lez p3, :cond_3

    .line 2535
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    add-int/lit8 v8, p3, -0x1

    invoke-virtual {v7, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2538
    .local v3, "lastChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    .line 2540
    .local v5, "lastRight":I
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getRight()I

    move-result v7

    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v0, v7, v8

    .line 2544
    .local v0, "end":I
    sub-int v6, v0, v5

    .line 2546
    .local v6, "rightOffset":I
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2547
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2551
    .local v2, "firstLeft":I
    if-lez v6, :cond_3

    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v2, v7, :cond_3

    .line 2552
    :cond_0
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 2554
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2558
    :cond_1
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v7, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    .line 2559
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    if-lez v7, :cond_3

    .line 2562
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v8, :cond_2

    const/4 p1, 0x1

    .end local p1    # "numRows":I
    :cond_2
    sub-int/2addr v7, p1

    .line 2563
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, p2

    .line 2562
    invoke-direct {p0, v7, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    .line 2565
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    .line 2569
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstLeft":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "lastRight":I
    .end local v6    # "rightOffset":I
    :cond_3
    return-void
.end method

.method private correctTooRight(III)V
    .locals 10
    .param p1, "numRows"    # I
    .param p2, "horizontalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 2575
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    if-nez v8, :cond_3

    if-lez p3, :cond_3

    .line 2577
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2580
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2583
    .local v2, "firstLeft":I
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v8, Landroid/graphics/Rect;->left:I

    .line 2586
    .local v7, "start":I
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getRight()I

    move-result v8

    iget-object v9, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v9, v9, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v0, v8, v9

    .line 2590
    .local v0, "end":I
    sub-int v6, v2, v7

    .line 2591
    .local v6, "leftOffset":I
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    add-int/lit8 v9, p3, -0x1

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2592
    .local v3, "lastChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    .line 2593
    .local v5, "lastRight":I
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v4, v8, -0x1

    .line 2597
    .local v4, "lastPosition":I
    if-lez v6, :cond_3

    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v4, v8, :cond_0

    if-le v5, v0, :cond_3

    .line 2598
    :cond_0
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_1

    .line 2600
    sub-int v8, v5, v0

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2604
    :cond_1
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    neg-int v9, v6

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    .line 2605
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_3

    .line 2608
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    const/4 p1, 0x1

    .end local p1    # "numRows":I
    :cond_2
    add-int v8, v4, p1

    .line 2609
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v9

    add-int/2addr v9, p2

    .line 2608
    invoke-direct {p0, v8, v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    .line 2611
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    .line 2615
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstLeft":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v4    # "lastPosition":I
    .end local v5    # "lastRight":I
    .end local v6    # "leftOffset":I
    .end local v7    # "start":I
    :cond_3
    return-void
.end method

.method private determineRows(I)V
    .locals 8
    .param p1, "availableSpace"    # I

    .prologue
    const/4 v7, 0x1

    .line 2959
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$1200(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v1

    .line 2960
    .local v1, "requestedVerticalSpacing":I
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v3

    .line 2961
    .local v3, "stretchMode":I
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v0

    .line 2962
    .local v0, "requestedRowHeight":I
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$1000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$702(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    .line 2964
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 2965
    if-lez v0, :cond_1

    .line 2967
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$1200(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    add-int/2addr v5, p1

    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .line 2968
    invoke-static {v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$1200(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v6

    add-int/2addr v6, v0

    div-int/2addr v5, v6

    .line 2967
    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2002(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    .line 2978
    :goto_0
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    if-gtz v4, :cond_0

    .line 2979
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2002(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    .line 2982
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 2990
    const/4 v2, 0x0

    .line 2991
    .local v2, "spaceLeftOver":I
    packed-switch v3, :pswitch_data_1

    .line 3031
    .end local v2    # "spaceLeftOver":I
    :goto_1
    return-void

    .line 2971
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2002(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    goto :goto_0

    .line 2975
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2002(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    goto :goto_0

    .line 2985
    :pswitch_0
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2102(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    .line 2986
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$1200(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$402(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    goto :goto_1

    .line 2993
    .restart local v2    # "spaceLeftOver":I
    :pswitch_1
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    mul-int/2addr v4, v0

    sub-int v4, p1, v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .line 2994
    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v1

    sub-int v2, v4, v5

    .line 2996
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    div-int v5, v2, v5

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2102(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    .line 2997
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$402(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    goto :goto_1

    .line 3001
    :pswitch_2
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    mul-int/2addr v4, v0

    sub-int v4, p1, v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .line 3002
    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v1

    sub-int v2, v4, v5

    .line 3004
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2102(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    .line 3005
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    if-le v4, v7, :cond_3

    .line 3006
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .line 3007
    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    div-int v5, v2, v5

    add-int/2addr v5, v1

    .line 3006
    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$402(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    goto/16 :goto_1

    .line 3009
    :cond_3
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    add-int v5, v1, v2

    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$402(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    goto/16 :goto_1

    .line 3015
    :pswitch_3
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    mul-int/2addr v4, v0

    sub-int v4, p1, v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .line 3016
    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v5, v1

    sub-int v2, v4, v5

    .line 3017
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2102(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    .line 3018
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    if-le v4, v7, :cond_4

    .line 3019
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    div-int v5, v2, v5

    add-int/2addr v5, v1

    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$402(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    goto/16 :goto_1

    .line 3021
    :cond_4
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$402(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    goto/16 :goto_1

    .line 2982
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 2991
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3
    .param p1, "lastPosition"    # I
    .param p2, "nextRight"    # I

    .prologue
    .line 2394
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v1, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2395
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v1, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2397
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v1, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 2398
    .local v0, "invertedPosition":I
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v1, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v2

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 2400
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .param p1, "selectedLeft"    # I
    .param p2, "childrenLeft"    # I
    .param p3, "childrenRight"    # I

    .prologue
    .line 3047
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v12}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getHorizontalFadingEdgeLength()I

    move-result v3

    .line 3048
    .local v3, "fadingEdgeLength":I
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v11, v12, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    .line 3049
    .local v11, "selectedPosition":I
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v12}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v7

    .line 3050
    .local v7, "numRows":I
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v12}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    .line 3053
    .local v4, "horizontalSpacing":I
    const/4 v1, -0x1

    .line 3055
    .local v1, "columnEnd":I
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v12, v12, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v12, :cond_0

    .line 3056
    rem-int v12, v11, v7

    sub-int v2, v11, v12

    .line 3067
    .local v2, "columnStart":I
    :goto_0
    move/from16 v0, p2

    invoke-direct {p0, v0, v3, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->getLeftSelectionPixel(III)I

    move-result v6

    .line 3068
    .local v6, "leftSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v3, v7, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->getRightSelectionPixel(IIII)I

    move-result v9

    .line 3071
    .local v9, "rightSelectionPixel":I
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v12, v12, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v12, :cond_1

    move v12, v1

    :goto_1
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object v10

    .line 3073
    .local v10, "sel":Landroid/view/View;
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iput v2, v12, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 3075
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v12}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v8

    .line 3076
    .local v8, "referenceView":Landroid/view/View;
    invoke-direct {p0, v8, v6, v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->adjustForLeftFadingEdge(Landroid/view/View;II)V

    .line 3077
    invoke-direct {p0, v8, v6, v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->adjustForRightFadingEdge(Landroid/view/View;II)V

    .line 3079
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v12, v12, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v12, :cond_2

    .line 3080
    sub-int v12, v2, v7

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v13

    sub-int/2addr v13, v4

    invoke-direct {p0, v12, v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    .line 3081
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    .line 3082
    add-int v12, v2, v7

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v13

    add-int/2addr v13, v4

    invoke-direct {p0, v12, v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    .line 3090
    :goto_2
    return-object v10

    .line 3058
    .end local v2    # "columnStart":I
    .end local v6    # "leftSelectionPixel":I
    .end local v8    # "referenceView":Landroid/view/View;
    .end local v9    # "rightSelectionPixel":I
    .end local v10    # "sel":Landroid/view/View;
    :cond_0
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v12, v12, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v5, v12, v11

    .line 3060
    .local v5, "invertedSelection":I
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v12, v12, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v5, v7

    sub-int v13, v5, v13

    sub-int v1, v12, v13

    .line 3061
    const/4 v12, 0x0

    sub-int v13, v1, v7

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    .restart local v2    # "columnStart":I
    goto :goto_0

    .end local v5    # "invertedSelection":I
    .restart local v6    # "leftSelectionPixel":I
    .restart local v9    # "rightSelectionPixel":I
    :cond_1
    move v12, v2

    .line 3071
    goto :goto_1

    .line 3084
    .restart local v8    # "referenceView":Landroid/view/View;
    .restart local v10    # "sel":Landroid/view/View;
    :cond_2
    add-int v12, v1, v7

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v13

    add-int/2addr v13, v4

    invoke-direct {p0, v12, v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    .line 3085
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    .line 3086
    add-int/lit8 v12, v2, -0x1

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v13

    sub-int/2addr v13, v4

    invoke-direct {p0, v12, v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    goto :goto_2
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 4
    .param p1, "nextLeft"    # I

    .prologue
    .line 2381
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v1, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 2382
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v1, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 2383
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 2384
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 2386
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v3

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 2387
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillLeft(II)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "nextRight"    # I

    .prologue
    const/4 v5, 0x0

    .line 2345
    const/4 v1, 0x0

    .line 2347
    .local v1, "selectedView":Landroid/view/View;
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->left:I

    .line 2349
    .local v0, "end":I
    :goto_0
    if-le p2, v0, :cond_1

    if-ltz p1, :cond_1

    .line 2351
    invoke-direct {p0, p1, p2, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object v2

    .line 2352
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 2353
    move-object v1, v2

    .line 2356
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    sub-int p2, v3, v4

    .line 2358
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iput p1, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 2360
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v3

    sub-int/2addr p1, v3

    .line 2361
    goto :goto_0

    .line 2363
    .end local v2    # "temp":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v3, :cond_2

    .line 2364
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 2367
    :cond_2
    return-object v1
.end method

.method private fillRight(II)Landroid/view/View;
    .locals 5
    .param p1, "pos"    # I
    .param p2, "nextLeft"    # I

    .prologue
    .line 2256
    const/4 v1, 0x0

    .line 2258
    .local v1, "selectedView":Landroid/view/View;
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v4, v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v0, v3, v4

    .line 2260
    .local v0, "end":I
    :goto_0
    if-ge p2, v0, :cond_1

    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    if-ge p1, v3, :cond_1

    .line 2261
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object v2

    .line 2262
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 2263
    move-object v1, v2

    .line 2268
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    add-int p2, v3, v4

    .line 2270
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v3

    add-int/2addr p1, v3

    .line 2271
    goto :goto_0

    .line 2273
    .end local v2    # "temp":Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 15
    .param p1, "childrenLeft"    # I
    .param p2, "childrenRight"    # I

    .prologue
    .line 2407
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->reconcileSelectedPosition()I

    move-result v12

    .line 2408
    .local v12, "selectedPosition":I
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v7

    .line 2409
    .local v7, "numRows":I
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    .line 2412
    .local v4, "horizontalSpacing":I
    const/4 v1, -0x1

    .line 2414
    .local v1, "columnEnd":I
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v13, v13, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v13, :cond_0

    .line 2415
    rem-int v13, v12, v7

    sub-int v2, v12, v13

    .line 2423
    .local v2, "columnStart":I
    :goto_0
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getHorizontalFadingEdgeLength()I

    move-result v3

    .line 2424
    .local v3, "fadingEdgeLength":I
    move/from16 v0, p1

    invoke-direct {p0, v0, v3, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->getLeftSelectionPixel(III)I

    move-result v6

    .line 2426
    .local v6, "leftSelectionPixel":I
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v13, v13, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v13, :cond_1

    move v13, v1

    :goto_1
    const/4 v14, 0x1

    invoke-direct {p0, v13, v6, v14}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object v11

    .line 2427
    .local v11, "sel":Landroid/view/View;
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iput v2, v13, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 2429
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v9

    .line 2431
    .local v9, "referenceView":Landroid/view/View;
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v13, v13, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v13, :cond_2

    .line 2432
    add-int v13, v2, v7

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v14

    add-int/2addr v14, v4

    invoke-direct {p0, v13, v14}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    .line 2433
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->pinToRight(I)V

    .line 2434
    sub-int v13, v2, v7

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int/2addr v14, v4

    invoke-direct {p0, v13, v14}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    .line 2435
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    .line 2447
    :goto_2
    return-object v11

    .line 2417
    .end local v2    # "columnStart":I
    .end local v3    # "fadingEdgeLength":I
    .end local v6    # "leftSelectionPixel":I
    .end local v9    # "referenceView":Landroid/view/View;
    .end local v11    # "sel":Landroid/view/View;
    :cond_0
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v13, v13, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v5, v13, v12

    .line 2419
    .local v5, "invertedSelection":I
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v13, v13, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v5, v7

    sub-int v14, v5, v14

    sub-int v1, v13, v14

    .line 2420
    const/4 v13, 0x0

    sub-int v14, v1, v7

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    .restart local v2    # "columnStart":I
    goto :goto_0

    .end local v5    # "invertedSelection":I
    .restart local v3    # "fadingEdgeLength":I
    .restart local v6    # "leftSelectionPixel":I
    :cond_1
    move v13, v2

    .line 2426
    goto :goto_1

    .line 2437
    .restart local v9    # "referenceView":Landroid/view/View;
    .restart local v11    # "sel":Landroid/view/View;
    :cond_2
    move/from16 v0, p2

    invoke-direct {p0, v0, v3, v7, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->getRightSelectionPixel(IIII)I

    move-result v10

    .line 2439
    .local v10, "rightSelectionPixel":I
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v13

    sub-int v8, v10, v13

    .line 2440
    .local v8, "offset":I
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v13, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    .line 2441
    add-int/lit8 v13, v2, -0x1

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int/2addr v14, v4

    invoke-direct {p0, v13, v14}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    .line 2442
    invoke-direct/range {p0 .. p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->pinToLeft(I)V

    .line 2443
    add-int v13, v1, v7

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v14

    add-int/2addr v14, v4

    invoke-direct {p0, v13, v14}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    .line 2444
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    goto :goto_2
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "left"    # I

    .prologue
    .line 2465
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v10}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v6

    .line 2468
    .local v6, "numRows":I
    const/4 v4, -0x1

    .line 2470
    .local v4, "motionColumnEnd":I
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v10, v10, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v10, :cond_1

    .line 2472
    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .line 2481
    .local v5, "motionColumnStart":I
    :goto_0
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v10, v10, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v10, :cond_2

    move v10, v4

    :goto_1
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object v9

    .line 2484
    .local v9, "temp":Landroid/view/View;
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iput v5, v10, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 2486
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v10}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v7

    .line 2488
    .local v7, "referenceView":Landroid/view/View;
    if-nez v7, :cond_3

    .line 2489
    const/4 v9, 0x0

    .line 2522
    .end local v9    # "temp":Landroid/view/View;
    :cond_0
    :goto_2
    return-object v9

    .line 2475
    .end local v5    # "motionColumnStart":I
    .end local v7    # "referenceView":Landroid/view/View;
    :cond_1
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v10, v10, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v2, v10, p1

    .line 2477
    .local v2, "invertedSelection":I
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v10, v10, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v2, v6

    sub-int v11, v2, v11

    sub-int v4, v10, v11

    .line 2478
    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5    # "motionColumnStart":I
    goto :goto_0

    .end local v2    # "invertedSelection":I
    :cond_2
    move v10, v5

    .line 2481
    goto :goto_1

    .line 2492
    .restart local v7    # "referenceView":Landroid/view/View;
    .restart local v9    # "temp":Landroid/view/View;
    :cond_3
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v10}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v1

    .line 2497
    .local v1, "horizontalSpacing":I
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v10, v10, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v10, :cond_5

    .line 2498
    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int/2addr v11, v1

    invoke-direct {p0, v10, v11}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    move-result-object v3

    .line 2499
    .local v3, "leftOf":Landroid/view/View;
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    .line 2500
    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v11

    add-int/2addr v11, v1

    invoke-direct {p0, v10, v11}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    move-result-object v8

    .line 2502
    .local v8, "rightOf":Landroid/view/View;
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v10}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v0

    .line 2503
    .local v0, "childCount":I
    if-lez v0, :cond_4

    .line 2504
    invoke-direct {p0, v6, v1, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->correctTooLeft(III)V

    .line 2517
    :cond_4
    :goto_3
    if-nez v9, :cond_0

    .line 2519
    if-eqz v3, :cond_6

    move-object v9, v3

    .line 2520
    goto :goto_2

    .line 2507
    .end local v0    # "childCount":I
    .end local v3    # "leftOf":Landroid/view/View;
    .end local v8    # "rightOf":Landroid/view/View;
    :cond_5
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v11

    add-int/2addr v11, v1

    invoke-direct {p0, v10, v11}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    move-result-object v8

    .line 2508
    .restart local v8    # "rightOf":Landroid/view/View;
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    .line 2509
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int/2addr v11, v1

    invoke-direct {p0, v10, v11}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    move-result-object v3

    .line 2511
    .restart local v3    # "leftOf":Landroid/view/View;
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v10}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v0

    .line 2512
    .restart local v0    # "childCount":I
    if-lez v0, :cond_4

    .line 2513
    invoke-direct {p0, v6, v1, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->correctTooRight(III)V

    goto :goto_3

    :cond_6
    move-object v9, v8

    .line 2522
    goto :goto_2
.end method

.method private getLeftSelectionPixel(III)I
    .locals 1
    .param p1, "childrenLeft"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "rowStart"    # I

    .prologue
    .line 3122
    move v0, p1

    .line 3123
    .local v0, "leftSelectionPixel":I
    if-lez p3, :cond_0

    .line 3124
    add-int/2addr v0, p2

    .line 3126
    :cond_0
    return v0
.end method

.method private getRightSelectionPixel(IIII)I
    .locals 3
    .param p1, "childrenRight"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "numColumns"    # I
    .param p4, "rowStart"    # I

    .prologue
    .line 3105
    move v0, p1

    .line 3106
    .local v0, "rightSelectionPixel":I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 3107
    sub-int/2addr v0, p2

    .line 3109
    :cond_0
    return v0
.end method

.method private makeColumn(IIZ)Landroid/view/View;
    .locals 15
    .param p1, "startPos"    # I
    .param p2, "x"    # I
    .param p3, "flow"    # Z

    .prologue
    .line 2280
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v11

    .line 2281
    .local v11, "rowHeight":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v14

    .line 2284
    .local v14, "verticalSpacing":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .line 2285
    invoke-static {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    move v0, v14

    :goto_0
    add-int v4, v2, v0

    .line 2287
    .local v4, "nextTop":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v0, :cond_5

    .line 2288
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v0

    add-int v0, v0, p1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2298
    .local v10, "last":I
    :cond_0
    :goto_1
    const/4 v13, 0x0

    .line 2300
    .local v13, "selectedView":Landroid/view/View;
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->shouldShowSelector()Z

    move-result v8

    .line 2301
    .local v8, "hasFocus":Z
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->touchModeDrawsInPressedState()Z

    move-result v9

    .line 2302
    .local v9, "inClick":Z
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v12, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    .line 2304
    .local v12, "selectedPosition":I
    const/4 v7, 0x0

    .line 2305
    .local v7, "child":Landroid/view/View;
    move/from16 v1, p1

    .local v1, "pos":I
    :goto_2
    if-ge v1, v10, :cond_8

    .line 2307
    if-ne v1, v12, :cond_6

    const/4 v5, 0x1

    .line 2310
    .local v5, "selected":Z
    :goto_3
    if-eqz p3, :cond_7

    const/4 v6, -0x1

    .local v6, "where":I
    :goto_4
    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 2311
    invoke-virtual/range {v0 .. v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v7

    .line 2313
    add-int/2addr v4, v11

    .line 2314
    add-int/lit8 v0, v10, -0x1

    if-ge v1, v0, :cond_1

    .line 2315
    add-int/2addr v4, v14

    .line 2318
    :cond_1
    if-eqz v5, :cond_3

    if-nez v8, :cond_2

    if-eqz v9, :cond_3

    .line 2319
    :cond_2
    move-object v13, v7

    .line 2305
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2285
    .end local v1    # "pos":I
    .end local v4    # "nextTop":I
    .end local v5    # "selected":Z
    .end local v6    # "where":I
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "hasFocus":Z
    .end local v9    # "inClick":Z
    .end local v10    # "last":I
    .end local v12    # "selectedPosition":I
    .end local v13    # "selectedView":Landroid/view/View;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 2290
    .restart local v4    # "nextTop":I
    :cond_5
    add-int/lit8 v10, p1, 0x1

    .line 2291
    .restart local v10    # "last":I
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v2

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2293
    sub-int v0, v10, p1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2294
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v0

    sub-int v2, v10, p1

    sub-int/2addr v0, v2

    add-int v2, v11, v14

    mul-int/2addr v0, v2

    add-int/2addr v4, v0

    goto :goto_1

    .line 2307
    .restart local v1    # "pos":I
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "hasFocus":Z
    .restart local v9    # "inClick":Z
    .restart local v12    # "selectedPosition":I
    .restart local v13    # "selectedView":Landroid/view/View;
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 2310
    .restart local v5    # "selected":Z
    :cond_7
    sub-int v6, v1, p1

    goto :goto_4

    .line 2323
    .end local v5    # "selected":Z
    :cond_8
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v0, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$502(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Landroid/view/View;)Landroid/view/View;

    .line 2325
    if-eqz v13, :cond_9

    .line 2326
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$902(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Landroid/view/View;)Landroid/view/View;

    .line 2329
    :cond_9
    return-object v13
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 20
    .param p1, "delta"    # I
    .param p2, "childrenLeft"    # I
    .param p3, "childrenRight"    # I

    .prologue
    .line 2635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getHorizontalFadingEdgeLength()I

    move-result v5

    .line 2636
    .local v5, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 2637
    .local v17, "selectedPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v9

    .line 2638
    .local v9, "numRows":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v6

    .line 2642
    .local v6, "horizontalSpacing":I
    const/4 v3, -0x1

    .line 2644
    .local v3, "columnEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 2645
    sub-int v18, v17, p1

    sub-int v19, v17, p1

    rem-int v19, v19, v9

    sub-int v10, v18, v19

    .line 2647
    .local v10, "oldColumnStart":I
    rem-int v18, v17, v9

    sub-int v4, v17, v18

    .line 2659
    .local v4, "columnStart":I
    :goto_0
    sub-int v15, v4, v10

    .line 2661
    .local v15, "rowDelta":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->getLeftSelectionPixel(III)I

    move-result v8

    .line 2662
    .local v8, "leftSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v9, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->getRightSelectionPixel(IIII)I

    move-result v14

    .line 2666
    .local v14, "rightSelectionPixel":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput v4, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 2671
    if-lez v15, :cond_3

    .line 2676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v18

    if-nez v18, :cond_1

    const/4 v11, 0x0

    .line 2679
    .local v11, "oldRight":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .end local v3    # "columnEnd":I
    :goto_2
    add-int v18, v11, v6

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v3, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object v16

    .line 2680
    .local v16, "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v13

    .line 2682
    .local v13, "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8, v14}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->adjustForRightFadingEdge(Landroid/view/View;II)V

    .line 2705
    .end local v11    # "oldRight":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 2706
    sub-int v18, v4, v9

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, v19, v6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    .line 2707
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    .line 2708
    add-int v18, v4, v9

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v19

    add-int v19, v19, v6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    .line 2715
    :goto_4
    return-object v16

    .line 2649
    .end local v4    # "columnStart":I
    .end local v8    # "leftSelectionPixel":I
    .end local v10    # "oldColumnStart":I
    .end local v13    # "referenceView":Landroid/view/View;
    .end local v14    # "rightSelectionPixel":I
    .end local v15    # "rowDelta":I
    .end local v16    # "sel":Landroid/view/View;
    .restart local v3    # "columnEnd":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    sub-int v7, v18, v17

    .line 2651
    .local v7, "invertedSelection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    rem-int v19, v7, v9

    sub-int v19, v7, v19

    sub-int v3, v18, v19

    .line 2652
    const/16 v18, 0x0

    sub-int v19, v3, v9

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2654
    .restart local v4    # "columnStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    sub-int v19, v17, p1

    sub-int v7, v18, v19

    .line 2655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    rem-int v19, v7, v9

    sub-int v19, v7, v19

    sub-int v10, v18, v19

    .line 2656
    .restart local v10    # "oldColumnStart":I
    const/16 v18, 0x0

    sub-int v19, v10, v9

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_0

    .line 2676
    .end local v7    # "invertedSelection":I
    .restart local v8    # "leftSelectionPixel":I
    .restart local v14    # "rightSelectionPixel":I
    .restart local v15    # "rowDelta":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    .line 2677
    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v11

    goto/16 :goto_1

    .restart local v11    # "oldRight":I
    :cond_2
    move v3, v4

    .line 2679
    goto/16 :goto_2

    .line 2683
    .end local v11    # "oldRight":I
    :cond_3
    if-gez v15, :cond_6

    .line 2687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v18

    if-nez v18, :cond_4

    const/4 v12, 0x0

    .line 2690
    .local v12, "oldTop":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .end local v3    # "columnEnd":I
    :goto_6
    sub-int v18, v12, v6

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v3, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object v16

    .line 2691
    .restart local v16    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v13

    .line 2693
    .restart local v13    # "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8, v14}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->adjustForLeftFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_3

    .line 2687
    .end local v12    # "oldTop":I
    .end local v13    # "referenceView":Landroid/view/View;
    .end local v16    # "sel":Landroid/view/View;
    .restart local v3    # "columnEnd":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    .line 2688
    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v12

    goto :goto_5

    .restart local v12    # "oldTop":I
    :cond_5
    move v3, v4

    .line 2690
    goto :goto_6

    .line 2698
    .end local v12    # "oldTop":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v18

    if-nez v18, :cond_7

    const/4 v12, 0x0

    .line 2701
    .restart local v12    # "oldTop":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .end local v3    # "columnEnd":I
    :goto_8
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v3, v12, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object v16

    .line 2702
    .restart local v16    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v13

    .restart local v13    # "referenceView":Landroid/view/View;
    goto/16 :goto_3

    .line 2698
    .end local v12    # "oldTop":I
    .end local v13    # "referenceView":Landroid/view/View;
    .end local v16    # "sel":Landroid/view/View;
    .restart local v3    # "columnEnd":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    .line 2699
    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v12

    goto :goto_7

    .restart local v12    # "oldTop":I
    :cond_8
    move v3, v4

    .line 2701
    goto :goto_8

    .line 2710
    .end local v3    # "columnEnd":I
    .end local v12    # "oldTop":I
    .restart local v13    # "referenceView":Landroid/view/View;
    .restart local v16    # "sel":Landroid/view/View;
    :cond_9
    add-int v18, v4, v9

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v19

    add-int v19, v19, v6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    .line 2711
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    .line 2712
    add-int/lit8 v18, v4, -0x1

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, v19, v6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    goto/16 :goto_4
.end method

.method private pinToLeft(I)V
    .locals 4
    .param p1, "childrenLeft"    # I

    .prologue
    .line 3336
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    if-nez v2, :cond_0

    .line 3337
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 3338
    .local v0, "left":I
    sub-int v1, p1, v0

    .line 3339
    .local v1, "offset":I
    if-gez v1, :cond_0

    .line 3340
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    .line 3343
    .end local v0    # "left":I
    .end local v1    # "offset":I
    :cond_0
    return-void
.end method

.method private pinToRight(I)V
    .locals 5
    .param p1, "childrenRight"    # I

    .prologue
    .line 3346
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v0

    .line 3347
    .local v0, "count":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v4, v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    if-ne v3, v4, :cond_0

    .line 3348
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 3349
    .local v2, "right":I
    sub-int v1, p1, v2

    .line 3350
    .local v1, "offset":I
    if-lez v1, :cond_0

    .line 3351
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v3, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    .line 3354
    .end local v1    # "offset":I
    .end local v2    # "right":I
    :cond_0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "flow"    # Z
    .param p5, "childrenTop"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z
    .param p8, "where"    # I

    .prologue
    .line 3253
    if-eqz p6, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->shouldShowSelector()Z

    move-result v19

    if-eqz v19, :cond_5

    const/4 v12, 0x1

    .line 3254
    .local v12, "isSelected":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v12, v0, :cond_6

    const/16 v17, 0x1

    .line 3255
    .local v17, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v13, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mTouchMode:I

    .line 3256
    .local v13, "mode":I
    if-lez v13, :cond_7

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_7

    const/4 v11, 0x1

    .line 3258
    .local v11, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_8

    const/16 v16, 0x1

    .line 3260
    .local v16, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v19

    if-eqz v19, :cond_9

    :cond_0
    const/4 v14, 0x1

    .line 3264
    .local v14, "needToMeasure":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;

    .line 3265
    .local v15, "p":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    if-nez v15, :cond_1

    .line 3266
    new-instance v15, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;

    .end local v15    # "p":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    const/16 v19, -0x2

    const/16 v20, -0x1

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v15, v0, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;-><init>(III)V

    .line 3269
    .restart local v15    # "p":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->viewType:I

    .line 3271
    if-eqz p7, :cond_a

    iget-boolean v0, v15, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 3272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-static {v0, v1, v2, v15}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3278
    :goto_5
    if-eqz v17, :cond_2

    .line 3279
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setSelected(Z)V

    .line 3280
    if-eqz v12, :cond_2

    .line 3281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->requestFocus()Z

    .line 3285
    :cond_2
    if-eqz v16, :cond_3

    .line 3286
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setPressed(Z)V

    .line 3289
    :cond_3
    if-eqz v14, :cond_b

    .line 3290
    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 3291
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    iget v0, v15, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->width:I

    move/from16 v21, v0

    .line 3290
    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 3293
    .local v9, "childWidthSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    .line 3294
    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    iget v0, v15, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->height:I

    move/from16 v21, v0

    .line 3293
    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 3295
    .local v5, "childHeightSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v5}, Landroid/view/View;->measure(II)V

    .line 3300
    .end local v5    # "childHeightSpec":I
    .end local v9    # "childWidthSpec":I
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 3301
    .local v18, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 3303
    .local v10, "h":I
    if-eqz p4, :cond_c

    move/from16 v6, p3

    .line 3306
    .local v6, "childLeft":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$1900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v19

    and-int/lit8 v19, v19, 0x70

    sparse-switch v19, :sswitch_data_0

    .line 3317
    move/from16 v8, p5

    .line 3321
    .local v8, "childTop":I
    :goto_8
    if-eqz v14, :cond_d

    .line 3322
    add-int v7, v6, v18

    .line 3323
    .local v7, "childRight":I
    add-int v4, v8, v10

    .line 3324
    .local v4, "childBottom":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8, v7, v4}, Landroid/view/View;->layout(IIII)V

    .line 3330
    .end local v4    # "childBottom":I
    .end local v7    # "childRight":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 3331
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 3333
    :cond_4
    return-void

    .line 3253
    .end local v6    # "childLeft":I
    .end local v8    # "childTop":I
    .end local v10    # "h":I
    .end local v11    # "isPressed":Z
    .end local v12    # "isSelected":Z
    .end local v13    # "mode":I
    .end local v14    # "needToMeasure":Z
    .end local v15    # "p":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    .end local v16    # "updateChildPressed":Z
    .end local v17    # "updateChildSelected":Z
    .end local v18    # "w":I
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 3254
    .restart local v12    # "isSelected":Z
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 3256
    .restart local v13    # "mode":I
    .restart local v17    # "updateChildSelected":Z
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 3258
    .restart local v11    # "isPressed":Z
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 3260
    .restart local v16    # "updateChildPressed":Z
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 3274
    .restart local v14    # "needToMeasure":Z
    .restart local v15    # "p":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    :cond_a
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->forceAdd:Z

    .line 3275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p8

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v15, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    .line 3297
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Landroid/view/View;)V

    goto :goto_6

    .line 3303
    .restart local v10    # "h":I
    .restart local v18    # "w":I
    :cond_c
    sub-int v6, p3, v18

    goto :goto_7

    .line 3308
    .restart local v6    # "childLeft":I
    :sswitch_0
    move/from16 v8, p5

    .line 3309
    .restart local v8    # "childTop":I
    goto :goto_8

    .line 3311
    .end local v8    # "childTop":I
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v19

    sub-int v19, v19, v10

    div-int/lit8 v19, v19, 0x2

    add-int v8, p5, v19

    .line 3312
    .restart local v8    # "childTop":I
    goto :goto_8

    .line 3314
    .end local v8    # "childTop":I
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v19

    add-int v19, v19, p5

    sub-int v8, v19, v10

    .line 3315
    .restart local v8    # "childTop":I
    goto/16 :goto_8

    .line 3326
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, v6, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3327
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, v8, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_9

    .line 3306
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_2
        0x30 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected arrowScroll(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    .line 3391
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v4, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    .line 3392
    .local v4, "selectedPosition":I
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v3

    .line 3397
    .local v3, "numRows":I
    const/4 v2, 0x0

    .line 3399
    .local v2, "moved":Z
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v6, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v6, :cond_3

    .line 3400
    div-int v6, v4, v3

    mul-int v5, v6, v3

    .line 3401
    .local v5, "startOfColumnPos":I
    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3408
    .local v0, "endOfColumnPos":I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 3439
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 3440
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->playSoundEffect(I)V

    .line 3441
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->invokeOnItemScrollListener()V

    .line 3444
    :cond_1
    if-eqz v2, :cond_2

    .line 3448
    :cond_2
    return v2

    .line 3403
    .end local v0    # "endOfColumnPos":I
    .end local v5    # "startOfColumnPos":I
    :cond_3
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v6, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v4

    .line 3404
    .local v1, "invertedSelection":I
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v6, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    .line 3405
    .restart local v0    # "endOfColumnPos":I
    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5    # "startOfColumnPos":I
    goto :goto_0

    .line 3410
    .end local v1    # "invertedSelection":I
    :sswitch_0
    if-lez v5, :cond_0

    .line 3411
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iput v8, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mLayoutMode:I

    .line 3412
    sub-int v6, v4, v3

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->setSelectionInt(I)V

    .line 3413
    const/4 v2, 0x1

    goto :goto_1

    .line 3417
    :sswitch_1
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v6, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    .line 3418
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iput v8, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mLayoutMode:I

    .line 3419
    add-int v6, v4, v3

    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->setSelectionInt(I)V

    .line 3420
    const/4 v2, 0x1

    goto :goto_1

    .line 3424
    :sswitch_2
    if-le v4, v5, :cond_0

    .line 3425
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iput v8, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mLayoutMode:I

    .line 3426
    add-int/lit8 v6, v4, -0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->setSelectionInt(I)V

    .line 3427
    const/4 v2, 0x1

    goto :goto_1

    .line 3431
    :sswitch_3
    if-ge v4, v0, :cond_0

    .line 3432
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iput v8, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mLayoutMode:I

    .line 3433
    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->setSelectionInt(I)V

    .line 3434
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 3408
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method protected fillGap(Z)V
    .locals 7
    .param p1, "right"    # Z

    .prologue
    .line 2214
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v2

    .line 2215
    .local v2, "numRows":I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v1

    .line 2217
    .local v1, "horizontalSpacing":I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v0

    .line 2219
    .local v0, "count":I
    if-eqz p1, :cond_2

    .line 2220
    if-lez v0, :cond_1

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    add-int/lit8 v6, v0, -0x1

    .line 2221
    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v4, v5, v1

    .line 2222
    .local v4, "startOffset":I
    :goto_0
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v5, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    add-int v3, v5, v0

    .line 2223
    .local v3, "position":I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v5, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v5, :cond_0

    .line 2224
    add-int/lit8 v5, v2, -0x1

    add-int/2addr v3, v5

    .line 2226
    :cond_0
    invoke-direct {p0, v3, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    .line 2227
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v2, v1, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->correctTooLeft(III)V

    .line 2240
    :goto_1
    return-void

    .line 2221
    .end local v3    # "position":I
    .end local v4    # "startOffset":I
    :cond_1
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getListPaddingLeft()I

    move-result v4

    goto :goto_0

    .line 2229
    :cond_2
    if-lez v0, :cond_3

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    const/4 v6, 0x0

    .line 2230
    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v4, v5, v1

    .line 2231
    .restart local v4    # "startOffset":I
    :goto_2
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v3, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 2232
    .restart local v3    # "position":I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v5, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v5, :cond_4

    .line 2233
    sub-int/2addr v3, v2

    .line 2237
    :goto_3
    invoke-direct {p0, v3, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    .line 2238
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v2, v1, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->correctTooRight(III)V

    goto :goto_1

    .line 2230
    .end local v3    # "position":I
    .end local v4    # "startOffset":I
    :cond_3
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getListPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    goto :goto_2

    .line 2235
    .restart local v3    # "position":I
    .restart local v4    # "startOffset":I
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3
.end method

.method protected isCandidateSelection(II)Z
    .locals 9
    .param p1, "childIndex"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3462
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v2

    .line 3463
    .local v2, "count":I
    add-int/lit8 v7, v2, -0x1

    sub-int v3, v7, p1

    .line 3464
    .local v3, "invertedIndex":I
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    .line 3469
    .local v4, "numRows":I
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v7, :cond_0

    .line 3470
    rem-int v7, p1, v4

    sub-int v1, p1, v7

    .line 3471
    .local v1, "columnStart":I
    add-int v7, v1, v4

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3477
    .local v0, "columnEnd":I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 3498
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3473
    .end local v0    # "columnEnd":I
    .end local v1    # "columnStart":I
    :cond_0
    add-int/lit8 v7, v2, -0x1

    rem-int v8, v3, v4

    sub-int v8, v3, v8

    sub-int v0, v7, v8

    .line 3474
    .restart local v0    # "columnEnd":I
    sub-int v7, v0, v4

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .restart local v1    # "columnStart":I
    goto :goto_0

    .line 3481
    :sswitch_0
    if-ne p1, v1, :cond_2

    .line 3496
    :cond_1
    :goto_1
    return v5

    :cond_2
    move v5, v6

    .line 3481
    goto :goto_1

    .line 3484
    :sswitch_1
    if-eqz v1, :cond_1

    move v5, v6

    goto :goto_1

    .line 3487
    :sswitch_2
    if-eq p1, v1, :cond_1

    move v5, v6

    goto :goto_1

    .line 3490
    :sswitch_3
    add-int/lit8 v7, v2, -0x1

    if-eq v1, v7, :cond_1

    move v5, v6

    goto :goto_1

    .line 3493
    :sswitch_4
    if-ne p1, v1, :cond_3

    if-eqz v1, :cond_1

    :cond_3
    move v5, v6

    goto :goto_1

    .line 3496
    :sswitch_5
    if-ne p1, v0, :cond_4

    add-int/lit8 v7, v2, -0x1

    if-eq v0, v7, :cond_1

    :cond_4
    move v5, v6

    goto :goto_1

    .line 3477
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method protected layoutChildren()V
    .locals 21

    .prologue
    .line 2721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 2722
    .local v5, "childrenLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getRight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getLeft()I

    move-result v19

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v6, v18, v19

    .line 2724
    .local v6, "childrenRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v4

    .line 2726
    .local v4, "childCount":I
    const/4 v8, 0x0

    .line 2729
    .local v8, "delta":I
    const/4 v15, 0x0

    .line 2730
    .local v15, "oldSel":Landroid/view/View;
    const/4 v14, 0x0

    .line 2731
    .local v14, "oldFirst":Landroid/view/View;
    const/4 v13, 0x0

    .line 2734
    .local v13, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mLayoutMode:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 2753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    move/from16 v19, v0

    sub-int v11, v18, v19

    .line 2754
    .local v11, "index":I
    if-ltz v11, :cond_0

    if-ge v11, v4, :cond_0

    .line 2755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 2759
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2762
    .end local v11    # "index":I
    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v7, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mDataChanged:Z

    .line 2763
    .local v7, "dataChanged":Z
    if-eqz v7, :cond_2

    .line 2764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->handleDataChanged()V

    .line 2769
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 2770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->resetList()V

    .line 2771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->invokeOnItemScrollListener()V

    .line 2875
    .end local v5    # "childrenLeft":I
    :goto_1
    return-void

    .line 2736
    .end local v7    # "dataChanged":Z
    .restart local v5    # "childrenLeft":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNextSelectedPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    move/from16 v19, v0

    sub-int v11, v18, v19

    .line 2737
    .restart local v11    # "index":I
    if-ltz v11, :cond_1

    if-ge v11, v4, :cond_1

    .line 2738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    goto :goto_0

    .line 2747
    .end local v11    # "index":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNextSelectedPosition:I

    move/from16 v18, v0

    if-ltz v18, :cond_1

    .line 2748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNextSelectedPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    move/from16 v19, v0

    sub-int v8, v18, v19

    goto/16 :goto_0

    .line 2775
    .restart local v7    # "dataChanged":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->setSelectedPositionInt(I)V

    .line 2779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v9, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 2780
    .local v9, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    move-object/from16 v16, v0

    .line 2782
    .local v16, "recycleBin":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;
    if-eqz v7, :cond_4

    .line 2783
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v4, :cond_5

    .line 2784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2783
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2787
    .end local v10    # "i":I
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 2792
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2200(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)V

    .line 2794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mLayoutMode:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_1

    .line 2822
    if-nez v4, :cond_e

    .line 2823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    move/from16 v18, v0

    if-nez v18, :cond_b

    .line 2824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->isInTouchMode()Z

    move-result v18

    if-eqz v18, :cond_a

    :cond_6
    const/16 v18, -0x1

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->setSelectedPositionInt(I)V

    .line 2826
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillFromTop(I)Landroid/view/View;

    move-result-object v17

    .line 2848
    .end local v5    # "childrenLeft":I
    .local v17, "sel":Landroid/view/View;
    :goto_4
    invoke-virtual/range {v16 .. v16}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->scrapActiveViews()V

    .line 2850
    if-eqz v17, :cond_13

    .line 2851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->positionSelector(Landroid/view/View;)V

    .line 2852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedTop:I

    .line 2863
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mLayoutMode:I

    .line 2864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mDataChanged:Z

    .line 2865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNeedSync:Z

    .line 2866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->setNextSelectedPositionInt(I)V

    .line 2868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->updateScrollIndicators()V

    .line 2870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    move/from16 v18, v0

    if-lez v18, :cond_8

    .line 2871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->checkSelectionChanged()V

    .line 2874
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->invokeOnItemScrollListener()V

    goto/16 :goto_1

    .line 2796
    .end local v17    # "sel":Landroid/view/View;
    .restart local v5    # "childrenLeft":I
    :pswitch_3
    if-eqz v13, :cond_9

    .line 2797
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v5, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillFromSelection(III)Landroid/view/View;

    move-result-object v17

    .restart local v17    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 2799
    .end local v17    # "sel":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillSelection(II)Landroid/view/View;

    move-result-object v17

    .line 2801
    .restart local v17    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 2803
    .end local v17    # "sel":Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 2804
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillFromTop(I)Landroid/view/View;

    move-result-object v17

    .line 2805
    .restart local v17    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    goto/16 :goto_4

    .line 2808
    .end local v17    # "sel":Landroid/view/View;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    move-result-object v17

    .line 2809
    .restart local v17    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    goto/16 :goto_4

    .line 2812
    .end local v17    # "sel":Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSpecificTop:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v17

    .line 2813
    .restart local v17    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 2815
    .end local v17    # "sel":Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSyncPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSpecificTop:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v17

    .line 2816
    .restart local v17    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 2819
    .end local v17    # "sel":Landroid/view/View;
    :pswitch_8
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->moveSelection(III)Landroid/view/View;

    move-result-object v17

    .line 2820
    .restart local v17    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 2824
    .end local v17    # "sel":Landroid/view/View;
    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 2828
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    move/from16 v18, v0

    add-int/lit8 v12, v18, -0x1

    .line 2829
    .local v12, "last":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->isInTouchMode()Z

    move-result v18

    if-eqz v18, :cond_d

    :cond_c
    const/16 v18, -0x1

    :goto_6
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->setSelectedPositionInt(I)V

    .line 2831
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillFromBottom(II)Landroid/view/View;

    move-result-object v17

    .line 2832
    .restart local v17    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v17    # "sel":Landroid/view/View;
    :cond_d
    move/from16 v18, v12

    .line 2829
    goto :goto_6

    .line 2834
    .end local v12    # "last":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    move/from16 v18, v0

    if-ltz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_10

    .line 2835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    move/from16 v18, v0

    if-nez v15, :cond_f

    .end local v5    # "childrenLeft":I
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v17

    .restart local v17    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 2836
    .end local v17    # "sel":Landroid/view/View;
    .restart local v5    # "childrenLeft":I
    :cond_f
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_7

    .line 2837
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    .line 2838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    move/from16 v18, v0

    if-nez v14, :cond_11

    .end local v5    # "childrenLeft":I
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v17

    .restart local v17    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 2839
    .end local v17    # "sel":Landroid/view/View;
    .restart local v5    # "childrenLeft":I
    :cond_11
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_8

    .line 2841
    :cond_12
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v17

    .restart local v17    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 2853
    .end local v5    # "childrenLeft":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mTouchMode:I

    move/from16 v18, v0

    if-lez v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mTouchMode:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    .line 2854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2855
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_7

    .line 2856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_5

    .line 2859
    .end local v3    # "child":Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedTop:I

    .line 2860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    .line 2734
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 2794
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "x"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenTop"    # I
    .param p5, "selected"    # Z
    .param p6, "where"    # I

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2188
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 2189
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2192
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 2209
    .end local v1    # "child":Landroid/view/View;
    .local v9, "child":Landroid/view/View;
    :goto_0
    return-object v9

    .line 2202
    .end local v9    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mIsScrap:[Z

    invoke-virtual {v0, p1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 2205
    .restart local v1    # "child":Landroid/view/View;
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 2209
    .end local v1    # "child":Landroid/view/View;
    .restart local v9    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2880
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 2881
    .local v15, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 2882
    .local v9, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 2883
    .local v16, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 2887
    .local v10, "heightSize":I
    if-nez v9, :cond_0

    .line 2888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v17

    if-lez v17, :cond_7

    .line 2889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v10, v17, v18

    .line 2893
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v17

    add-int v10, v10, v17

    .line 2896
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    sub-int v17, v10, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 2897
    .local v4, "childHeight":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->determineRows(I)V

    .line 2899
    const/4 v6, 0x0

    .line 2901
    .local v6, "childWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    .line 2902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v8, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    .line 2903
    .local v8, "count":I
    if-lez v8, :cond_2

    .line 2904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mIsScrap:[Z

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 2906
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;

    .line 2907
    .local v14, "p":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    if-nez v14, :cond_1

    .line 2908
    new-instance v14, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;

    .end local v14    # "p":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    const/16 v17, -0x2

    const/16 v18, -0x1

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v14, v0, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;-><init>(III)V

    .line 2910
    .restart local v14    # "p":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    invoke-virtual {v3, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2912
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v14, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->viewType:I

    .line 2913
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v14, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->forceAdd:Z

    .line 2915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    .line 2916
    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    const/16 v18, 0x0

    iget v0, v14, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->height:I

    move/from16 v19, v0

    .line 2915
    invoke-static/range {v17 .. v19}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 2917
    .local v5, "childHeightSpec":I
    const/16 v17, 0x0

    const/high16 v18, 0x40000000    # 2.0f

    .line 2918
    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    const/16 v18, 0x0

    iget v0, v14, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->width:I

    move/from16 v19, v0

    .line 2917
    invoke-static/range {v17 .. v19}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 2919
    .local v7, "childWidthSpec":I
    invoke-virtual {v3, v7, v5}, Landroid/view/View;->measure(II)V

    .line 2921
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 2923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    move-object/from16 v17, v0

    iget v0, v14, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->viewType:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2928
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childHeightSpec":I
    .end local v7    # "childWidthSpec":I
    .end local v14    # "p":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    :cond_2
    if-nez v15, :cond_3

    .line 2929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int v17, v17, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    .line 2930
    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getHorizontalFadingEdgeLength()I

    move-result v18

    mul-int/lit8 v18, v18, 0x2

    add-int v16, v17, v18

    .line 2933
    :cond_3
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    if-ne v15, v0, :cond_6

    .line 2934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v13, v17, v18

    .line 2936
    .local v13, "ourSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v12

    .line 2937
    .local v12, "numRows":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v8, :cond_5

    .line 2938
    add-int/2addr v13, v6

    .line 2939
    add-int v17, v11, v12

    move/from16 v0, v17

    if-ge v0, v8, :cond_4

    .line 2940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v17

    add-int v13, v13, v17

    .line 2942
    :cond_4
    move/from16 v0, v16

    if-lt v13, v0, :cond_9

    .line 2943
    move/from16 v13, v16

    .line 2947
    :cond_5
    move/from16 v16, v13

    .line 2950
    .end local v11    # "i":I
    .end local v12    # "numRows":I
    .end local v13    # "ourSize":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1, v10}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;II)V

    .line 2951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move/from16 v0, p1

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mWidthMeasureSpec:I

    .line 2955
    return-void

    .line 2891
    .end local v4    # "childHeight":I
    .end local v6    # "childWidth":I
    .end local v8    # "count":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v10, v17, v18

    goto/16 :goto_0

    .line 2901
    .restart local v4    # "childHeight":I
    .restart local v6    # "childWidth":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/widget/ListAdapter;->getCount()I

    move-result v17

    goto/16 :goto_1

    .line 2937
    .restart local v8    # "count":I
    .restart local v11    # "i":I
    .restart local v12    # "numRows":I
    .restart local v13    # "ourSize":I
    :cond_9
    add-int/2addr v11, v12

    goto :goto_2
.end method

.method protected setSelectionInt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 3363
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v4, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNextSelectedPosition:I

    .line 3365
    .local v4, "previousSelectedPosition":I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v5, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->setNextSelectedPositionInt(I)V

    .line 3366
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->layoutChildren()V

    .line 3368
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v5, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v5, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v6, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNextSelectedPosition:I

    sub-int v0, v5, v6

    .line 3370
    .local v0, "next":I
    :goto_0
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v5, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v5, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int v2, v5, v4

    .line 3373
    .local v2, "previous":I
    :goto_1
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    div-int v1, v0, v5

    .line 3374
    .local v1, "nextColumn":I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    div-int v3, v2, v5

    .line 3376
    .local v3, "previousColumn":I
    if-eq v1, v3, :cond_0

    .line 3380
    :cond_0
    return-void

    .line 3368
    .end local v0    # "next":I
    .end local v1    # "nextColumn":I
    .end local v2    # "previous":I
    .end local v3    # "previousColumn":I
    :cond_1
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v0, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNextSelectedPosition:I

    goto :goto_0

    .restart local v0    # "next":I
    :cond_2
    move v2, v4

    .line 3370
    goto :goto_1
.end method

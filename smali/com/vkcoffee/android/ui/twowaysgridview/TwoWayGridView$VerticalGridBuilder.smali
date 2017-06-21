.class Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;
.super Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;
.source "TwoWayGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerticalGridBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)V
    .locals 1

    .prologue
    .line 828
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
    .param p2, "x1"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$1;

    .prologue
    .line 828
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)V

    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 5
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .prologue
    .line 1388
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_0

    .line 1392
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .line 1396
    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .line 1397
    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1400
    .local v0, "offset":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    neg-int v4, v0

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->offsetChildrenTopAndBottom(I)V

    .line 1402
    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 4
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .prologue
    .line 1416
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_0

    .line 1419
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .line 1423
    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .line 1424
    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1427
    .local v0, "offset":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v3, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->offsetChildrenTopAndBottom(I)V

    .line 1429
    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 1847
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v1

    .line 1849
    .local v1, "childCount":I
    if-lez v1, :cond_2

    .line 1853
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 1856
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1857
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v4, v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 1858
    .local v2, "delta":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 1861
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 1863
    :cond_0
    if-gez v2, :cond_1

    .line 1865
    const/4 v2, 0x0

    .line 1884
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 1885
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    neg-int v4, v2

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->offsetChildrenTopAndBottom(I)V

    .line 1888
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    .line 1869
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1870
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v5, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 1872
    .restart local v2    # "delta":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v4, v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 1875
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1878
    :cond_4
    if-lez v2, :cond_1

    .line 1880
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private correctTooHigh(III)V
    .locals 9
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 1193
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v6, v7, -0x1

    .line 1194
    .local v6, "lastPosition":I
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_3

    if-lez p3, :cond_3

    .line 1196
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    add-int/lit8 v8, p3, -0x1

    invoke-virtual {v7, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1199
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1201
    .local v4, "lastBottom":I
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getBottom()I

    move-result v7

    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 1205
    .local v1, "end":I
    sub-int v0, v1, v4

    .line 1207
    .local v0, "bottomOffset":I
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1208
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1212
    .local v3, "firstTop":I
    if-lez v0, :cond_3

    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_3

    .line 1213
    :cond_0
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1215
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1219
    :cond_1
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v7, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->offsetChildrenTopAndBottom(I)V

    .line 1220
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    if-lez v7, :cond_3

    .line 1223
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v8, :cond_2

    const/4 p1, 0x1

    .end local p1    # "numColumns":I
    :cond_2
    sub-int/2addr v7, p1

    .line 1224
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    .line 1223
    invoke-direct {p0, v7, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    .line 1226
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    .line 1230
    .end local v0    # "bottomOffset":I
    .end local v1    # "end":I
    .end local v2    # "firstChild":Landroid/view/View;
    .end local v3    # "firstTop":I
    .end local v4    # "lastBottom":I
    .end local v5    # "lastChild":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private correctTooLow(III)V
    .locals 10
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 1236
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    if-nez v8, :cond_3

    if-lez p3, :cond_3

    .line 1238
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1241
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1244
    .local v2, "firstTop":I
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1247
    .local v6, "start":I
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getBottom()I

    move-result v8

    iget-object v9, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v9, v9, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1251
    .local v0, "end":I
    sub-int v7, v2, v6

    .line 1252
    .local v7, "topOffset":I
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    add-int/lit8 v9, p3, -0x1

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1253
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1254
    .local v3, "lastBottom":I
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v5, v8, -0x1

    .line 1258
    .local v5, "lastPosition":I
    if-lez v7, :cond_3

    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 1259
    :cond_0
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 1261
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1265
    :cond_1
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    neg-int v9, v7

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->offsetChildrenTopAndBottom(I)V

    .line 1266
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_3

    .line 1269
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v8, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    const/4 p1, 0x1

    .end local p1    # "numColumns":I
    :cond_2
    add-int v8, v5, p1

    .line 1270
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    .line 1269
    invoke-direct {p0, v8, v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    .line 1272
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    .line 1276
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstTop":I
    .end local v3    # "lastBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastPosition":I
    .end local v6    # "start":I
    .end local v7    # "topOffset":I
    :cond_3
    return-void
.end method

.method private determineColumns(I)V
    .locals 8
    .param p1, "availableSpace"    # I

    .prologue
    const/4 v7, 0x1

    .line 1432
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$1000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v1

    .line 1433
    .local v1, "requestedHorizontalSpacing":I
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v3

    .line 1434
    .local v3, "stretchMode":I
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$1100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v0

    .line 1435
    .local v0, "requestedColumnWidth":I
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$1200(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$402(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    .line 1437
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$1300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1438
    if-lez v0, :cond_1

    .line 1440
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    add-int v5, p1, v1

    add-int v6, v0, v1

    div-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$302(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    .line 1451
    :goto_0
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    if-gtz v4, :cond_0

    .line 1452
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$302(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    .line 1455
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 1463
    const/4 v2, 0x0

    .line 1464
    .local v2, "spaceLeftOver":I
    packed-switch v3, :pswitch_data_1

    .line 1502
    .end local v2    # "spaceLeftOver":I
    :goto_1
    return-void

    .line 1444
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$302(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    goto :goto_0

    .line 1448
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$1300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$302(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    goto :goto_0

    .line 1458
    :pswitch_0
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$602(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    .line 1459
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$702(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    goto :goto_1

    .line 1467
    .restart local v2    # "spaceLeftOver":I
    :pswitch_1
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    mul-int/2addr v4, v0

    sub-int v4, p1, v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .line 1468
    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v1

    sub-int v2, v4, v5

    .line 1469
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    div-int v5, v2, v5

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$602(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    .line 1470
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$702(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    goto :goto_1

    .line 1475
    :pswitch_2
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    mul-int/2addr v4, v0

    sub-int v4, p1, v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .line 1476
    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v1

    sub-int v2, v4, v5

    .line 1477
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$602(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    .line 1478
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    if-le v4, v7, :cond_3

    .line 1479
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .line 1480
    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    div-int v5, v2, v5

    add-int/2addr v5, v1

    .line 1479
    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$702(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    goto :goto_1

    .line 1482
    :cond_3
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    add-int v5, v1, v2

    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$702(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    goto :goto_1

    .line 1488
    :pswitch_3
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    mul-int/2addr v4, v0

    sub-int v4, p1, v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .line 1489
    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v5, v1

    sub-int v2, v4, v5

    .line 1490
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$602(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    .line 1491
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    if-le v4, v7, :cond_4

    .line 1492
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .line 1493
    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    div-int v5, v2, v5

    add-int/2addr v5, v1

    .line 1492
    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$702(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    goto/16 :goto_1

    .line 1495
    :cond_4
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$702(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I

    goto/16 :goto_1

    .line 1455
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1464
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 5
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .prologue
    .line 921
    const/4 v1, 0x0

    .line 923
    .local v1, "selectedView":Landroid/view/View;
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v4, v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    .line 925
    .local v0, "end":I
    :goto_0
    if-ge p2, v0, :cond_1

    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    if-ge p1, v3, :cond_1

    .line 926
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 927
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 928
    move-object v1, v2

    .line 933
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    add-int p2, v3, v4

    .line 935
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v3

    add-int/2addr p1, v3

    .line 936
    goto :goto_0

    .line 938
    .end local v2    # "temp":Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3
    .param p1, "lastPosition"    # I
    .param p2, "nextBottom"    # I

    .prologue
    .line 1058
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v1, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1059
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v1, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1061
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v1, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 1062
    .local v0, "invertedPosition":I
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v1, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v2

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 1064
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 1292
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v12}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1293
    .local v2, "fadingEdgeLength":I
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v9, v12, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    .line 1294
    .local v9, "selectedPosition":I
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v12}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    .line 1295
    .local v4, "numColumns":I
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v12}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v11

    .line 1298
    .local v11, "verticalSpacing":I
    const/4 v6, -0x1

    .line 1300
    .local v6, "rowEnd":I
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v12, v12, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v12, :cond_0

    .line 1301
    rem-int v12, v9, v4

    sub-int v7, v9, v12

    .line 1312
    .local v7, "rowStart":I
    :goto_0
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->getTopSelectionPixel(III)I

    move-result v10

    .line 1313
    .local v10, "topSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v4, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 1316
    .local v1, "bottomSelectionPixel":I
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v12, v12, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v12, :cond_1

    move v12, v6

    :goto_1
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 1318
    .local v8, "sel":Landroid/view/View;
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iput v7, v12, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 1320
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v12}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v5

    .line 1321
    .local v5, "referenceView":Landroid/view/View;
    invoke-direct {p0, v5, v10, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 1322
    invoke-direct {p0, v5, v10, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 1324
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v12, v12, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v12, :cond_2

    .line 1325
    sub-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    .line 1326
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    .line 1327
    add-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    .line 1335
    :goto_2
    return-object v8

    .line 1303
    .end local v1    # "bottomSelectionPixel":I
    .end local v5    # "referenceView":Landroid/view/View;
    .end local v7    # "rowStart":I
    .end local v8    # "sel":Landroid/view/View;
    .end local v10    # "topSelectionPixel":I
    :cond_0
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v12, v12, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v9

    .line 1305
    .local v3, "invertedSelection":I
    iget-object v12, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v12, v12, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v6, v12, v13

    .line 1306
    const/4 v12, 0x0

    sub-int v13, v6, v4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7    # "rowStart":I
    goto :goto_0

    .end local v3    # "invertedSelection":I
    .restart local v1    # "bottomSelectionPixel":I
    .restart local v10    # "topSelectionPixel":I
    :cond_1
    move v12, v7

    .line 1316
    goto :goto_1

    .line 1329
    .restart local v5    # "referenceView":Landroid/view/View;
    .restart local v8    # "sel":Landroid/view/View;
    :cond_2
    add-int v12, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    .line 1330
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    .line 1331
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    goto :goto_2
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 4
    .param p1, "nextTop"    # I

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v1, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 1046
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v1, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 1047
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v3

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 1051
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 15
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .prologue
    .line 1071
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->reconcileSelectedPosition()I

    move-result v10

    .line 1072
    .local v10, "selectedPosition":I
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    .line 1073
    .local v4, "numColumns":I
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v12

    .line 1076
    .local v12, "verticalSpacing":I
    const/4 v7, -0x1

    .line 1078
    .local v7, "rowEnd":I
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v13, v13, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v13, :cond_0

    .line 1079
    rem-int v13, v10, v4

    sub-int v8, v10, v13

    .line 1087
    .local v8, "rowStart":I
    :goto_0
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1088
    .local v2, "fadingEdgeLength":I
    move/from16 v0, p1

    invoke-direct {p0, v0, v2, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->getTopSelectionPixel(III)I

    move-result v11

    .line 1090
    .local v11, "topSelectionPixel":I
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v13, v13, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v13, :cond_1

    move v13, v7

    :goto_1
    const/4 v14, 0x1

    invoke-direct {p0, v13, v11, v14}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->makeRow(IIZ)Landroid/view/View;

    move-result-object v9

    .line 1091
    .local v9, "sel":Landroid/view/View;
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iput v8, v13, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 1093
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v13}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v6

    .line 1095
    .local v6, "referenceView":Landroid/view/View;
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v13, v13, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v13, :cond_2

    .line 1096
    add-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    .line 1097
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->pinToBottom(I)V

    .line 1098
    sub-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    .line 1099
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    .line 1111
    :goto_2
    return-object v9

    .line 1081
    .end local v2    # "fadingEdgeLength":I
    .end local v6    # "referenceView":Landroid/view/View;
    .end local v8    # "rowStart":I
    .end local v9    # "sel":Landroid/view/View;
    .end local v11    # "topSelectionPixel":I
    :cond_0
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v13, v13, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v10

    .line 1083
    .local v3, "invertedSelection":I
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v13, v13, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v7, v13, v14

    .line 1084
    const/4 v13, 0x0

    sub-int v14, v7, v4

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .restart local v8    # "rowStart":I
    goto :goto_0

    .end local v3    # "invertedSelection":I
    .restart local v2    # "fadingEdgeLength":I
    .restart local v11    # "topSelectionPixel":I
    :cond_1
    move v13, v8

    .line 1090
    goto :goto_1

    .line 1101
    .restart local v6    # "referenceView":Landroid/view/View;
    .restart local v9    # "sel":Landroid/view/View;
    :cond_2
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v4, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 1103
    .local v1, "bottomSelectionPixel":I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    .line 1104
    .local v5, "offset":I
    iget-object v13, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v13, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->offsetChildrenTopAndBottom(I)V

    .line 1105
    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    .line 1106
    invoke-direct/range {p0 .. p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->pinToTop(I)V

    .line 1107
    add-int v13, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    .line 1108
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    goto :goto_2
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 1129
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v10}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v6

    .line 1132
    .local v6, "numColumns":I
    const/4 v4, -0x1

    .line 1134
    .local v4, "motionRowEnd":I
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v10, v10, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v10, :cond_1

    .line 1135
    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .line 1143
    .local v5, "motionRowStart":I
    :goto_0
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v10, v10, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v10, :cond_2

    move v10, v4

    :goto_1
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 1146
    .local v8, "temp":Landroid/view/View;
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iput v5, v10, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 1148
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v10}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v7

    .line 1150
    .local v7, "referenceView":Landroid/view/View;
    if-nez v7, :cond_3

    .line 1151
    const/4 v8, 0x0

    .line 1184
    .end local v8    # "temp":Landroid/view/View;
    :cond_0
    :goto_2
    return-object v8

    .line 1137
    .end local v5    # "motionRowStart":I
    .end local v7    # "referenceView":Landroid/view/View;
    :cond_1
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v10, v10, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v3, v10, p1

    .line 1139
    .local v3, "invertedSelection":I
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v10, v10, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    .line 1140
    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5    # "motionRowStart":I
    goto :goto_0

    .end local v3    # "invertedSelection":I
    :cond_2
    move v10, v5

    .line 1143
    goto :goto_1

    .line 1154
    .restart local v7    # "referenceView":Landroid/view/View;
    .restart local v8    # "temp":Landroid/view/View;
    :cond_3
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v10}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v9

    .line 1159
    .local v9, "verticalSpacing":I
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v10, v10, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v10, :cond_5

    .line 1160
    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 1161
    .local v0, "above":Landroid/view/View;
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    .line 1162
    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 1164
    .local v1, "below":Landroid/view/View;
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v10}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v2

    .line 1165
    .local v2, "childCount":I
    if-lez v2, :cond_4

    .line 1166
    invoke-direct {p0, v6, v9, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->correctTooHigh(III)V

    .line 1179
    :cond_4
    :goto_3
    if-nez v8, :cond_0

    .line 1181
    if-eqz v0, :cond_6

    move-object v8, v0

    .line 1182
    goto :goto_2

    .line 1169
    .end local v0    # "above":Landroid/view/View;
    .end local v1    # "below":Landroid/view/View;
    .end local v2    # "childCount":I
    :cond_5
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 1170
    .restart local v1    # "below":Landroid/view/View;
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    .line 1171
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 1173
    .restart local v0    # "above":Landroid/view/View;
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v10}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v2

    .line 1174
    .restart local v2    # "childCount":I
    if-lez v2, :cond_4

    .line 1175
    invoke-direct {p0, v6, v9, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->correctTooLow(III)V

    goto :goto_3

    :cond_6
    move-object v8, v1

    .line 1184
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .prologue
    const/4 v5, 0x0

    .line 1009
    const/4 v1, 0x0

    .line 1011
    .local v1, "selectedView":Landroid/view/View;
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 1013
    .local v0, "end":I
    :goto_0
    if-le p2, v0, :cond_1

    if-ltz p1, :cond_1

    .line 1015
    invoke-direct {p0, p1, p2, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 1016
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1017
    move-object v1, v2

    .line 1020
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    sub-int p2, v3, v4

    .line 1022
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iput p1, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 1024
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v3

    sub-int/2addr p1, v3

    .line 1025
    goto :goto_0

    .line 1027
    .end local v2    # "temp":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v3, :cond_2

    .line 1028
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 1031
    :cond_2
    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 3
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "numColumns"    # I
    .param p4, "rowStart"    # I

    .prologue
    .line 1351
    move v0, p1

    .line 1352
    .local v0, "bottomSelectionPixel":I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1353
    sub-int/2addr v0, p2

    .line 1355
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "rowStart"    # I

    .prologue
    .line 1368
    move v0, p1

    .line 1369
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_0

    .line 1370
    add-int/2addr v0, p2

    .line 1372
    :cond_0
    return v0
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 15
    .param p1, "startPos"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z

    .prologue
    .line 945
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v8

    .line 946
    .local v8, "columnWidth":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v10

    .line 949
    .local v10, "horizontalSpacing":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .line 950
    invoke-static {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    move v0, v10

    :goto_0
    add-int v4, v2, v0

    .line 952
    .local v4, "nextLeft":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v0, :cond_5

    .line 953
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v0

    add-int v0, v0, p1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 963
    .local v12, "last":I
    :cond_0
    :goto_1
    const/4 v14, 0x0

    .line 965
    .local v14, "selectedView":Landroid/view/View;
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->shouldShowSelector()Z

    move-result v9

    .line 966
    .local v9, "hasFocus":Z
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->touchModeDrawsInPressedState()Z

    move-result v11

    .line 967
    .local v11, "inClick":Z
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v13, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    .line 969
    .local v13, "selectedPosition":I
    const/4 v7, 0x0

    .line 970
    .local v7, "child":Landroid/view/View;
    move/from16 v1, p1

    .local v1, "pos":I
    :goto_2
    if-ge v1, v12, :cond_8

    .line 972
    if-ne v1, v13, :cond_6

    const/4 v5, 0x1

    .line 975
    .local v5, "selected":Z
    :goto_3
    if-eqz p3, :cond_7

    const/4 v6, -0x1

    .local v6, "where":I
    :goto_4
    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 976
    invoke-virtual/range {v0 .. v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v7

    .line 978
    add-int/2addr v4, v8

    .line 979
    add-int/lit8 v0, v12, -0x1

    if-ge v1, v0, :cond_1

    .line 980
    add-int/2addr v4, v10

    .line 983
    :cond_1
    if-eqz v5, :cond_3

    if-nez v9, :cond_2

    if-eqz v11, :cond_3

    .line 984
    :cond_2
    move-object v14, v7

    .line 970
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 950
    .end local v1    # "pos":I
    .end local v4    # "nextLeft":I
    .end local v5    # "selected":Z
    .end local v6    # "where":I
    .end local v7    # "child":Landroid/view/View;
    .end local v9    # "hasFocus":Z
    .end local v11    # "inClick":Z
    .end local v12    # "last":I
    .end local v13    # "selectedPosition":I
    .end local v14    # "selectedView":Landroid/view/View;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 955
    .restart local v4    # "nextLeft":I
    :cond_5
    add-int/lit8 v12, p1, 0x1

    .line 956
    .restart local v12    # "last":I
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v2

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 958
    sub-int v0, v12, p1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 959
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v0

    sub-int v2, v12, p1

    sub-int/2addr v0, v2

    add-int v2, v8, v10

    mul-int/2addr v0, v2

    add-int/2addr v4, v0

    goto :goto_1

    .line 972
    .restart local v1    # "pos":I
    .restart local v7    # "child":Landroid/view/View;
    .restart local v9    # "hasFocus":Z
    .restart local v11    # "inClick":Z
    .restart local v13    # "selectedPosition":I
    .restart local v14    # "selectedView":Landroid/view/View;
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 975
    .restart local v5    # "selected":Z
    :cond_7
    sub-int v6, v1, p1

    goto :goto_4

    .line 988
    .end local v5    # "selected":Z
    :cond_8
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v0, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$502(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Landroid/view/View;)Landroid/view/View;

    .line 990
    if-eqz v14, :cond_9

    .line 991
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$902(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Landroid/view/View;)Landroid/view/View;

    .line 994
    :cond_9
    return-object v14
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 22
    .param p1, "delta"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 1522
    .local v5, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    move/from16 v16, v0

    .line 1523
    .local v16, "selectedPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v7

    .line 1524
    .local v7, "numColumns":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v18

    .line 1528
    .local v18, "verticalSpacing":I
    const/4 v13, -0x1

    .line 1530
    .local v13, "rowEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 1531
    sub-int v19, v16, p1

    sub-int v20, v16, p1

    rem-int v20, v20, v7

    sub-int v9, v19, v20

    .line 1533
    .local v9, "oldRowStart":I
    rem-int v19, v16, v7

    sub-int v14, v16, v19

    .line 1545
    .local v14, "rowStart":I
    :goto_0
    sub-int v12, v14, v9

    .line 1547
    .local v12, "rowDelta":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->getTopSelectionPixel(III)I

    move-result v17

    .line 1548
    .local v17, "topSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v7, v14}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->getBottomSelectionPixel(IIII)I

    move-result v4

    .line 1552
    .local v4, "bottomSelectionPixel":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v14, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 1557
    if-lez v12, :cond_3

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v19

    if-nez v19, :cond_1

    const/4 v8, 0x0

    .line 1565
    .local v8, "oldBottom":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move/from16 v19, v13

    :goto_2
    add-int v20, v8, v18

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 1566
    .local v15, "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v11

    .line 1568
    .local v11, "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 1591
    .end local v8    # "oldBottom":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 1592
    sub-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    .line 1593
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    .line 1594
    add-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    .line 1601
    :goto_4
    return-object v15

    .line 1535
    .end local v4    # "bottomSelectionPixel":I
    .end local v9    # "oldRowStart":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v12    # "rowDelta":I
    .end local v14    # "rowStart":I
    .end local v15    # "sel":Landroid/view/View;
    .end local v17    # "topSelectionPixel":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v6, v19, v16

    .line 1537
    .local v6, "invertedSelection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v13, v19, v20

    .line 1538
    const/16 v19, 0x0

    sub-int v20, v13, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1540
    .restart local v14    # "rowStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v20, v16, p1

    sub-int v6, v19, v20

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v9, v19, v20

    .line 1542
    .restart local v9    # "oldRowStart":I
    const/16 v19, 0x0

    sub-int v20, v9, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_0

    .line 1562
    .end local v6    # "invertedSelection":I
    .restart local v4    # "bottomSelectionPixel":I
    .restart local v12    # "rowDelta":I
    .restart local v17    # "topSelectionPixel":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    .line 1563
    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v8

    goto/16 :goto_1

    .restart local v8    # "oldBottom":I
    :cond_2
    move/from16 v19, v14

    .line 1565
    goto/16 :goto_2

    .line 1569
    .end local v8    # "oldBottom":I
    :cond_3
    if-gez v12, :cond_6

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v19

    if-nez v19, :cond_4

    const/4 v10, 0x0

    .line 1576
    .local v10, "oldTop":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move/from16 v19, v13

    :goto_6
    sub-int v20, v10, v18

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 1577
    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v11

    .line 1579
    .restart local v11    # "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_3

    .line 1573
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v15    # "sel":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    .line 1574
    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_5

    .restart local v10    # "oldTop":I
    :cond_5
    move/from16 v19, v14

    .line 1576
    goto :goto_6

    .line 1584
    .end local v10    # "oldTop":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v19

    if-nez v19, :cond_7

    const/4 v10, 0x0

    .line 1587
    .restart local v10    # "oldTop":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move/from16 v19, v13

    :goto_8
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v10, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 1588
    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v11

    .restart local v11    # "referenceView":Landroid/view/View;
    goto/16 :goto_3

    .line 1584
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v15    # "sel":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    .line 1585
    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_7

    .restart local v10    # "oldTop":I
    :cond_8
    move/from16 v19, v14

    .line 1587
    goto :goto_8

    .line 1596
    .end local v10    # "oldTop":I
    .restart local v11    # "referenceView":Landroid/view/View;
    .restart local v15    # "sel":Landroid/view/View;
    :cond_9
    add-int v19, v13, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    .line 1597
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    .line 1598
    add-int/lit8 v19, v14, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    goto/16 :goto_4
.end method

.method private pinToBottom(I)V
    .locals 5
    .param p1, "childrenBottom"    # I

    .prologue
    .line 2000
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v1

    .line 2001
    .local v1, "count":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v4, v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    if-ne v3, v4, :cond_0

    .line 2002
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2003
    .local v0, "bottom":I
    sub-int v2, p1, v0

    .line 2004
    .local v2, "offset":I
    if-lez v2, :cond_0

    .line 2005
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v3, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->offsetChildrenTopAndBottom(I)V

    .line 2008
    .end local v0    # "bottom":I
    .end local v2    # "offset":I
    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 4
    .param p1, "childrenTop"    # I

    .prologue
    .line 1990
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    if-nez v2, :cond_0

    .line 1991
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1992
    .local v1, "top":I
    sub-int v0, p1, v1

    .line 1993
    .local v0, "offset":I
    if-gez v0, :cond_0

    .line 1994
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->offsetChildrenTopAndBottom(I)V

    .line 1997
    .end local v0    # "offset":I
    .end local v1    # "top":I
    :cond_0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flow"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z
    .param p8, "where"    # I

    .prologue
    .line 1907
    if-eqz p6, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->shouldShowSelector()Z

    move-result v19

    if-eqz v19, :cond_5

    const/4 v12, 0x1

    .line 1908
    .local v12, "isSelected":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v12, v0, :cond_6

    const/16 v17, 0x1

    .line 1909
    .local v17, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v13, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mTouchMode:I

    .line 1910
    .local v13, "mode":I
    if-lez v13, :cond_7

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_7

    const/4 v11, 0x1

    .line 1912
    .local v11, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_8

    const/16 v16, 0x1

    .line 1914
    .local v16, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v19

    if-eqz v19, :cond_9

    :cond_0
    const/4 v14, 0x1

    .line 1918
    .local v14, "needToMeasure":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;

    .line 1919
    .local v15, "p":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    if-nez v15, :cond_1

    .line 1920
    new-instance v15, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;

    .end local v15    # "p":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    const/16 v19, -0x1

    const/16 v20, -0x2

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v15, v0, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;-><init>(III)V

    .line 1923
    .restart local v15    # "p":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

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

    .line 1925
    if-eqz p7, :cond_a

    iget-boolean v0, v15, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 1926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-static {v0, v1, v2, v15}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$1600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1932
    :goto_5
    if-eqz v17, :cond_2

    .line 1933
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setSelected(Z)V

    .line 1934
    if-eqz v12, :cond_2

    .line 1935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->requestFocus()Z

    .line 1939
    :cond_2
    if-eqz v16, :cond_3

    .line 1940
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setPressed(Z)V

    .line 1943
    :cond_3
    if-eqz v14, :cond_b

    .line 1944
    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 1945
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    iget v0, v15, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->height:I

    move/from16 v21, v0

    .line 1944
    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1947
    .local v5, "childHeightSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    .line 1948
    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    iget v0, v15, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->width:I

    move/from16 v21, v0

    .line 1947
    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 1949
    .local v9, "childWidthSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v5}, Landroid/view/View;->measure(II)V

    .line 1954
    .end local v5    # "childHeightSpec":I
    .end local v9    # "childWidthSpec":I
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 1955
    .local v18, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1958
    .local v10, "h":I
    if-eqz p4, :cond_c

    move/from16 v8, p3

    .line 1960
    .local v8, "childTop":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$1900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v19

    and-int/lit8 v19, v19, 0x7

    packed-switch v19, :pswitch_data_0

    .line 1971
    :pswitch_0
    move/from16 v6, p5

    .line 1975
    .local v6, "childLeft":I
    :goto_8
    if-eqz v14, :cond_d

    .line 1976
    add-int v7, v6, v18

    .line 1977
    .local v7, "childRight":I
    add-int v4, v8, v10

    .line 1978
    .local v4, "childBottom":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8, v7, v4}, Landroid/view/View;->layout(IIII)V

    .line 1984
    .end local v4    # "childBottom":I
    .end local v7    # "childRight":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 1985
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1987
    :cond_4
    return-void

    .line 1907
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

    .line 1908
    .restart local v12    # "isSelected":Z
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1910
    .restart local v13    # "mode":I
    .restart local v17    # "updateChildSelected":Z
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1912
    .restart local v11    # "isPressed":Z
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1914
    .restart local v16    # "updateChildPressed":Z
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1928
    .restart local v14    # "needToMeasure":Z
    .restart local v15    # "p":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    :cond_a
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->forceAdd:Z

    .line 1929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p8

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v15, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$1700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    .line 1951
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$1800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Landroid/view/View;)V

    goto :goto_6

    .line 1958
    .restart local v10    # "h":I
    .restart local v18    # "w":I
    :cond_c
    sub-int v8, p3, v10

    goto :goto_7

    .line 1962
    .restart local v8    # "childTop":I
    :pswitch_1
    move/from16 v6, p5

    .line 1963
    .restart local v6    # "childLeft":I
    goto :goto_8

    .line 1965
    .end local v6    # "childLeft":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v19

    sub-int v19, v19, v18

    div-int/lit8 v19, v19, 0x2

    add-int v6, p5, v19

    .line 1966
    .restart local v6    # "childLeft":I
    goto :goto_8

    .line 1968
    .end local v6    # "childLeft":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v19

    add-int v19, v19, p5

    sub-int v6, v19, v18

    .line 1969
    .restart local v6    # "childLeft":I
    goto/16 :goto_8

    .line 1980
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, v6, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1981
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, v8, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_9

    .line 1960
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected arrowScroll(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    .line 2046
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v4, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    .line 2047
    .local v4, "selectedPosition":I
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v3

    .line 2052
    .local v3, "numColumns":I
    const/4 v2, 0x0

    .line 2054
    .local v2, "moved":Z
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v6, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v6, :cond_3

    .line 2055
    div-int v6, v4, v3

    mul-int v5, v6, v3

    .line 2056
    .local v5, "startOfRowPos":I
    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2063
    .local v0, "endOfRowPos":I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 2094
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 2095
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->playSoundEffect(I)V

    .line 2096
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->invokeOnItemScrollListener()V

    .line 2099
    :cond_1
    if-eqz v2, :cond_2

    .line 2103
    :cond_2
    return v2

    .line 2058
    .end local v0    # "endOfRowPos":I
    .end local v5    # "startOfRowPos":I
    :cond_3
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v6, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v4

    .line 2059
    .local v1, "invertedSelection":I
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v6, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    .line 2060
    .restart local v0    # "endOfRowPos":I
    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5    # "startOfRowPos":I
    goto :goto_0

    .line 2065
    .end local v1    # "invertedSelection":I
    :sswitch_0
    if-lez v5, :cond_0

    .line 2066
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iput v8, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mLayoutMode:I

    .line 2067
    sub-int v6, v4, v3

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->setSelectionInt(I)V

    .line 2068
    const/4 v2, 0x1

    goto :goto_1

    .line 2072
    :sswitch_1
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v6, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 2073
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iput v8, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mLayoutMode:I

    .line 2074
    add-int v6, v4, v3

    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->setSelectionInt(I)V

    .line 2075
    const/4 v2, 0x1

    goto :goto_1

    .line 2079
    :sswitch_2
    if-le v4, v5, :cond_0

    .line 2080
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iput v8, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mLayoutMode:I

    .line 2081
    add-int/lit8 v6, v4, -0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->setSelectionInt(I)V

    .line 2082
    const/4 v2, 0x1

    goto :goto_1

    .line 2086
    :sswitch_3
    if-ge v4, v0, :cond_0

    .line 2087
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iput v8, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mLayoutMode:I

    .line 2088
    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v7, v7, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->setSelectionInt(I)V

    .line 2089
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2063
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method protected fillGap(Z)V
    .locals 7
    .param p1, "down"    # Z

    .prologue
    .line 880
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v1

    .line 881
    .local v1, "numColumns":I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v4

    .line 883
    .local v4, "verticalSpacing":I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v0

    .line 885
    .local v0, "count":I
    if-eqz p1, :cond_2

    .line 886
    if-lez v0, :cond_1

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    add-int/lit8 v6, v0, -0x1

    .line 887
    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int v3, v5, v4

    .line 888
    .local v3, "startOffset":I
    :goto_0
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v5, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    add-int v2, v5, v0

    .line 889
    .local v2, "position":I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v5, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v5, :cond_0

    .line 890
    add-int/lit8 v5, v1, -0x1

    add-int/2addr v2, v5

    .line 892
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillDown(II)Landroid/view/View;

    .line 893
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->correctTooHigh(III)V

    .line 906
    :goto_1
    return-void

    .line 887
    .end local v2    # "position":I
    .end local v3    # "startOffset":I
    :cond_1
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getListPaddingTop()I

    move-result v3

    goto :goto_0

    .line 895
    :cond_2
    if-lez v0, :cond_3

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    const/4 v6, 0x0

    .line 896
    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v3, v5, v4

    .line 897
    .restart local v3    # "startOffset":I
    :goto_2
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v2, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 898
    .restart local v2    # "position":I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v5, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v5, :cond_4

    .line 899
    sub-int/2addr v2, v1

    .line 903
    :goto_3
    invoke-direct {p0, v2, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    .line 904
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->correctTooLow(III)V

    goto :goto_1

    .line 896
    .end local v2    # "position":I
    .end local v3    # "startOffset":I
    :cond_3
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getListPaddingBottom()I

    move-result v6

    sub-int v3, v5, v6

    goto :goto_2

    .line 901
    .restart local v2    # "position":I
    .restart local v3    # "startOffset":I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3
.end method

.method protected isCandidateSelection(II)Z
    .locals 8
    .param p1, "childIndex"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2117
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v0

    .line 2118
    .local v0, "count":I
    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    .line 2123
    .local v1, "invertedIndex":I
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v6, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v6, :cond_0

    .line 2124
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v6

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    .line 2125
    .local v3, "rowStart":I
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v6

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2131
    .local v2, "rowEnd":I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 2152
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2127
    .end local v2    # "rowEnd":I
    .end local v3    # "rowStart":I
    :cond_0
    add-int/lit8 v6, v0, -0x1

    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v7

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    .line 2128
    .restart local v2    # "rowEnd":I
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v6

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3    # "rowStart":I
    goto :goto_0

    .line 2135
    :sswitch_0
    if-ne p1, v3, :cond_2

    .line 2150
    :cond_1
    :goto_1
    return v4

    :cond_2
    move v4, v5

    .line 2135
    goto :goto_1

    .line 2138
    :sswitch_1
    if-eqz v3, :cond_1

    move v4, v5

    goto :goto_1

    .line 2141
    :sswitch_2
    if-eq p1, v2, :cond_1

    move v4, v5

    goto :goto_1

    .line 2144
    :sswitch_3
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    move v4, v5

    goto :goto_1

    .line 2147
    :sswitch_4
    if-ne p1, v3, :cond_3

    if-eqz v3, :cond_1

    :cond_3
    move v4, v5

    goto :goto_1

    .line 2150
    :sswitch_5
    if-ne p1, v2, :cond_4

    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    :cond_4
    move v4, v5

    goto :goto_1

    .line 2131
    nop

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
    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 1686
    .local v6, "childrenTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getBottom()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getTop()I

    move-result v19

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 1688
    .local v5, "childrenBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v4

    .line 1690
    .local v4, "childCount":I
    const/4 v8, 0x0

    .line 1693
    .local v8, "delta":I
    const/4 v15, 0x0

    .line 1694
    .local v15, "oldSel":Landroid/view/View;
    const/4 v14, 0x0

    .line 1695
    .local v14, "oldFirst":Landroid/view/View;
    const/4 v13, 0x0

    .line 1698
    .local v13, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mLayoutMode:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    move/from16 v19, v0

    sub-int v11, v18, v19

    .line 1718
    .local v11, "index":I
    if-ltz v11, :cond_0

    if-ge v11, v4, :cond_0

    .line 1719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1723
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1726
    .end local v11    # "index":I
    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v7, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mDataChanged:Z

    .line 1727
    .local v7, "dataChanged":Z
    if-eqz v7, :cond_2

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->handleDataChanged()V

    .line 1733
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 1734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->resetList()V

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->invokeOnItemScrollListener()V

    .line 1840
    .end local v6    # "childrenTop":I
    :goto_1
    return-void

    .line 1700
    .end local v7    # "dataChanged":Z
    .restart local v6    # "childrenTop":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNextSelectedPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    move/from16 v19, v0

    sub-int v11, v18, v19

    .line 1701
    .restart local v11    # "index":I
    if-ltz v11, :cond_1

    if-ge v11, v4, :cond_1

    .line 1702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    goto :goto_0

    .line 1711
    .end local v11    # "index":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNextSelectedPosition:I

    move/from16 v18, v0

    if-ltz v18, :cond_1

    .line 1712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNextSelectedPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    move/from16 v19, v0

    sub-int v8, v18, v19

    goto/16 :goto_0

    .line 1739
    .restart local v7    # "dataChanged":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->setSelectedPositionInt(I)V

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v9, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 1744
    .local v9, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    move-object/from16 v16, v0

    .line 1746
    .local v16, "recycleBin":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;
    if-eqz v7, :cond_4

    .line 1747
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v4, :cond_5

    .line 1748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1747
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1751
    .end local v10    # "i":I
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1756
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$1500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)V

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mLayoutMode:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_1

    .line 1786
    if-nez v4, :cond_e

    .line 1787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    move/from16 v18, v0

    if-nez v18, :cond_b

    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

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

    .line 1790
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillFromTop(I)Landroid/view/View;

    move-result-object v17

    .line 1812
    .end local v6    # "childrenTop":I
    .local v17, "sel":Landroid/view/View;
    :goto_4
    invoke-virtual/range {v16 .. v16}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->scrapActiveViews()V

    .line 1814
    if-eqz v17, :cond_13

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->positionSelector(Landroid/view/View;)V

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedTop:I

    .line 1827
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mLayoutMode:I

    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mDataChanged:Z

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNeedSync:Z

    .line 1830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->setNextSelectedPositionInt(I)V

    .line 1832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->updateScrollIndicators()V

    .line 1834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    move/from16 v18, v0

    if-lez v18, :cond_8

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->checkSelectionChanged()V

    .line 1838
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->invokeOnItemScrollListener()V

    goto/16 :goto_1

    .line 1760
    .end local v17    # "sel":Landroid/view/View;
    .restart local v6    # "childrenTop":I
    :pswitch_3
    if-eqz v13, :cond_9

    .line 1761
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v6, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillFromSelection(III)Landroid/view/View;

    move-result-object v17

    .restart local v17    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1763
    .end local v17    # "sel":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillSelection(II)Landroid/view/View;

    move-result-object v17

    .line 1765
    .restart local v17    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1767
    .end local v17    # "sel":Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    .line 1768
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillFromTop(I)Landroid/view/View;

    move-result-object v17

    .line 1769
    .restart local v17    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1772
    .end local v17    # "sel":Landroid/view/View;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillUp(II)Landroid/view/View;

    move-result-object v17

    .line 1773
    .restart local v17    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1776
    .end local v17    # "sel":Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSpecificTop:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v17

    .line 1777
    .restart local v17    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1779
    .end local v17    # "sel":Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSyncPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSpecificTop:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v17

    .line 1780
    .restart local v17    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1783
    .end local v17    # "sel":Landroid/view/View;
    :pswitch_8
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->moveSelection(III)Landroid/view/View;

    move-result-object v17

    .line 1784
    .restart local v17    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1788
    .end local v17    # "sel":Landroid/view/View;
    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 1792
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    move/from16 v18, v0

    add-int/lit8 v12, v18, -0x1

    .line 1793
    .local v12, "last":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

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

    .line 1795
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillFromBottom(II)Landroid/view/View;

    move-result-object v17

    .line 1796
    .restart local v17    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v17    # "sel":Landroid/view/View;
    :cond_d
    move/from16 v18, v12

    .line 1793
    goto :goto_6

    .line 1798
    .end local v12    # "last":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    move/from16 v18, v0

    if-ltz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_10

    .line 1799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    move/from16 v18, v0

    if-nez v15, :cond_f

    .end local v6    # "childrenTop":I
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v17

    .restart local v17    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1800
    .end local v17    # "sel":Landroid/view/View;
    .restart local v6    # "childrenTop":I
    :cond_f
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_7

    .line 1801
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    .line 1802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    move/from16 v18, v0

    if-nez v14, :cond_11

    .end local v6    # "childrenTop":I
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v17

    .restart local v17    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1803
    .end local v17    # "sel":Landroid/view/View;
    .restart local v6    # "childrenTop":I
    :cond_11
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_8

    .line 1805
    :cond_12
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v17

    .restart local v17    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1817
    .end local v6    # "childrenTop":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mTouchMode:I

    move/from16 v18, v0

    if-lez v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mTouchMode:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    .line 1818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1819
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_7

    .line 1820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_5

    .line 1823
    .end local v3    # "child":Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedTop:I

    .line 1824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    .line 1698
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1758
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
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z
    .param p6, "where"    # I

    .prologue
    .line 851
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 854
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 857
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 874
    .end local v1    # "child":Landroid/view/View;
    .local v9, "child":Landroid/view/View;
    :goto_0
    return-object v9

    .line 867
    .end local v9    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mIsScrap:[Z

    invoke-virtual {v0, p1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 870
    .restart local v1    # "child":Landroid/view/View;
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

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

    invoke-direct/range {v0 .. v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 874
    .end local v1    # "child":Landroid/view/View;
    .restart local v9    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1606
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 1607
    .local v15, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1608
    .local v9, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 1609
    .local v16, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 1613
    .local v10, "heightSize":I
    if-nez v15, :cond_0

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v17

    if-lez v17, :cond_7

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v16, v17, v18

    .line 1619
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getVerticalScrollbarWidth()I

    move-result v17

    add-int v16, v16, v17

    .line 1622
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v17, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 1623
    .local v6, "childWidth":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->determineColumns(I)V

    .line 1625
    const/4 v4, 0x0

    .line 1627
    .local v4, "childHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

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

    .line 1628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v8, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    .line 1629
    .local v8, "count":I
    if-lez v8, :cond_2

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mIsScrap:[Z

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 1632
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;

    .line 1633
    .local v14, "p":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    if-nez v14, :cond_1

    .line 1634
    new-instance v14, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;

    .end local v14    # "p":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v14, v0, v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;-><init>(III)V

    .line 1636
    .restart local v14    # "p":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    invoke-virtual {v3, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1638
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v14, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->viewType:I

    .line 1639
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v14, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->forceAdd:Z

    .line 1641
    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 1642
    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    const/16 v18, 0x0

    iget v0, v14, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->height:I

    move/from16 v19, v0

    .line 1641
    invoke-static/range {v17 .. v19}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1643
    .local v5, "childHeightSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    .line 1644
    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    const/16 v18, 0x0

    iget v0, v14, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->width:I

    move/from16 v19, v0

    .line 1643
    invoke-static/range {v17 .. v19}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 1645
    .local v7, "childWidthSpec":I
    invoke-virtual {v3, v7, v5}, Landroid/view/View;->measure(II)V

    .line 1647
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    move-object/from16 v17, v0

    iget v0, v14, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->viewType:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1654
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childHeightSpec":I
    .end local v7    # "childWidthSpec":I
    .end local v14    # "p":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    :cond_2
    if-nez v9, :cond_3

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    .line 1656
    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getVerticalFadingEdgeLength()I

    move-result v18

    mul-int/lit8 v18, v18, 0x2

    add-int v10, v17, v18

    .line 1659
    :cond_3
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    if-ne v9, v0, :cond_6

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v13, v17, v18

    .line 1662
    .local v13, "ourSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v12

    .line 1663
    .local v12, "numColumns":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v8, :cond_5

    .line 1664
    add-int/2addr v13, v4

    .line 1665
    add-int v17, v11, v12

    move/from16 v0, v17

    if-ge v0, v8, :cond_4

    .line 1666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v17

    add-int v13, v13, v17

    .line 1668
    :cond_4
    if-lt v13, v10, :cond_9

    .line 1669
    move v13, v10

    .line 1673
    :cond_5
    move v10, v13

    .line 1676
    .end local v11    # "i":I
    .end local v12    # "numColumns":I
    .end local v13    # "ourSize":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1, v10}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$1400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;II)V

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move/from16 v0, p1

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mWidthMeasureSpec:I

    .line 1681
    return-void

    .line 1617
    .end local v4    # "childHeight":I
    .end local v6    # "childWidth":I
    .end local v8    # "count":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v16, v17, v18

    goto/16 :goto_0

    .line 1627
    .restart local v4    # "childHeight":I
    .restart local v6    # "childWidth":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/widget/ListAdapter;->getCount()I

    move-result v17

    goto/16 :goto_1

    .line 1663
    .restart local v8    # "count":I
    .restart local v11    # "i":I
    .restart local v12    # "numColumns":I
    .restart local v13    # "ourSize":I
    :cond_9
    add-int/2addr v11, v12

    goto :goto_2
.end method

.method protected setSelectionInt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 2017
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v4, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNextSelectedPosition:I

    .line 2019
    .local v4, "previousSelectedPosition":I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v5, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->setNextSelectedPositionInt(I)V

    .line 2020
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->layoutChildren()V

    .line 2022
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v5, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v5, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v6, v6, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNextSelectedPosition:I

    sub-int v0, v5, v6

    .line 2024
    .local v0, "next":I
    :goto_0
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget-boolean v5, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v5, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int v2, v5, v4

    .line 2027
    .local v2, "previous":I
    :goto_1
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    div-int v1, v0, v5

    .line 2028
    .local v1, "nextRow":I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I

    move-result v5

    div-int v3, v2, v5

    .line 2030
    .local v3, "previousRow":I
    if-eq v1, v3, :cond_0

    .line 2034
    :cond_0
    return-void

    .line 2022
    .end local v0    # "next":I
    .end local v1    # "nextRow":I
    .end local v2    # "previous":I
    .end local v3    # "previousRow":I
    :cond_1
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    iget v0, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNextSelectedPosition:I

    goto :goto_0

    .restart local v0    # "next":I
    :cond_2
    move v2, v4

    .line 2024
    goto :goto_1
.end method

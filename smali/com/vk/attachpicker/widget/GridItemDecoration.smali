.class public Lcom/vk/attachpicker/widget/GridItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "GridItemDecoration.java"


# instance fields
.field private final mFooterCount:I

.field private final mGridSize:I

.field private final mHeaderCount:I

.field private final mIncludeEdge:Z

.field private final mSpacing:I


# direct methods
.method public constructor <init>(IIIIZ)V
    .locals 2
    .param p1, "gridSpacingPx"    # I
    .param p2, "gridSize"    # I
    .param p3, "headerCount"    # I
    .param p4, "footerCount"    # I
    .param p5, "includeEdge"    # Z

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 17
    move v0, p1

    .line 18
    .local v0, "realSpacing":I
    :goto_0
    rem-int v1, v0, p2

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 19
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 21
    :cond_0
    if-gtz v0, :cond_1

    .line 22
    const/4 v0, 0x1

    .line 23
    :goto_1
    rem-int v1, v0, p2

    if-eqz v1, :cond_1

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 27
    :cond_1
    iput v0, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mSpacing:I

    .line 28
    iput p2, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mGridSize:I

    .line 29
    iput p3, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mHeaderCount:I

    .line 30
    iput p4, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mFooterCount:I

    .line 31
    iput-boolean p5, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mIncludeEdge:Z

    .line 32
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 6
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 38
    .local v2, "realItemPosition":I
    iget v3, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mHeaderCount:I

    if-ge v2, v3, :cond_1

    .line 39
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget v3, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mHeaderCount:I

    sub-int v1, v2, v3

    .line 43
    .local v1, "itemPosition":I
    iget v3, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mGridSize:I

    rem-int v0, v1, v3

    .line 46
    .local v0, "column":I
    iget-boolean v3, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mIncludeEdge:Z

    if-eqz v3, :cond_3

    .line 47
    iget v3, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mSpacing:I

    iget v4, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mSpacing:I

    mul-int/2addr v4, v0

    iget v5, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mGridSize:I

    div-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 48
    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mSpacing:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mGridSize:I

    div-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 50
    iget v3, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mGridSize:I

    if-ge v1, v3, :cond_2

    .line 51
    iget v3, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mSpacing:I

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 53
    :cond_2
    iget v3, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mSpacing:I

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 55
    :cond_3
    iget v3, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mSpacing:I

    mul-int/2addr v3, v0

    iget v4, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mGridSize:I

    div-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 56
    iget v3, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mSpacing:I

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mSpacing:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mGridSize:I

    div-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 57
    iget v3, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mGridSize:I

    if-lt v1, v3, :cond_0

    .line 58
    iget v3, p0, Lcom/vk/attachpicker/widget/GridItemDecoration;->mSpacing:I

    iput v3, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

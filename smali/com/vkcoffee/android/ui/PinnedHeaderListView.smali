.class public Lcom/vkcoffee/android/ui/PinnedHeaderListView;
.super Lcom/vkcoffee/android/ui/FixedScrollListView;
.source "PinnedHeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/PinnedHeaderListView$PinnedSectionedHeaderAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/vkcoffee/android/ui/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

.field private mCurrentHeader:Landroid/view/View;

.field private mCurrentSection:I

.field private mHeaderOffset:F

.field private mShouldPin:Z

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/FixedScrollListView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mShouldPin:Z

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mCurrentSection:I

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 32
    invoke-super {p0, p0}, Lcom/vkcoffee/android/ui/FixedScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/FixedScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mShouldPin:Z

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mCurrentSection:I

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 38
    invoke-super {p0, p0}, Lcom/vkcoffee/android/ui/FixedScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/FixedScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mShouldPin:Z

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mCurrentSection:I

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 44
    invoke-super {p0, p0}, Lcom/vkcoffee/android/ui/FixedScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 45
    return-void
.end method

.method private ensurePinnedHeaderLayout(Landroid/view/View;)V
    .locals 7
    .param p1, "header"    # Landroid/view/View;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->getWidth()I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 140
    .local v3, "widthSpec":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 141
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_1

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_1

    .line 142
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 146
    .local v1, "heightSpec":I
    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/view/View;->measure(II)V

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 148
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->getWidth()I

    move-result v4

    invoke-virtual {p1, v5, v5, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 150
    .end local v0    # "height":I
    .end local v1    # "heightSpec":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "widthSpec":I
    :cond_0
    return-void

    .line 144
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "widthSpec":I
    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "heightSpec":I
    goto :goto_0
.end method

.method private getHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "section"    # I
    .param p2, "oldView"    # Landroid/view/View;

    .prologue
    .line 123
    iget v2, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mCurrentSection:I

    if-ne p1, v2, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 124
    .local v0, "shouldLayout":Z
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mAdapter:Lcom/vkcoffee/android/ui/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    instance-of v2, v2, Lcom/vkcoffee/android/ui/MultiSectionAdapter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mAdapter:Lcom/vkcoffee/android/ui/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    check-cast v2, Lcom/vkcoffee/android/ui/MultiSectionAdapter;

    invoke-virtual {v2, p1}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->isSectionHeaderVisible(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 125
    const/4 v1, 0x0

    .line 133
    :cond_1
    :goto_1
    return-object v1

    .line 123
    .end local v0    # "shouldLayout":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    .restart local v0    # "shouldLayout":Z
    :cond_3
    iget-object v2, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mAdapter:Lcom/vkcoffee/android/ui/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    invoke-interface {v2, p1, p2, p0}, Lcom/vkcoffee/android/ui/PinnedHeaderListView$PinnedSectionedHeaderAdapter;->getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 128
    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 130
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->ensurePinnedHeaderLayout(Landroid/view/View;)V

    .line 131
    iput p1, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mCurrentSection:I

    goto :goto_1
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 155
    :try_start_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/FixedScrollListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 157
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 158
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mAdapter:Lcom/vkcoffee/android/ui/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mShouldPin:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 167
    .local v0, "saveCount":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mHeaderOffset:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 168
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 169
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 170
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    .end local v0    # "saveCount":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 65
    :try_start_0
    invoke-super/range {p0 .. p5}, Lcom/vkcoffee/android/ui/FixedScrollListView;->onLayout(ZIIII)V

    .line 66
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 67
    .local v0, "firstVis":I
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    sub-int v2, p4, p2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sub-int v3, p5, p3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "firstVis":I
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 8
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 77
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v5, :cond_0

    .line 78
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v5, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v5

    sub-int/2addr p2, v5

    .line 81
    if-gez p2, :cond_2

    .line 82
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 83
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 84
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->requestLayout()V

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mAdapter:Lcom/vkcoffee/android/ui/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mShouldPin:Z

    if-eqz v5, :cond_1

    .line 91
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mAdapter:Lcom/vkcoffee/android/ui/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    invoke-interface {v5, p2}, Lcom/vkcoffee/android/ui/PinnedHeaderListView$PinnedSectionedHeaderAdapter;->getSectionForPosition(I)I

    move-result v4

    .line 92
    .local v4, "section":I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->getHeaderView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    .line 93
    iput v6, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mHeaderOffset:F

    .line 95
    move v2, p2

    .local v2, "i":I
    :goto_1
    add-int v5, p2, p3

    if-ge v2, v5, :cond_6

    .line 96
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mAdapter:Lcom/vkcoffee/android/ui/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    invoke-interface {v5, v2}, Lcom/vkcoffee/android/ui/PinnedHeaderListView$PinnedSectionedHeaderAdapter;->isSectionHeader(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 97
    sub-int v5, v2, p2

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "header":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v1, v5

    .line 99
    .local v1, "headerTop":F
    const/4 v3, 0x0

    .line 100
    .local v3, "pinnedHeaderHeight":F
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 101
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v3, v5

    .line 103
    :cond_3
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 104
    cmpl-float v5, v3, v1

    if-ltz v5, :cond_5

    cmpl-float v5, v1, v6

    if-lez v5, :cond_5

    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v1, v5

    iput v5, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mHeaderOffset:F

    .line 95
    .end local v0    # "header":Landroid/view/View;
    .end local v1    # "headerTop":F
    .end local v3    # "pinnedHeaderHeight":F
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 106
    .restart local v0    # "header":Landroid/view/View;
    .restart local v1    # "headerTop":F
    .restart local v3    # "pinnedHeaderHeight":F
    :cond_5
    cmpg-float v5, v1, v6

    if-gtz v5, :cond_4

    .line 107
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 112
    .end local v0    # "header":Landroid/view/View;
    .end local v1    # "headerTop":F
    .end local v3    # "pinnedHeaderHeight":F
    :cond_6
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->invalidate()V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 120
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 54
    move-object v0, p1

    check-cast v0, Lcom/vkcoffee/android/ui/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mAdapter:Lcom/vkcoffee/android/ui/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    .line 55
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/FixedScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 177
    return-void
.end method

.method public setPinHeaders(Z)V
    .locals 0
    .param p1, "shouldPin"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/PinnedHeaderListView;->mShouldPin:Z

    .line 50
    return-void
.end method

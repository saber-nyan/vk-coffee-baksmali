.class public Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "MultiColumnLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MCLM"


# instance fields
.field private cols:[Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

.field private topPixelOffset:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 11
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 13
    iput v3, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->topPixelOffset:I

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    new-instance v1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    const/4 v2, -0x1

    invoke-direct {v1, v3, v2, v3}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;-><init>(III)V

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->cols:[Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    .line 314
    return-void
.end method

.method private columnForView(Landroid/view/View;)Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 203
    iget-object v2, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->cols:[Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 204
    .local v0, "col":Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    iget-object v4, v0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->views:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    return-object v0

    .line 203
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v0    # "col":Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find column for view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". This shouldn\'t happen."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private fillDown(Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 13
    .param p1, "col"    # Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 141
    iget-object v0, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 168
    :cond_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->views:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->views:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 145
    .local v8, "lastView":Landroid/view/View;
    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v9, v0, 0x1

    .line 146
    .local v9, "pos":I
    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v3

    .line 147
    .local v3, "topOffset":I
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getRealColumnWidth(Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;)I

    move-result v10

    .line 148
    .local v10, "width":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getPaddingLeft()I

    move-result v2

    .line 149
    .local v2, "left":I
    iget-object v4, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->cols:[Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    array-length v5, v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_3

    aget-object v6, v4, v0

    .line 150
    .local v6, "c":Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    if-eq v6, p1, :cond_2

    iget v11, v6, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->order:I

    iget v12, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->order:I

    if-ge v11, v12, :cond_2

    .line 151
    invoke-direct {p0, v6}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getRealColumnWidth(Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;)I

    move-result v11

    add-int/2addr v2, v11

    .line 149
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    .end local v6    # "c":Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    :cond_3
    iget v0, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->endIndex:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_5

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getItemCount()I

    move-result v7

    .line 155
    .local v7, "end":I
    :goto_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getHeight()I

    move-result v0

    if-ge v3, v0, :cond_0

    if-ge v9, v7, :cond_0

    .line 156
    invoke-virtual {p2, v9}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    .line 157
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getPaddedWidth()I

    move-result v0

    sub-int/2addr v0, v10

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v0, v4}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 158
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->addView(Landroid/view/View;)V

    .line 159
    iget-object v0, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    add-int v4, v2, v10

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    add-int v5, v3, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 161
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    add-int/2addr v3, v0

    .line 162
    add-int/lit8 v0, v7, -0x1

    if-ne v9, v0, :cond_4

    .line 163
    iget v0, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->topPixelOffset:I

    add-int/2addr v0, v3

    iput v0, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->maxBottom:I

    .line 166
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 167
    goto :goto_1

    .line 154
    .end local v1    # "view":Landroid/view/View;
    .end local v7    # "end":I
    :cond_5
    iget v7, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->endIndex:I

    goto :goto_1
.end method

.method private fillInitial(Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 12
    .param p1, "col"    # Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "extraHeight"    # I

    .prologue
    .line 111
    iget v0, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->firstVisibleIndex:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 138
    :cond_0
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x0

    iget v4, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->firstVisibleTop:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 115
    .local v3, "topOffset":I
    const/4 v0, 0x0

    iget v4, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->firstVisibleIndex:I

    iget v5, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->startIndex:I

    sub-int/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 116
    .local v8, "pos":I
    iget v0, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->endIndex:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getItemCount()I

    move-result v7

    .line 117
    .local v7, "end":I
    :goto_0
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getRealColumnWidth(Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;)I

    move-result v9

    .line 118
    .local v9, "width":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getPaddingLeft()I

    move-result v2

    .line 119
    .local v2, "left":I
    iget-object v4, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->cols:[Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    array-length v5, v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_4

    aget-object v6, v4, v0

    .line 120
    .local v6, "c":Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    if-eq v6, p1, :cond_2

    iget v10, v6, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->order:I

    iget v11, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->order:I

    if-ge v10, v11, :cond_2

    .line 121
    invoke-direct {p0, v6}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getRealColumnWidth(Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;)I

    move-result v10

    add-int/2addr v2, v10

    .line 119
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    .end local v2    # "left":I
    .end local v6    # "c":Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    .end local v7    # "end":I
    .end local v9    # "width":I
    :cond_3
    iget v7, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->endIndex:I

    goto :goto_0

    .line 125
    .restart local v2    # "left":I
    .restart local v7    # "end":I
    .restart local v9    # "width":I
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getHeight()I

    move-result v0

    add-int/2addr v0, p3

    if-ge v3, v0, :cond_0

    iget v0, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->startIndex:I

    sub-int v0, v7, v0

    if-ge v8, v0, :cond_0

    .line 126
    iget v0, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->startIndex:I

    add-int/2addr v0, v8

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    .line 127
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getPaddedWidth()I

    move-result v0

    sub-int/2addr v0, v9

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v0, v4}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 128
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->addView(Landroid/view/View;)V

    .line 129
    iget-object v0, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int v4, v2, v9

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    add-int v5, v3, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 131
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    add-int/2addr v3, v0

    .line 132
    add-int/lit8 v0, v7, -0x1

    iget v4, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->startIndex:I

    sub-int/2addr v0, v4

    if-ne v8, v0, :cond_5

    .line 133
    iget v0, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->topPixelOffset:I

    add-int/2addr v0, v3

    iput v0, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->maxBottom:I

    .line 136
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 137
    goto :goto_2
.end method

.method private fillUp(Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 13
    .param p1, "col"    # Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .prologue
    const/4 v10, 0x0

    .line 172
    iget-object v0, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 173
    iget v0, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->topPixelOffset:I

    iget v3, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->maxBottom:I

    if-ge v0, v3, :cond_3

    .line 174
    iget v0, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->endIndex:I

    add-int/lit8 v8, v0, -0x1

    .line 175
    .local v8, "pos":I
    iget v0, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->maxBottom:I

    iget v3, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->topPixelOffset:I

    sub-int v5, v0, v3

    .line 184
    .local v5, "topOffset":I
    :goto_0
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getRealColumnWidth(Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;)I

    move-result v9

    .line 185
    .local v9, "width":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getPaddingLeft()I

    move-result v2

    .line 186
    .local v2, "left":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->cols:[Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    array-length v4, v3

    move v0, v10

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v6, v3, v0

    .line 187
    .local v6, "c":Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    if-eq v6, p1, :cond_0

    iget v11, v6, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->order:I

    iget v12, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->order:I

    if-ge v11, v12, :cond_0

    .line 188
    invoke-direct {p0, v6}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getRealColumnWidth(Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;)I

    move-result v11

    add-int/2addr v2, v11

    .line 186
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    .end local v2    # "left":I
    .end local v5    # "topOffset":I
    .end local v6    # "c":Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    .end local v8    # "pos":I
    .end local v9    # "width":I
    :cond_1
    iget-object v0, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 181
    .local v7, "firstView":Landroid/view/View;
    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 182
    .restart local v8    # "pos":I
    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v5

    .restart local v5    # "topOffset":I
    goto :goto_0

    .line 191
    .end local v7    # "firstView":Landroid/view/View;
    .restart local v2    # "left":I
    .restart local v9    # "width":I
    :cond_2
    :goto_2
    if-ltz v5, :cond_3

    iget v0, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->startIndex:I

    if-lt v8, v0, :cond_3

    .line 192
    invoke-virtual {p2, v8}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    .line 193
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getPaddedWidth()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-virtual {p0, v1, v0, v10}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 194
    invoke-virtual {p0, v1, v10}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->addView(Landroid/view/View;I)V

    .line 195
    iget-object v0, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, v10, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 196
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    sub-int v3, v5, v0

    add-int v4, v2, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 197
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v5, v0

    .line 198
    add-int/lit8 v8, v8, -0x1

    .line 199
    goto :goto_2

    .line 200
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "left":I
    .end local v5    # "topOffset":I
    .end local v8    # "pos":I
    .end local v9    # "width":I
    :cond_3
    return-void
.end method

.method private getPaddedWidth()I
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getRealColumnWidth(Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;)I
    .locals 6
    .param p1, "col"    # Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    .prologue
    .line 93
    iget v2, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->width:I

    if-nez v2, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getPaddedWidth()I

    move-result v1

    .line 95
    .local v1, "width":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->cols:[Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 96
    .local v0, "c":Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    if-eq v0, p1, :cond_0

    .line 97
    iget v5, v0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->width:I

    sub-int/2addr v1, v5

    .line 95
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "c":Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    .end local v1    # "width":I
    :cond_1
    iget v1, p1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->width:I

    .line 103
    .restart local v1    # "width":I
    :cond_2
    return v1
.end method

.method private recycleOffscreenViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 4
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 212
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 213
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 214
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 215
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 216
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->columnForView(Landroid/view/View;)Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    move-result-object v2

    iget-object v2, v2, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 212
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 248
    const/16 v0, 0x64

    return v0
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 253
    const/16 v0, 0x1f4

    return v0
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 258
    const/16 v0, 0x3e8

    return v0
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 3

    .prologue
    .line 20
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    move v1, v3

    .line 231
    :cond_0
    return v1

    .line 225
    :cond_1
    const v1, 0x7fffffff

    .line 226
    .local v1, "pos":I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->cols:[Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, v5, v4

    .line 227
    .local v0, "col":Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    iget-object v2, v0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 228
    iget-object v2, v0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 226
    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 10
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v6, 0x0

    .line 50
    const/4 v4, 0x1

    .line 51
    .local v4, "isInitial":Z
    const/4 v2, 0x0

    .line 52
    .local v2, "extraH":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 53
    iget-object v8, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->cols:[Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    array-length v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_1

    aget-object v1, v8, v7

    .line 54
    .local v1, "col":Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    iget-object v5, v1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->views:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 55
    const/4 v5, -0x1

    iput v5, v1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->firstVisibleIndex:I

    .line 53
    :goto_1
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    .line 58
    :cond_0
    iget-object v5, v1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    iput v5, v1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->firstVisibleIndex:I

    .line 59
    iget-object v5, v1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v5

    iput v5, v1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->firstVisibleTop:I

    goto :goto_1

    .line 61
    .end local v1    # "col":Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    :cond_1
    const/4 v4, 0x0

    .line 62
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 63
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 64
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 65
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v5

    add-int/2addr v2, v5

    .line 63
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 72
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 73
    iget-object v7, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->cols:[Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    array-length v8, v7

    move v5, v6

    :goto_3
    if-ge v5, v8, :cond_5

    aget-object v1, v7, v5

    .line 74
    .restart local v1    # "col":Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    iget-object v9, v1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->views:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 75
    if-eqz v4, :cond_4

    .line 76
    iput v6, v1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->maxBottom:I

    .line 73
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 80
    .end local v1    # "col":Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    :cond_5
    iget-object v7, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->cols:[Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    array-length v8, v7

    move v5, v6

    :goto_4
    if-ge v5, v8, :cond_6

    aget-object v0, v7, v5

    .line 81
    .local v0, "c":Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    invoke-direct {p0, v0, p1, v2}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->fillInitial(Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    .line 82
    iput v6, v0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->firstVisibleTop:I

    iput v6, v0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->firstVisibleIndex:I

    .line 80
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 84
    .end local v0    # "c":Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    :cond_6
    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 12
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 263
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getChildCount()I

    move-result v10

    if-nez v10, :cond_0

    .line 311
    :goto_0
    return v9

    .line 268
    :cond_0
    invoke-virtual {p0, v9}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 270
    .local v7, "topView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 279
    .local v2, "bottomView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getFirstVisiblePosition()I

    move-result v10

    if-nez v10, :cond_1

    move v5, v8

    .line 280
    .local v5, "topBoundReached":Z
    :goto_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getLastVisiblePosition()I

    move-result v10

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getItemCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-lt v10, v11, :cond_2

    move v0, v8

    .line 281
    .local v0, "bottomBoundReached":Z
    :goto_2
    const/4 v4, 0x0

    .line 283
    .local v4, "delta":I
    if-lez p1, :cond_4

    .line 284
    if-eqz v0, :cond_3

    .line 285
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getHeight()I

    move-result v10

    sub-int/2addr v8, v10

    neg-int v1, v8

    .line 286
    .local v1, "bottomOffset":I
    neg-int v8, p1

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 298
    .end local v1    # "bottomOffset":I
    :goto_3
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->offsetChildrenVertical(I)V

    .line 299
    iget v8, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->topPixelOffset:I

    sub-int/2addr v8, v4

    iput v8, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->topPixelOffset:I

    .line 301
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->recycleOffscreenViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 302
    iget-object v8, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->cols:[Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    array-length v10, v8

    :goto_4
    if-ge v9, v10, :cond_7

    aget-object v3, v8, v9

    .line 303
    .local v3, "col":Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    if-lez p1, :cond_6

    .line 304
    invoke-direct {p0, v3, p2}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->fillDown(Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 302
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .end local v0    # "bottomBoundReached":Z
    .end local v3    # "col":Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    .end local v4    # "delta":I
    .end local v5    # "topBoundReached":Z
    :cond_1
    move v5, v9

    .line 279
    goto :goto_1

    .restart local v5    # "topBoundReached":Z
    :cond_2
    move v0, v9

    .line 280
    goto :goto_2

    .line 288
    .restart local v0    # "bottomBoundReached":Z
    .restart local v4    # "delta":I
    :cond_3
    neg-int v4, p1

    goto :goto_3

    .line 291
    :cond_4
    if-eqz v5, :cond_5

    .line 292
    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v8

    neg-int v8, v8

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->getPaddingTop()I

    move-result v10

    add-int v6, v8, v10

    .line 293
    .local v6, "topOffset":I
    neg-int v8, p1

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 294
    goto :goto_3

    .line 295
    .end local v6    # "topOffset":I
    :cond_5
    neg-int v4, p1

    goto :goto_3

    .line 306
    .restart local v3    # "col":Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    :cond_6
    invoke-direct {p0, v3, p2}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->fillUp(Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    goto :goto_5

    .line 311
    .end local v3    # "col":Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
    :cond_7
    neg-int v9, v4

    goto :goto_0
.end method

.method public setColumnCount(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 24
    new-array v1, p1, [Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    iput-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->cols:[Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->cols:[Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    new-instance v2, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    const/4 v3, -0x1

    invoke-direct {v2, v4, v3, v4}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;-><init>(III)V

    aput-object v2, v1, v0

    .line 27
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->cols:[Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    aget-object v1, v1, v0

    iput v0, v1, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->order:I

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->requestLayout()V

    .line 30
    return-void
.end method

.method public setColumnOrder(II)V
    .locals 1
    .param p1, "col"    # I
    .param p2, "order"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->cols:[Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    aget-object v0, v0, p1

    iput p2, v0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->order:I

    .line 45
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->requestLayout()V

    .line 46
    return-void
.end method

.method public setColumnRange(III)V
    .locals 1
    .param p1, "col"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->cols:[Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    aget-object v0, v0, p1

    iput p2, v0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->startIndex:I

    .line 34
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->cols:[Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    aget-object v0, v0, p1

    iput p3, v0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->endIndex:I

    .line 35
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->requestLayout()V

    .line 36
    return-void
.end method

.method public setColumnWidth(II)V
    .locals 1
    .param p1, "col"    # I
    .param p2, "w"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->cols:[Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;

    aget-object v0, v0, p1

    iput p2, v0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->width:I

    .line 40
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;->requestLayout()V

    .line 41
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

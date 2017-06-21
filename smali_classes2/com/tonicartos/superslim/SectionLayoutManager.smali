.class public abstract Lcom/tonicartos/superslim/SectionLayoutManager;
.super Ljava/lang/Object;
.source "SectionLayoutManager.java"


# static fields
.field private static final MARGIN_UNSET:I = -0x1


# instance fields
.field protected mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;


# direct methods
.method public constructor <init>(Lcom/tonicartos/superslim/LayoutManager;)V
    .locals 0
    .param p1, "layoutManager"    # Lcom/tonicartos/superslim/LayoutManager;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    .line 18
    return-void
.end method


# virtual methods
.method protected addView(Lcom/tonicartos/superslim/LayoutState$View;ILcom/tonicartos/superslim/LayoutManager$Direction;Lcom/tonicartos/superslim/LayoutState;)I
    .locals 3
    .param p1, "child"    # Lcom/tonicartos/superslim/LayoutState$View;
    .param p2, "position"    # I
    .param p3, "direction"    # Lcom/tonicartos/superslim/LayoutManager$Direction;
    .param p4, "state"    # Lcom/tonicartos/superslim/LayoutState;

    .prologue
    .line 379
    sget-object v1, Lcom/tonicartos/superslim/LayoutManager$Direction;->START:Lcom/tonicartos/superslim/LayoutManager$Direction;

    if-ne p3, v1, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 385
    .local v0, "addIndex":I
    :goto_0
    invoke-virtual {p4, p2}, Lcom/tonicartos/superslim/LayoutState;->decacheView(I)V

    .line 386
    iget-object v1, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    iget-object v2, p1, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/tonicartos/superslim/LayoutManager;->addView(Landroid/view/View;I)V

    .line 388
    return v0

    .line 382
    .end local v0    # "addIndex":I
    :cond_0
    iget-object v1, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v1}, Lcom/tonicartos/superslim/LayoutManager;->getChildCount()I

    move-result v0

    .restart local v0    # "addIndex":I
    goto :goto_0
.end method

.method public abstract computeHeaderOffset(ILcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I
.end method

.method public abstract fillToEnd(IIILcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I
.end method

.method public abstract fillToStart(IIILcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I
.end method

.method public findFirstCompletelyVisibleItemPosition(I)I
    .locals 2
    .param p1, "sectionFirstPosition"    # I

    .prologue
    .line 57
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/tonicartos/superslim/SectionLayoutManager;->getFirstCompletelyVisibleView(IZ)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "item":Landroid/view/View;
    if-nez v0, :cond_0

    .line 59
    const/4 v1, -0x1

    .line 61
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v1, v0}, Lcom/tonicartos/superslim/LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public findFirstVisibleItemPosition(I)I
    .locals 2
    .param p1, "sectionFirstPosition"    # I

    .prologue
    .line 71
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/tonicartos/superslim/SectionLayoutManager;->getFirstVisibleView(IZ)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "item":Landroid/view/View;
    if-nez v0, :cond_0

    .line 73
    const/4 v1, -0x1

    .line 75
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v1, v0}, Lcom/tonicartos/superslim/LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public findLastCompletelyVisibleItemPosition(I)I
    .locals 2
    .param p1, "sectionFirstPosition"    # I

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/tonicartos/superslim/SectionLayoutManager;->getLastCompletelyVisibleView(I)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "item":Landroid/view/View;
    if-nez v0, :cond_0

    .line 87
    const/4 v1, -0x1

    .line 89
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v1, v0}, Lcom/tonicartos/superslim/LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public findLastVisibleItemPosition(I)I
    .locals 2
    .param p1, "sectionFirstPosition"    # I

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/tonicartos/superslim/SectionLayoutManager;->getLastVisibleView(I)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, "item":Landroid/view/View;
    if-nez v0, :cond_0

    .line 101
    const/4 v1, -0x1

    .line 103
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v1, v0}, Lcom/tonicartos/superslim/LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public abstract finishFillToEnd(ILandroid/view/View;Lcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I
.end method

.method public abstract finishFillToStart(ILandroid/view/View;Lcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 126
    new-instance v0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Lcom/tonicartos/superslim/LayoutManager$LayoutParams;)Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    .locals 0
    .param p1, "params"    # Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    .prologue
    .line 122
    return-object p1
.end method

.method public getAnchorPosition(Lcom/tonicartos/superslim/LayoutState;Lcom/tonicartos/superslim/SectionData;I)I
    .locals 0
    .param p1, "state"    # Lcom/tonicartos/superslim/LayoutState;
    .param p2, "params"    # Lcom/tonicartos/superslim/SectionData;
    .param p3, "position"    # I

    .prologue
    .line 130
    return p3
.end method

.method public getFirstCompletelyVisibleView(IZ)Landroid/view/View;
    .locals 13
    .param p1, "sectionFirstPosition"    # I
    .param p2, "skipHeader"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 142
    iget-object v11, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v11}, Lcom/tonicartos/superslim/LayoutManager;->getClipToPadding()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v11}, Lcom/tonicartos/superslim/LayoutManager;->getPaddingTop()I

    move-result v6

    .line 143
    .local v6, "topEdge":I
    :goto_0
    iget-object v11, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v11}, Lcom/tonicartos/superslim/LayoutManager;->getClipToPadding()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    .line 144
    invoke-virtual {v11}, Lcom/tonicartos/superslim/LayoutManager;->getHeight()I

    move-result v11

    iget-object v12, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v12}, Lcom/tonicartos/superslim/LayoutManager;->getPaddingBottom()I

    move-result v12

    sub-int v0, v11, v12

    .line 147
    .local v0, "bottomEdge":I
    :goto_1
    const/4 v4, 0x0

    .line 148
    .local v4, "lookAt":I
    iget-object v11, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v11}, Lcom/tonicartos/superslim/LayoutManager;->getChildCount()I

    move-result v3

    .line 149
    .local v3, "childCount":I
    const/4 v2, 0x0

    .line 151
    .local v2, "candidate":Landroid/view/View;
    :goto_2
    if-lt v4, v3, :cond_3

    .line 171
    .end local v2    # "candidate":Landroid/view/View;
    :cond_0
    :goto_3
    return-object v2

    .end local v0    # "bottomEdge":I
    .end local v3    # "childCount":I
    .end local v4    # "lookAt":I
    .end local v6    # "topEdge":I
    :cond_1
    move v6, v9

    .line 142
    goto :goto_0

    .line 144
    .restart local v6    # "topEdge":I
    :cond_2
    iget-object v11, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    .line 145
    invoke-virtual {v11}, Lcom/tonicartos/superslim/LayoutManager;->getHeight()I

    move-result v0

    goto :goto_1

    .line 155
    .restart local v0    # "bottomEdge":I
    .restart local v2    # "candidate":Landroid/view/View;
    .restart local v3    # "childCount":I
    .restart local v4    # "lookAt":I
    :cond_3
    iget-object v11, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v11, v4}, Lcom/tonicartos/superslim/LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 157
    .local v8, "view":Landroid/view/View;
    iget-object v11, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v11, v8}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v11

    if-lt v11, v6, :cond_5

    move v7, v10

    .line 158
    .local v7, "topInside":Z
    :goto_4
    iget-object v11, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v11, v8}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v11

    if-gt v11, v0, :cond_6

    move v1, v10

    .line 160
    .local v1, "bottomInside":Z
    :goto_5
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    .line 161
    .local v5, "lp":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    invoke-virtual {v5}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result v11

    if-ne p1, v11, :cond_0

    .line 162
    if-eqz v7, :cond_8

    if-eqz v1, :cond_8

    .line 163
    iget-boolean v11, v5, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeader:Z

    if-eqz v11, :cond_4

    if-nez p2, :cond_7

    :cond_4
    move-object v2, v8

    .line 164
    goto :goto_3

    .end local v1    # "bottomInside":Z
    .end local v5    # "lp":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    .end local v7    # "topInside":Z
    :cond_5
    move v7, v9

    .line 157
    goto :goto_4

    .restart local v7    # "topInside":Z
    :cond_6
    move v1, v9

    .line 158
    goto :goto_5

    .line 166
    .restart local v1    # "bottomInside":Z
    .restart local v5    # "lp":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    :cond_7
    move-object v2, v8

    .line 174
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 175
    goto :goto_2
.end method

.method public getFirstVisibleView(IZ)Landroid/view/View;
    .locals 6
    .param p1, "sectionFirstPosition"    # I
    .param p2, "skipHeader"    # Z

    .prologue
    .line 187
    const/4 v2, 0x0

    .line 188
    .local v2, "lookAt":I
    iget-object v5, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v5}, Lcom/tonicartos/superslim/LayoutManager;->getChildCount()I

    move-result v1

    .line 189
    .local v1, "childCount":I
    const/4 v0, 0x0

    .line 191
    .local v0, "candidate":Landroid/view/View;
    :goto_0
    if-lt v2, v1, :cond_1

    .line 205
    .end local v0    # "candidate":Landroid/view/View;
    :cond_0
    :goto_1
    return-object v0

    .line 195
    .restart local v0    # "candidate":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v5, v2}, Lcom/tonicartos/superslim/LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 196
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    .line 197
    .local v3, "lp":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    invoke-virtual {v3}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 198
    iget-boolean v5, v3, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeader:Z

    if-eqz v5, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move-object v0, v4

    .line 199
    goto :goto_1

    .line 201
    :cond_3
    move-object v0, v4

    .line 208
    add-int/lit8 v2, v2, 0x1

    .line 209
    goto :goto_0
.end method

.method public getHighestEdge(III)I
    .locals 4
    .param p1, "sectionFirstPosition"    # I
    .param p2, "firstIndex"    # I
    .param p3, "defaultEdge"    # I

    .prologue
    .line 223
    move v1, p2

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v3}, Lcom/tonicartos/superslim/LayoutManager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 224
    iget-object v3, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v3, v1}, Lcom/tonicartos/superslim/LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 226
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    .line 227
    .local v2, "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    invoke-virtual {v2}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 236
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    .end local p3    # "defaultEdge":I
    :cond_0
    :goto_1
    return p3

    .line 230
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    .restart local p3    # "defaultEdge":I
    :cond_1
    iget-boolean v3, v2, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeader:Z

    if-eqz v3, :cond_2

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_2
    iget-object v3, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v3, v0}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p3

    goto :goto_1
.end method

.method public getLastCompletelyVisibleView(I)Landroid/view/View;
    .locals 12
    .param p1, "sectionFirstPosition"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 247
    iget-object v10, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v10}, Lcom/tonicartos/superslim/LayoutManager;->getClipToPadding()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v10}, Lcom/tonicartos/superslim/LayoutManager;->getPaddingTop()I

    move-result v5

    .line 248
    .local v5, "topEdge":I
    :goto_0
    iget-object v10, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v10}, Lcom/tonicartos/superslim/LayoutManager;->getClipToPadding()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    .line 249
    invoke-virtual {v10}, Lcom/tonicartos/superslim/LayoutManager;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v11}, Lcom/tonicartos/superslim/LayoutManager;->getPaddingBottom()I

    move-result v11

    sub-int v0, v10, v11

    .line 252
    .local v0, "bottomEdge":I
    :goto_1
    iget-object v10, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v10}, Lcom/tonicartos/superslim/LayoutManager;->getChildCount()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    .line 253
    .local v3, "lookAt":I
    const/4 v2, 0x0

    .line 255
    .local v2, "candidate":Landroid/view/View;
    :goto_2
    if-gez v3, :cond_3

    .line 277
    .end local v2    # "candidate":Landroid/view/View;
    :cond_0
    :goto_3
    return-object v2

    .end local v0    # "bottomEdge":I
    .end local v3    # "lookAt":I
    .end local v5    # "topEdge":I
    :cond_1
    move v5, v8

    .line 247
    goto :goto_0

    .line 249
    .restart local v5    # "topEdge":I
    :cond_2
    iget-object v10, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    .line 250
    invoke-virtual {v10}, Lcom/tonicartos/superslim/LayoutManager;->getHeight()I

    move-result v0

    goto :goto_1

    .line 259
    .restart local v0    # "bottomEdge":I
    .restart local v2    # "candidate":Landroid/view/View;
    .restart local v3    # "lookAt":I
    :cond_3
    iget-object v10, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v10, v3}, Lcom/tonicartos/superslim/LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 261
    .local v7, "view":Landroid/view/View;
    iget-object v10, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v10, v7}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v10

    if-lt v10, v5, :cond_4

    move v6, v9

    .line 262
    .local v6, "topInside":Z
    :goto_4
    iget-object v10, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v10, v7}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v10

    if-gt v10, v0, :cond_5

    move v1, v9

    .line 264
    .local v1, "bottomInside":Z
    :goto_5
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    .line 265
    .local v4, "lp":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    invoke-virtual {v4}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result v10

    if-ne p1, v10, :cond_8

    .line 266
    if-eqz v6, :cond_7

    if-eqz v1, :cond_7

    .line 267
    iget-boolean v10, v4, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeader:Z

    if-nez v10, :cond_6

    move-object v2, v7

    .line 268
    goto :goto_3

    .end local v1    # "bottomInside":Z
    .end local v4    # "lp":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    .end local v6    # "topInside":Z
    :cond_4
    move v6, v8

    .line 261
    goto :goto_4

    .restart local v6    # "topInside":Z
    :cond_5
    move v1, v8

    .line 262
    goto :goto_5

    .line 270
    .restart local v1    # "bottomInside":Z
    .restart local v4    # "lp":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    :cond_6
    move-object v2, v7

    .line 280
    :cond_7
    add-int/lit8 v3, v3, -0x1

    .line 281
    goto :goto_2

    .line 273
    :cond_8
    if-nez v2, :cond_0

    .line 274
    invoke-virtual {v4}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result p1

    .line 275
    goto :goto_2
.end method

.method public getLastVisibleView(I)Landroid/view/View;
    .locals 5
    .param p1, "sectionFirstPosition"    # I

    .prologue
    .line 291
    iget-object v4, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v4}, Lcom/tonicartos/superslim/LayoutManager;->getChildCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 292
    .local v1, "lookAt":I
    const/4 v0, 0x0

    .line 294
    .local v0, "candidate":Landroid/view/View;
    :goto_0
    if-gez v1, :cond_1

    .line 308
    .end local v0    # "candidate":Landroid/view/View;
    :cond_0
    :goto_1
    return-object v0

    .line 298
    .restart local v0    # "candidate":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v4, v1}, Lcom/tonicartos/superslim/LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 299
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    .line 300
    .local v2, "lp":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    invoke-virtual {v2}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 301
    iget-boolean v4, v2, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeader:Z

    if-nez v4, :cond_2

    move-object v0, v3

    .line 302
    goto :goto_1

    .line 304
    :cond_2
    move-object v0, v3

    .line 311
    add-int/lit8 v1, v1, -0x1

    .line 312
    goto :goto_0
.end method

.method public getLowestEdge(III)I
    .locals 4
    .param p1, "sectionFirstPosition"    # I
    .param p2, "lastIndex"    # I
    .param p3, "defaultEdge"    # I

    .prologue
    .line 327
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 328
    iget-object v3, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v3, v1}, Lcom/tonicartos/superslim/LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 330
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    .line 331
    .local v2, "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    invoke-virtual {v2}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 340
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    .end local p3    # "defaultEdge":I
    :cond_0
    :goto_1
    return p3

    .line 334
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    .restart local p3    # "defaultEdge":I
    :cond_1
    iget-boolean v3, v2, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeader:Z

    if-eqz v3, :cond_2

    .line 327
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 338
    :cond_2
    iget-object v3, p0, Lcom/tonicartos/superslim/SectionLayoutManager;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v3, v0}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p3

    goto :goto_1
.end method

.method public howManyMissingAbove(ILandroid/util/SparseArray;)I
    .locals 4
    .param p1, "firstPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 344
    .local p2, "positionsOffscreen":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .line 345
    .local v2, "itemsSkipped":I
    const/4 v1, 0x0

    .line 346
    .local v1, "itemsFound":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 347
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    add-int/lit8 v1, v1, 0x1

    .line 346
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 354
    :cond_1
    return v2
.end method

.method public howManyMissingBelow(ILandroid/util/SparseArray;)I
    .locals 4
    .param p1, "lastPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 358
    .local p2, "positionsOffscreen":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .line 359
    .local v2, "itemsSkipped":I
    const/4 v1, 0x0

    .line 360
    .local v1, "itemsFound":I
    move v0, p1

    .line 361
    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 362
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 363
    add-int/lit8 v1, v1, 0x1

    .line 361
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 365
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 369
    :cond_1
    return v2
.end method

.method public init(Lcom/tonicartos/superslim/SectionData;)Lcom/tonicartos/superslim/SectionLayoutManager;
    .locals 0
    .param p1, "sd"    # Lcom/tonicartos/superslim/SectionData;

    .prologue
    .line 373
    return-object p0
.end method

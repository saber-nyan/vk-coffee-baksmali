.class public Lcom/tonicartos/superslim/LinearSLM;
.super Lcom/tonicartos/superslim/SectionLayoutManager;
.source "LinearSLM.java"


# static fields
.field public static ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x1

    sput v0, Lcom/tonicartos/superslim/LinearSLM;->ID:I

    return-void
.end method

.method public constructor <init>(Lcom/tonicartos/superslim/LayoutManager;)V
    .locals 0
    .param p1, "layoutManager"    # Lcom/tonicartos/superslim/LayoutManager;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/tonicartos/superslim/SectionLayoutManager;-><init>(Lcom/tonicartos/superslim/LayoutManager;)V

    .line 11
    return-void
.end method

.method private layoutChild(Lcom/tonicartos/superslim/LayoutState$View;ILcom/tonicartos/superslim/LayoutManager$Direction;Lcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I
    .locals 8
    .param p1, "child"    # Lcom/tonicartos/superslim/LayoutState$View;
    .param p2, "markerLine"    # I
    .param p3, "direction"    # Lcom/tonicartos/superslim/LayoutManager$Direction;
    .param p4, "sd"    # Lcom/tonicartos/superslim/SectionData;
    .param p5, "state"    # Lcom/tonicartos/superslim/LayoutState;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/tonicartos/superslim/LinearSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    iget-object v1, p1, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v6

    .line 171
    .local v6, "height":I
    iget-object v0, p0, Lcom/tonicartos/superslim/LinearSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    iget-object v1, p1, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v7

    .line 173
    .local v7, "width":I
    iget-boolean v0, p5, Lcom/tonicartos/superslim/LayoutState;->isLTR:Z

    if-eqz v0, :cond_0

    iget v2, p4, Lcom/tonicartos/superslim/SectionData;->contentStart:I

    .line 174
    .local v2, "left":I
    :goto_0
    add-int v4, v2, v7

    .line 178
    .local v4, "right":I
    sget-object v0, Lcom/tonicartos/superslim/LayoutManager$Direction;->END:Lcom/tonicartos/superslim/LayoutManager$Direction;

    if-ne p3, v0, :cond_1

    .line 179
    move v3, p2

    .line 180
    .local v3, "top":I
    add-int v5, v3, v6

    .line 185
    .local v5, "bottom":I
    :goto_1
    iget-object v0, p0, Lcom/tonicartos/superslim/LinearSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    iget-object v1, p1, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/tonicartos/superslim/LayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 187
    sget-object v0, Lcom/tonicartos/superslim/LayoutManager$Direction;->END:Lcom/tonicartos/superslim/LayoutManager$Direction;

    if-ne p3, v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/tonicartos/superslim/LinearSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    iget-object v1, p1, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p2

    .line 193
    :goto_2
    return p2

    .line 173
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v4    # "right":I
    .end local v5    # "bottom":I
    :cond_0
    iget v2, p4, Lcom/tonicartos/superslim/SectionData;->contentEnd:I

    goto :goto_0

    .line 182
    .restart local v2    # "left":I
    .restart local v4    # "right":I
    :cond_1
    move v5, p2

    .line 183
    .restart local v5    # "bottom":I
    sub-int v3, v5, v6

    .restart local v3    # "top":I
    goto :goto_1

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/tonicartos/superslim/LinearSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    iget-object v1, p1, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p2

    goto :goto_2
.end method

.method private measureChild(Lcom/tonicartos/superslim/LayoutState$View;Lcom/tonicartos/superslim/SectionData;)V
    .locals 4
    .param p1, "child"    # Lcom/tonicartos/superslim/LayoutState$View;
    .param p2, "sd"    # Lcom/tonicartos/superslim/SectionData;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/tonicartos/superslim/LinearSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    iget-object v1, p1, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    invoke-virtual {p2}, Lcom/tonicartos/superslim/SectionData;->getTotalMarginWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tonicartos/superslim/LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 198
    return-void
.end method


# virtual methods
.method public computeHeaderOffset(ILcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I
    .locals 5
    .param p1, "firstVisiblePosition"    # I
    .param p2, "sd"    # Lcom/tonicartos/superslim/SectionData;
    .param p3, "state"    # Lcom/tonicartos/superslim/LayoutState;

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "areaAbove":I
    iget v3, p2, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    add-int/lit8 v2, v3, 0x1

    .line 22
    .local v2, "position":I
    :goto_0
    iget v3, p2, Lcom/tonicartos/superslim/SectionData;->headerHeight:I

    if-ge v0, v3, :cond_0

    if-ge v2, p1, :cond_0

    .line 25
    invoke-virtual {p3, v2}, Lcom/tonicartos/superslim/LayoutState;->getView(I)Lcom/tonicartos/superslim/LayoutState$View;

    move-result-object v1

    .line 26
    .local v1, "child":Lcom/tonicartos/superslim/LayoutState$View;
    invoke-direct {p0, v1, p2}, Lcom/tonicartos/superslim/LinearSLM;->measureChild(Lcom/tonicartos/superslim/LayoutState$View;Lcom/tonicartos/superslim/SectionData;)V

    .line 28
    iget-object v3, p0, Lcom/tonicartos/superslim/LinearSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    iget-object v4, v1, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v3

    add-int/2addr v0, v3

    .line 29
    iget-object v3, v1, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    invoke-virtual {p3, v2, v3}, Lcom/tonicartos/superslim/LayoutState;->cacheView(ILandroid/view/View;)V

    .line 23
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "child":Lcom/tonicartos/superslim/LayoutState$View;
    :cond_0
    iget v3, p2, Lcom/tonicartos/superslim/SectionData;->headerHeight:I

    if-ne v0, v3, :cond_1

    .line 33
    const/4 v3, 0x0

    .line 37
    :goto_1
    return v3

    .line 34
    :cond_1
    iget v3, p2, Lcom/tonicartos/superslim/SectionData;->headerHeight:I

    if-le v0, v3, :cond_2

    .line 35
    const/4 v3, 0x1

    goto :goto_1

    .line 37
    :cond_2
    neg-int v3, v0

    goto :goto_1
.end method

.method public fillToEnd(IIILcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I
    .locals 9
    .param p1, "leadingEdge"    # I
    .param p2, "markerLine"    # I
    .param p3, "anchorPosition"    # I
    .param p4, "sd"    # Lcom/tonicartos/superslim/SectionData;
    .param p5, "state"    # Lcom/tonicartos/superslim/LayoutState;

    .prologue
    .line 44
    invoke-virtual {p5}, Lcom/tonicartos/superslim/LayoutState;->getRecyclerState()Landroid/support/v7/widget/RecyclerView$State;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v7

    .line 46
    .local v7, "itemCount":I
    move v6, p3

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 47
    if-lt p2, p1, :cond_1

    .line 63
    :cond_0
    :goto_1
    return p2

    .line 51
    :cond_1
    invoke-virtual {p5, v6}, Lcom/tonicartos/superslim/LayoutState;->getView(I)Lcom/tonicartos/superslim/LayoutState$View;

    move-result-object v1

    .line 52
    .local v1, "next":Lcom/tonicartos/superslim/LayoutState$View;
    invoke-virtual {v1}, Lcom/tonicartos/superslim/LayoutState$View;->getLayoutParams()Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    move-result-object v8

    .line 53
    .local v8, "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    invoke-virtual {v8}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result v0

    iget v2, p4, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    if-eq v0, v2, :cond_2

    .line 54
    iget-object v0, v1, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    invoke-virtual {p5, v6, v0}, Lcom/tonicartos/superslim/LayoutState;->cacheView(ILandroid/view/View;)V

    goto :goto_1

    .line 58
    :cond_2
    invoke-direct {p0, v1, p4}, Lcom/tonicartos/superslim/LinearSLM;->measureChild(Lcom/tonicartos/superslim/LayoutState$View;Lcom/tonicartos/superslim/SectionData;)V

    .line 59
    sget-object v3, Lcom/tonicartos/superslim/LayoutManager$Direction;->END:Lcom/tonicartos/superslim/LayoutManager$Direction;

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tonicartos/superslim/LinearSLM;->layoutChild(Lcom/tonicartos/superslim/LayoutState$View;ILcom/tonicartos/superslim/LayoutManager$Direction;Lcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I

    move-result p2

    .line 60
    sget-object v0, Lcom/tonicartos/superslim/LayoutManager$Direction;->END:Lcom/tonicartos/superslim/LayoutManager$Direction;

    invoke-virtual {p0, v1, v6, v0, p5}, Lcom/tonicartos/superslim/LinearSLM;->addView(Lcom/tonicartos/superslim/LayoutState$View;ILcom/tonicartos/superslim/LayoutManager$Direction;Lcom/tonicartos/superslim/LayoutState;)I

    .line 46
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public fillToStart(IIILcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I
    .locals 17
    .param p1, "leadingEdge"    # I
    .param p2, "markerLine"    # I
    .param p3, "anchorPosition"    # I
    .param p4, "sd"    # Lcom/tonicartos/superslim/SectionData;
    .param p5, "state"    # Lcom/tonicartos/superslim/LayoutState;

    .prologue
    .line 71
    const/4 v8, 0x0

    .line 72
    .local v8, "applyMinHeight":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual/range {p5 .. p5}, Lcom/tonicartos/superslim/LayoutState;->getRecyclerState()Landroid/support/v7/widget/RecyclerView$State;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    if-ge v11, v2, :cond_0

    .line 73
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/superslim/LinearSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/tonicartos/superslim/LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 74
    .local v9, "check":Landroid/view/View;
    if-nez v9, :cond_4

    .line 75
    const/4 v8, 0x0

    .line 94
    .end local v9    # "check":Landroid/view/View;
    :cond_0
    :goto_1
    const/4 v13, -0x1

    .line 95
    .local v13, "measuredPositionsMarker":I
    const/16 v16, 0x0

    .line 96
    .local v16, "sectionHeight":I
    const/4 v14, 0x0

    .line 97
    .local v14, "minHeightOffset":I
    if-eqz v8, :cond_2

    .line 98
    move/from16 v11, p3

    :goto_2
    if-ltz v11, :cond_1

    .line 99
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Lcom/tonicartos/superslim/LayoutState;->getView(I)Lcom/tonicartos/superslim/LayoutState$View;

    move-result-object v12

    .line 100
    .local v12, "measure":Lcom/tonicartos/superslim/LayoutState$View;
    iget-object v2, v12, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    move-object/from16 v0, p5

    invoke-virtual {v0, v11, v2}, Lcom/tonicartos/superslim/LayoutState;->cacheView(ILandroid/view/View;)V

    .line 101
    invoke-virtual {v12}, Lcom/tonicartos/superslim/LayoutState$View;->getLayoutParams()Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    move-result-object v15

    .line 102
    .local v15, "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    invoke-virtual {v15}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result v2

    move-object/from16 v0, p4

    iget v4, v0, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    if-eq v2, v4, :cond_7

    .line 118
    .end local v12    # "measure":Lcom/tonicartos/superslim/LayoutState$View;
    .end local v15    # "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    :cond_1
    :goto_3
    move-object/from16 v0, p4

    iget v2, v0, Lcom/tonicartos/superslim/SectionData;->minimumHeight:I

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    .line 119
    move-object/from16 v0, p4

    iget v2, v0, Lcom/tonicartos/superslim/SectionData;->minimumHeight:I

    sub-int v14, v16, v2

    .line 120
    add-int p2, p2, v14

    .line 124
    :cond_2
    move/from16 v11, p3

    :goto_4
    if-ltz v11, :cond_3

    .line 125
    sub-int v2, p2, v14

    move/from16 v0, p1

    if-gt v2, v0, :cond_a

    .line 149
    :cond_3
    :goto_5
    return p2

    .line 80
    .end local v13    # "measuredPositionsMarker":I
    .end local v14    # "minHeightOffset":I
    .end local v16    # "sectionHeight":I
    .restart local v9    # "check":Landroid/view/View;
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    .line 81
    .local v10, "checkParams":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    invoke-virtual {v10}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result v2

    move-object/from16 v0, p4

    iget v4, v0, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    if-eq v2, v4, :cond_5

    .line 82
    const/4 v8, 0x1

    .line 83
    goto :goto_1

    .line 86
    :cond_5
    iget-boolean v2, v10, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeader:Z

    if-nez v2, :cond_6

    .line 87
    const/4 v8, 0x0

    .line 88
    goto :goto_1

    .line 72
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 106
    .end local v9    # "check":Landroid/view/View;
    .end local v10    # "checkParams":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    .restart local v12    # "measure":Lcom/tonicartos/superslim/LayoutState$View;
    .restart local v13    # "measuredPositionsMarker":I
    .restart local v14    # "minHeightOffset":I
    .restart local v15    # "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    .restart local v16    # "sectionHeight":I
    :cond_7
    iget-boolean v2, v15, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeader:Z

    if-eqz v2, :cond_9

    .line 98
    :cond_8
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 110
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v12, v1}, Lcom/tonicartos/superslim/LinearSLM;->measureChild(Lcom/tonicartos/superslim/LayoutState$View;Lcom/tonicartos/superslim/SectionData;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/superslim/LinearSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    iget-object v4, v12, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    invoke-virtual {v2, v4}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v2

    add-int v16, v16, v2

    .line 112
    move v13, v11

    .line 113
    move-object/from16 v0, p4

    iget v2, v0, Lcom/tonicartos/superslim/SectionData;->minimumHeight:I

    move/from16 v0, v16

    if-lt v0, v2, :cond_8

    goto :goto_3

    .line 129
    .end local v12    # "measure":Lcom/tonicartos/superslim/LayoutState$View;
    .end local v15    # "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    :cond_a
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Lcom/tonicartos/superslim/LayoutState;->getView(I)Lcom/tonicartos/superslim/LayoutState$View;

    move-result-object v3

    .line 130
    .local v3, "next":Lcom/tonicartos/superslim/LayoutState$View;
    invoke-virtual {v3}, Lcom/tonicartos/superslim/LayoutState$View;->getLayoutParams()Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    move-result-object v15

    .line 131
    .restart local v15    # "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    iget-boolean v2, v15, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeader:Z

    if-eqz v2, :cond_b

    .line 132
    iget-object v2, v3, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    move-object/from16 v0, p5

    invoke-virtual {v0, v11, v2}, Lcom/tonicartos/superslim/LayoutState;->cacheView(ILandroid/view/View;)V

    goto :goto_5

    .line 135
    :cond_b
    invoke-virtual {v15}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result v2

    move-object/from16 v0, p4

    iget v4, v0, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    if-eq v2, v4, :cond_c

    .line 136
    iget-object v2, v3, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    move-object/from16 v0, p5

    invoke-virtual {v0, v11, v2}, Lcom/tonicartos/superslim/LayoutState;->cacheView(ILandroid/view/View;)V

    goto :goto_5

    .line 140
    :cond_c
    if-eqz v8, :cond_d

    if-ge v11, v13, :cond_e

    .line 141
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v3, v1}, Lcom/tonicartos/superslim/LinearSLM;->measureChild(Lcom/tonicartos/superslim/LayoutState$View;Lcom/tonicartos/superslim/SectionData;)V

    .line 145
    :goto_6
    sget-object v5, Lcom/tonicartos/superslim/LayoutManager$Direction;->START:Lcom/tonicartos/superslim/LayoutManager$Direction;

    move-object/from16 v2, p0

    move/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/tonicartos/superslim/LinearSLM;->layoutChild(Lcom/tonicartos/superslim/LayoutState$View;ILcom/tonicartos/superslim/LayoutManager$Direction;Lcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I

    move-result p2

    .line 146
    sget-object v2, Lcom/tonicartos/superslim/LayoutManager$Direction;->START:Lcom/tonicartos/superslim/LayoutManager$Direction;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v11, v2, v1}, Lcom/tonicartos/superslim/LinearSLM;->addView(Lcom/tonicartos/superslim/LayoutState$View;ILcom/tonicartos/superslim/LayoutManager$Direction;Lcom/tonicartos/superslim/LayoutState;)I

    .line 124
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_4

    .line 143
    :cond_e
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Lcom/tonicartos/superslim/LayoutState;->decacheView(I)V

    goto :goto_6
.end method

.method public finishFillToEnd(ILandroid/view/View;Lcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I
    .locals 7
    .param p1, "leadingEdge"    # I
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "sd"    # Lcom/tonicartos/superslim/SectionData;
    .param p4, "state"    # Lcom/tonicartos/superslim/LayoutState;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/tonicartos/superslim/LinearSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v0, p2}, Lcom/tonicartos/superslim/LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 155
    .local v6, "anchorPosition":I
    iget-object v0, p0, Lcom/tonicartos/superslim/LinearSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v0, p2}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v2

    .line 157
    .local v2, "markerLine":I
    add-int/lit8 v3, v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tonicartos/superslim/LinearSLM;->fillToEnd(IIILcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I

    move-result v0

    return v0
.end method

.method public finishFillToStart(ILandroid/view/View;Lcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I
    .locals 7
    .param p1, "leadingEdge"    # I
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "sd"    # Lcom/tonicartos/superslim/SectionData;
    .param p4, "state"    # Lcom/tonicartos/superslim/LayoutState;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/tonicartos/superslim/LinearSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v0, p2}, Lcom/tonicartos/superslim/LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 163
    .local v6, "anchorPosition":I
    iget-object v0, p0, Lcom/tonicartos/superslim/LinearSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v0, p2}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    .line 165
    .local v2, "markerLine":I
    add-int/lit8 v3, v6, -0x1

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tonicartos/superslim/LinearSLM;->fillToStart(IIILcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I

    move-result v0

    return v0
.end method

.class public Lcom/tonicartos/superslim/GridSLM;
.super Lcom/tonicartos/superslim/SectionLayoutManager;
.source "GridSLM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonicartos/superslim/GridSLM$LayoutParams;
    }
.end annotation


# static fields
.field private static final AUTO_FIT:I = -0x1

.field private static final DEFAULT_NUM_COLUMNS:I = 0x1

.field public static ID:I


# instance fields
.field private mColumnWidth:I

.field private mColumnsSpecified:Z

.field private final mContext:Landroid/content/Context;

.field private mMinimumWidth:I

.field private mNumColumns:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x2

    sput v0, Lcom/tonicartos/superslim/GridSLM;->ID:I

    return-void
.end method

.method public constructor <init>(Lcom/tonicartos/superslim/LayoutManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "layoutManager"    # Lcom/tonicartos/superslim/LayoutManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Lcom/tonicartos/superslim/SectionLayoutManager;-><init>(Lcom/tonicartos/superslim/LayoutManager;)V

    .line 26
    iput v0, p0, Lcom/tonicartos/superslim/GridSLM;->mMinimumWidth:I

    .line 28
    iput v0, p0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    .line 36
    iput-object p2, p0, Lcom/tonicartos/superslim/GridSLM;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private calculateColumnWidthValues(Lcom/tonicartos/superslim/SectionData;)V
    .locals 4
    .param p1, "sd"    # Lcom/tonicartos/superslim/SectionData;

    .prologue
    const/4 v3, 0x1

    .line 413
    iget-object v1, p0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v1}, Lcom/tonicartos/superslim/LayoutManager;->getWidth()I

    move-result v1

    iget v2, p1, Lcom/tonicartos/superslim/SectionData;->contentStart:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/tonicartos/superslim/SectionData;->contentEnd:I

    sub-int v0, v1, v2

    .line 414
    .local v0, "availableWidth":I
    iget-boolean v1, p0, Lcom/tonicartos/superslim/GridSLM;->mColumnsSpecified:Z

    if-nez v1, :cond_1

    .line 415
    iget v1, p0, Lcom/tonicartos/superslim/GridSLM;->mMinimumWidth:I

    if-gtz v1, :cond_0

    .line 416
    const/high16 v1, 0x42400000    # 48.0f

    iget-object v2, p0, Lcom/tonicartos/superslim/GridSLM;->mContext:Landroid/content/Context;

    .line 417
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 416
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/tonicartos/superslim/GridSLM;->mMinimumWidth:I

    .line 419
    :cond_0
    iget v1, p0, Lcom/tonicartos/superslim/GridSLM;->mMinimumWidth:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int v1, v0, v1

    iput v1, p0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    .line 421
    :cond_1
    iget v1, p0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    if-ge v1, v3, :cond_2

    .line 422
    iput v3, p0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    .line 424
    :cond_2
    iget v1, p0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    div-int v1, v0, v1

    iput v1, p0, Lcom/tonicartos/superslim/GridSLM;->mColumnWidth:I

    .line 425
    iget v1, p0, Lcom/tonicartos/superslim/GridSLM;->mColumnWidth:I

    if-nez v1, :cond_3

    .line 426
    const-string/jumbo v1, "GridSection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Too many columns ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") for available width"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_3
    return-void
.end method

.method private layoutChild(Lcom/tonicartos/superslim/LayoutState$View;IIILcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)V
    .locals 8
    .param p1, "child"    # Lcom/tonicartos/superslim/LayoutState$View;
    .param p2, "top"    # I
    .param p3, "col"    # I
    .param p4, "rowHeight"    # I
    .param p5, "sd"    # Lcom/tonicartos/superslim/SectionData;
    .param p6, "state"    # Lcom/tonicartos/superslim/LayoutState;

    .prologue
    .line 446
    invoke-virtual {p1}, Lcom/tonicartos/superslim/LayoutState$View;->getLayoutParams()Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 447
    move v6, p4

    .line 453
    .local v6, "height":I
    :goto_0
    iget v0, p0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    iget-object v1, p1, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v7

    .line 459
    .local v7, "width":I
    :goto_1
    add-int v5, p2, v6

    .line 460
    .local v5, "bottom":I
    iget-boolean v0, p6, Lcom/tonicartos/superslim/LayoutState;->isLTR:Z

    if-eqz v0, :cond_2

    iget v0, p5, Lcom/tonicartos/superslim/SectionData;->contentStart:I

    :goto_2
    iget v1, p0, Lcom/tonicartos/superslim/GridSLM;->mColumnWidth:I

    mul-int/2addr v1, p3

    add-int v2, v0, v1

    .line 461
    .local v2, "left":I
    add-int v4, v2, v7

    .line 463
    .local v4, "right":I
    iget-object v0, p0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    iget-object v1, p1, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tonicartos/superslim/LayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 464
    return-void

    .line 449
    .end local v2    # "left":I
    .end local v4    # "right":I
    .end local v5    # "bottom":I
    .end local v6    # "height":I
    .end local v7    # "width":I
    :cond_0
    iget-object v0, p0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    iget-object v1, p1, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v6

    .restart local v6    # "height":I
    goto :goto_0

    .line 456
    :cond_1
    iget v0, p0, Lcom/tonicartos/superslim/GridSLM;->mColumnWidth:I

    iget-object v1, p0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    iget-object v3, p1, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .restart local v7    # "width":I
    goto :goto_1

    .line 460
    .restart local v5    # "bottom":I
    :cond_2
    iget v0, p5, Lcom/tonicartos/superslim/SectionData;->contentEnd:I

    goto :goto_2
.end method

.method private measureChild(Lcom/tonicartos/superslim/LayoutState$View;Lcom/tonicartos/superslim/SectionData;)V
    .locals 5
    .param p1, "child"    # Lcom/tonicartos/superslim/LayoutState$View;
    .param p2, "sd"    # Lcom/tonicartos/superslim/SectionData;

    .prologue
    .line 473
    iget v1, p0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/tonicartos/superslim/GridSLM;->mColumnWidth:I

    mul-int v0, v1, v2

    .line 474
    .local v0, "widthOtherColumns":I
    iget-object v1, p0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    iget-object v2, p1, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    iget v3, p2, Lcom/tonicartos/superslim/SectionData;->marginStart:I

    iget v4, p2, Lcom/tonicartos/superslim/SectionData;->marginEnd:I

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/tonicartos/superslim/LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 477
    return-void
.end method


# virtual methods
.method public computeHeaderOffset(ILcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I
    .locals 8
    .param p1, "firstVisiblePosition"    # I
    .param p2, "sd"    # Lcom/tonicartos/superslim/SectionData;
    .param p3, "state"    # Lcom/tonicartos/superslim/LayoutState;

    .prologue
    .line 41
    invoke-virtual {p3}, Lcom/tonicartos/superslim/LayoutState;->getRecyclerState()Landroid/support/v7/widget/RecyclerView$State;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    .line 47
    .local v3, "itemCount":I
    const/4 v0, 0x0

    .line 48
    .local v0, "areaAbove":I
    iget v6, p2, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    add-int/lit8 v4, v6, 0x1

    .line 49
    .local v4, "position":I
    :goto_0
    iget v6, p2, Lcom/tonicartos/superslim/SectionData;->headerHeight:I

    if-ge v0, v6, :cond_1

    if-ge v4, p1, :cond_1

    .line 52
    const/4 v5, 0x0

    .line 53
    .local v5, "rowHeight":I
    const/4 v2, 0x0

    .local v2, "col":I
    :goto_1
    iget v6, p0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    if-ge v2, v6, :cond_0

    add-int v6, v4, v2

    if-ge v6, v3, :cond_0

    .line 54
    add-int v6, v4, v2

    invoke-virtual {p3, v6}, Lcom/tonicartos/superslim/LayoutState;->getView(I)Lcom/tonicartos/superslim/LayoutState$View;

    move-result-object v1

    .line 55
    .local v1, "child":Lcom/tonicartos/superslim/LayoutState$View;
    invoke-direct {p0, v1, p2}, Lcom/tonicartos/superslim/GridSLM;->measureChild(Lcom/tonicartos/superslim/LayoutState$View;Lcom/tonicartos/superslim/SectionData;)V

    .line 56
    iget-object v6, p0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    iget-object v7, v1, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    .line 57
    invoke-virtual {v6, v7}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 58
    add-int v6, v4, v2

    iget-object v7, v1, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    invoke-virtual {p3, v6, v7}, Lcom/tonicartos/superslim/LayoutState;->cacheView(ILandroid/view/View;)V

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 60
    .end local v1    # "child":Lcom/tonicartos/superslim/LayoutState$View;
    :cond_0
    add-int/2addr v0, v5

    .line 50
    iget v6, p0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    add-int/2addr v4, v6

    goto :goto_0

    .line 63
    .end local v2    # "col":I
    .end local v5    # "rowHeight":I
    :cond_1
    iget v6, p2, Lcom/tonicartos/superslim/SectionData;->headerHeight:I

    if-ne v0, v6, :cond_2

    .line 64
    const/4 v6, 0x0

    .line 68
    :goto_2
    return v6

    .line 65
    :cond_2
    iget v6, p2, Lcom/tonicartos/superslim/SectionData;->headerHeight:I

    if-le v0, v6, :cond_3

    .line 66
    const/4 v6, 0x1

    goto :goto_2

    .line 68
    :cond_3
    neg-int v6, v0

    goto :goto_2
.end method

.method public fillRow(IILcom/tonicartos/superslim/LayoutManager$Direction;ZLcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I
    .locals 15
    .param p1, "markerLine"    # I
    .param p2, "anchorPosition"    # I
    .param p3, "direction"    # Lcom/tonicartos/superslim/LayoutManager$Direction;
    .param p4, "measureRowItems"    # Z
    .param p5, "sd"    # Lcom/tonicartos/superslim/SectionData;
    .param p6, "state"    # Lcom/tonicartos/superslim/LayoutState;

    .prologue
    .line 351
    const/4 v6, 0x0

    .line 352
    .local v6, "rowHeight":I
    iget v2, p0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    new-array v14, v2, [Lcom/tonicartos/superslim/LayoutState$View;

    .line 353
    .local v14, "views":[Lcom/tonicartos/superslim/LayoutState$View;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget v2, p0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    if-ge v10, v2, :cond_0

    .line 354
    add-int v11, p2, v10

    .line 355
    .local v11, "position":I
    invoke-virtual/range {p6 .. p6}, Lcom/tonicartos/superslim/LayoutState;->getRecyclerState()Landroid/support/v7/widget/RecyclerView$State;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    if-lt v11, v2, :cond_2

    .line 374
    .end local v11    # "position":I
    :cond_0
    :goto_1
    sget-object v2, Lcom/tonicartos/superslim/LayoutManager$Direction;->START:Lcom/tonicartos/superslim/LayoutManager$Direction;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_5

    const/4 v9, 0x1

    .line 375
    .local v9, "directionIsStart":Z
    :goto_2
    if-eqz v9, :cond_1

    .line 376
    sub-int p1, p1, v6

    .line 379
    :cond_1
    const/4 v10, 0x0

    :goto_3
    iget v2, p0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    if-ge v10, v2, :cond_b

    .line 380
    if-eqz v9, :cond_6

    iget v2, p0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    sub-int/2addr v2, v10

    add-int/lit8 v12, v2, -0x1

    .line 383
    .local v12, "selectedView":I
    :goto_4
    move-object/from16 v0, p6

    iget-boolean v2, v0, Lcom/tonicartos/superslim/LayoutState;->isLTR:Z

    if-eqz v2, :cond_8

    .line 384
    if-eqz v9, :cond_7

    iget v2, p0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    sub-int/2addr v2, v10

    add-int/lit8 v5, v2, -0x1

    .line 389
    .local v5, "col":I
    :goto_5
    aget-object v2, v14, v12

    if-nez v2, :cond_a

    .line 379
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 359
    .end local v5    # "col":I
    .end local v9    # "directionIsStart":Z
    .end local v12    # "selectedView":I
    .restart local v11    # "position":I
    :cond_2
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Lcom/tonicartos/superslim/LayoutState;->getView(I)Lcom/tonicartos/superslim/LayoutState$View;

    move-result-object v13

    .line 360
    .local v13, "view":Lcom/tonicartos/superslim/LayoutState$View;
    invoke-virtual {v13}, Lcom/tonicartos/superslim/LayoutState$View;->getLayoutParams()Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result v2

    move-object/from16 v0, p5

    iget v3, v0, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    if-eq v2, v3, :cond_3

    .line 361
    iget-object v2, v13, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    move-object/from16 v0, p6

    invoke-virtual {v0, v11, v2}, Lcom/tonicartos/superslim/LayoutState;->cacheView(ILandroid/view/View;)V

    goto :goto_1

    .line 365
    :cond_3
    if-eqz p4, :cond_4

    .line 366
    move-object/from16 v0, p5

    invoke-direct {p0, v13, v0}, Lcom/tonicartos/superslim/GridSLM;->measureChild(Lcom/tonicartos/superslim/LayoutState$View;Lcom/tonicartos/superslim/SectionData;)V

    .line 370
    :goto_7
    iget-object v2, p0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    iget-object v3, v13, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 371
    aput-object v13, v14, v10

    .line 353
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 368
    :cond_4
    add-int v2, v10, p2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/tonicartos/superslim/LayoutState;->decacheView(I)V

    goto :goto_7

    .line 374
    .end local v11    # "position":I
    .end local v13    # "view":Lcom/tonicartos/superslim/LayoutState$View;
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .restart local v9    # "directionIsStart":Z
    :cond_6
    move v12, v10

    .line 380
    goto :goto_4

    .restart local v12    # "selectedView":I
    :cond_7
    move v5, v10

    .line 384
    goto :goto_5

    .line 386
    :cond_8
    if-eqz v9, :cond_9

    move v5, v10

    .restart local v5    # "col":I
    :goto_8
    goto :goto_5

    .end local v5    # "col":I
    :cond_9
    iget v2, p0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    sub-int/2addr v2, v10

    add-int/lit8 v5, v2, -0x1

    goto :goto_8

    .line 392
    .restart local v5    # "col":I
    :cond_a
    aget-object v3, v14, v12

    move-object v2, p0

    move/from16 v4, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/tonicartos/superslim/GridSLM;->layoutChild(Lcom/tonicartos/superslim/LayoutState$View;IIILcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)V

    .line 393
    aget-object v2, v14, v12

    add-int v3, v12, p2

    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/tonicartos/superslim/GridSLM;->addView(Lcom/tonicartos/superslim/LayoutState$View;ILcom/tonicartos/superslim/LayoutManager$Direction;Lcom/tonicartos/superslim/LayoutState;)I

    goto :goto_6

    .line 396
    .end local v5    # "col":I
    .end local v12    # "selectedView":I
    :cond_b
    return v6
.end method

.method public fillToEnd(IIILcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I
    .locals 19
    .param p1, "leadingEdge"    # I
    .param p2, "markerLine"    # I
    .param p3, "anchorPosition"    # I
    .param p4, "sd"    # Lcom/tonicartos/superslim/SectionData;
    .param p5, "state"    # Lcom/tonicartos/superslim/LayoutState;

    .prologue
    .line 75
    move/from16 v0, p2

    move/from16 v1, p1

    if-lt v0, v1, :cond_0

    move/from16 v15, p2

    .line 130
    .end local p2    # "markerLine":I
    .local v15, "markerLine":I
    :goto_0
    return v15

    .line 79
    .end local v15    # "markerLine":I
    .restart local p2    # "markerLine":I
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/tonicartos/superslim/LayoutState;->getRecyclerState()Landroid/support/v7/widget/RecyclerView$State;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v13

    .line 80
    .local v13, "itemCount":I
    move/from16 v0, p3

    if-lt v0, v13, :cond_1

    move/from16 v15, p2

    .line 81
    .end local p2    # "markerLine":I
    .restart local v15    # "markerLine":I
    goto :goto_0

    .line 84
    .end local v15    # "markerLine":I
    .restart local p2    # "markerLine":I
    :cond_1
    move-object/from16 v0, p5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/tonicartos/superslim/LayoutState;->getView(I)Lcom/tonicartos/superslim/LayoutState$View;

    move-result-object v9

    .line 85
    .local v9, "anchor":Lcom/tonicartos/superslim/LayoutState$View;
    iget-object v2, v9, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    move-object/from16 v0, p5

    move/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/tonicartos/superslim/LayoutState;->cacheView(ILandroid/view/View;)V

    .line 86
    invoke-virtual {v9}, Lcom/tonicartos/superslim/LayoutState$View;->getLayoutParams()Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result v2

    move-object/from16 v0, p4

    iget v3, v0, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    if-eq v2, v3, :cond_2

    move/from16 v15, p2

    .line 87
    .end local p2    # "markerLine":I
    .restart local v15    # "markerLine":I
    goto :goto_0

    .line 90
    .end local v15    # "markerLine":I
    .restart local p2    # "markerLine":I
    :cond_2
    move-object/from16 v0, p4

    iget-boolean v2, v0, Lcom/tonicartos/superslim/SectionData;->hasHeader:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p4

    iget v2, v0, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    add-int/lit8 v12, v2, 0x1

    .line 93
    .local v12, "firstContentPosition":I
    :goto_1
    sub-int v2, p3, v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    rem-int v11, v2, v3

    .line 94
    .local v11, "col":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_2
    if-gt v4, v11, :cond_6

    .line 97
    const/4 v14, 0x1

    .local v14, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v2}, Lcom/tonicartos/superslim/LayoutManager;->getChildCount()I

    move-result v2

    if-gt v14, v2, :cond_3

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v3}, Lcom/tonicartos/superslim/LayoutManager;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v14

    invoke-virtual {v2, v3}, Lcom/tonicartos/superslim/LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 99
    .local v10, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v2, v10}, Lcom/tonicartos/superslim/LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    sub-int v3, p3, v4

    if-ne v2, v3, :cond_5

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v2, v10}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p2

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/tonicartos/superslim/LayoutState;->recycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v14, v3}, Lcom/tonicartos/superslim/LayoutManager;->detachAndScrapViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 94
    .end local v10    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 90
    .end local v4    # "i":I
    .end local v11    # "col":I
    .end local v12    # "firstContentPosition":I
    .end local v14    # "j":I
    :cond_4
    move-object/from16 v0, p4

    iget v12, v0, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    goto :goto_1

    .line 106
    .restart local v4    # "i":I
    .restart local v10    # "child":Landroid/view/View;
    .restart local v11    # "col":I
    .restart local v12    # "firstContentPosition":I
    .restart local v14    # "j":I
    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    .line 107
    .local v16, "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    invoke-virtual/range {v16 .. v16}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result v2

    move-object/from16 v0, p4

    iget v3, v0, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    if-ne v2, v3, :cond_3

    .line 97
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 112
    .end local v10    # "child":Landroid/view/View;
    .end local v14    # "j":I
    .end local v16    # "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    :cond_6
    sub-int p3, p3, v11

    .line 115
    move/from16 v4, p3

    :goto_4
    if-ge v4, v13, :cond_7

    .line 116
    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_8

    :cond_7
    :goto_5
    move/from16 v15, p2

    .line 130
    .end local p2    # "markerLine":I
    .restart local v15    # "markerLine":I
    goto/16 :goto_0

    .line 120
    .end local v15    # "markerLine":I
    .restart local p2    # "markerLine":I
    :cond_8
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/tonicartos/superslim/LayoutState;->getView(I)Lcom/tonicartos/superslim/LayoutState$View;

    move-result-object v18

    .line 121
    .local v18, "view":Lcom/tonicartos/superslim/LayoutState$View;
    invoke-virtual/range {v18 .. v18}, Lcom/tonicartos/superslim/LayoutState$View;->getLayoutParams()Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result v2

    move-object/from16 v0, p4

    iget v3, v0, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    if-eq v2, v3, :cond_9

    .line 122
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v2}, Lcom/tonicartos/superslim/LayoutState;->cacheView(ILandroid/view/View;)V

    goto :goto_5

    .line 126
    :cond_9
    sget-object v5, Lcom/tonicartos/superslim/LayoutManager$Direction;->END:Lcom/tonicartos/superslim/LayoutManager$Direction;

    const/4 v6, 0x1

    move-object/from16 v2, p0

    move/from16 v3, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/tonicartos/superslim/GridSLM;->fillRow(IILcom/tonicartos/superslim/LayoutManager$Direction;ZLcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I

    move-result v17

    .line 127
    .local v17, "rowHeight":I
    add-int p2, p2, v17

    .line 115
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    add-int/2addr v4, v2

    goto :goto_4
.end method

.method public fillToStart(IIILcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I
    .locals 26
    .param p1, "leadingEdge"    # I
    .param p2, "markerLine"    # I
    .param p3, "anchorPosition"    # I
    .param p4, "sd"    # Lcom/tonicartos/superslim/SectionData;
    .param p5, "state"    # Lcom/tonicartos/superslim/LayoutState;

    .prologue
    .line 136
    move-object/from16 v0, p4

    iget-boolean v3, v0, Lcom/tonicartos/superslim/SectionData;->hasHeader:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p4

    iget v3, v0, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    add-int/lit8 v16, v3, 0x1

    .line 140
    .local v16, "firstContentPosition":I
    :goto_0
    const/4 v10, 0x0

    .line 141
    .local v10, "applyMinHeight":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v3}, Lcom/tonicartos/superslim/LayoutManager;->getChildCount()I

    move-result v3

    if-ge v5, v3, :cond_0

    .line 142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/tonicartos/superslim/LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 144
    .local v11, "check":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    .line 145
    .local v12, "checkParams":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    invoke-virtual {v12}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result v3

    move-object/from16 v0, p4

    iget v4, v0, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    if-eq v3, v4, :cond_3

    .line 146
    const/4 v10, 0x1

    .line 157
    .end local v11    # "check":Landroid/view/View;
    .end local v12    # "checkParams":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    :cond_0
    :goto_2
    sub-int v3, p3, v16

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    rem-int v14, v3, v4

    .line 158
    .local v14, "col":I
    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    sub-int/2addr v3, v14

    if-ge v5, v3, :cond_7

    .line 161
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v3}, Lcom/tonicartos/superslim/LayoutManager;->getChildCount()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_1

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/tonicartos/superslim/LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 164
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    .line 165
    .local v22, "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    invoke-virtual/range {v22 .. v22}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result v3

    move-object/from16 v0, p4

    iget v4, v0, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    if-eq v3, v4, :cond_5

    .line 158
    .end local v13    # "child":Landroid/view/View;
    .end local v22    # "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    :cond_1
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 136
    .end local v5    # "i":I
    .end local v10    # "applyMinHeight":Z
    .end local v14    # "col":I
    .end local v16    # "firstContentPosition":I
    .end local v17    # "j":I
    :cond_2
    move-object/from16 v0, p4

    iget v0, v0, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    move/from16 v16, v0

    goto :goto_0

    .line 150
    .restart local v5    # "i":I
    .restart local v10    # "applyMinHeight":Z
    .restart local v11    # "check":Landroid/view/View;
    .restart local v12    # "checkParams":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    .restart local v16    # "firstContentPosition":I
    :cond_3
    iget-boolean v3, v12, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeader:Z

    if-nez v3, :cond_4

    .line 151
    const/4 v10, 0x0

    .line 152
    goto :goto_2

    .line 141
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 169
    .end local v11    # "check":Landroid/view/View;
    .end local v12    # "checkParams":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    .restart local v13    # "child":Landroid/view/View;
    .restart local v14    # "col":I
    .restart local v17    # "j":I
    .restart local v22    # "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v3, v13}, Lcom/tonicartos/superslim/LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    add-int v4, p3, v5

    if-ne v3, v4, :cond_6

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/tonicartos/superslim/LayoutState;->recycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Lcom/tonicartos/superslim/LayoutManager;->detachAndScrapViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    goto :goto_5

    .line 161
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 176
    .end local v13    # "child":Landroid/view/View;
    .end local v17    # "j":I
    .end local v22    # "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    :cond_7
    sub-int v15, p3, v14

    .line 180
    .local v15, "columnAnchorPosition":I
    const/16 v20, -0x1

    .line 181
    .local v20, "measuredPositionsMarker":I
    const/16 v25, 0x0

    .line 182
    .local v25, "sectionHeight":I
    const/16 v21, 0x0

    .line 183
    .local v21, "minHeightOffset":I
    if-eqz v10, :cond_9

    .line 184
    move v5, v15

    :goto_6
    if-ltz v5, :cond_8

    .line 185
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Lcom/tonicartos/superslim/LayoutState;->getView(I)Lcom/tonicartos/superslim/LayoutState$View;

    move-result-object v11

    .line 186
    .local v11, "check":Lcom/tonicartos/superslim/LayoutState$View;
    iget-object v3, v11, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v3}, Lcom/tonicartos/superslim/LayoutState;->cacheView(ILandroid/view/View;)V

    .line 187
    invoke-virtual {v11}, Lcom/tonicartos/superslim/LayoutState$View;->getLayoutParams()Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    move-result-object v12

    .line 188
    .restart local v12    # "checkParams":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    invoke-virtual {v12}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result v3

    move-object/from16 v0, p4

    iget v4, v0, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    if-eq v3, v4, :cond_b

    .line 217
    .end local v11    # "check":Lcom/tonicartos/superslim/LayoutState$View;
    .end local v12    # "checkParams":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    :cond_8
    move-object/from16 v0, p4

    iget v3, v0, Lcom/tonicartos/superslim/SectionData;->minimumHeight:I

    move/from16 v0, v25

    if-ge v0, v3, :cond_9

    .line 218
    move-object/from16 v0, p4

    iget v3, v0, Lcom/tonicartos/superslim/SectionData;->minimumHeight:I

    sub-int v21, v25, v3

    .line 219
    add-int p2, p2, v21

    .line 224
    :cond_9
    move v5, v15

    :goto_7
    if-ltz v5, :cond_a

    .line 225
    sub-int v3, p2, v21

    move/from16 v0, p1

    if-gt v3, v0, :cond_f

    .line 242
    :cond_a
    return p2

    .line 192
    .restart local v11    # "check":Lcom/tonicartos/superslim/LayoutState$View;
    .restart local v12    # "checkParams":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    :cond_b
    const/16 v24, 0x0

    .line 193
    .local v24, "rowHeight":I
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    move/from16 v0, v17

    if-ge v0, v3, :cond_c

    add-int v3, v5, v17

    move/from16 v0, p3

    if-gt v3, v0, :cond_c

    .line 194
    add-int v3, v5, v17

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Lcom/tonicartos/superslim/LayoutState;->getView(I)Lcom/tonicartos/superslim/LayoutState$View;

    move-result-object v18

    .line 195
    .local v18, "measure":Lcom/tonicartos/superslim/LayoutState$View;
    add-int v3, v5, v17

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Lcom/tonicartos/superslim/LayoutState;->cacheView(ILandroid/view/View;)V

    .line 196
    invoke-virtual/range {v18 .. v18}, Lcom/tonicartos/superslim/LayoutState$View;->getLayoutParams()Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    move-result-object v19

    .line 197
    .local v19, "measureParams":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    invoke-virtual/range {v19 .. v19}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result v3

    move-object/from16 v0, p4

    iget v4, v0, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    if-eq v3, v4, :cond_d

    .line 210
    .end local v18    # "measure":Lcom/tonicartos/superslim/LayoutState$View;
    .end local v19    # "measureParams":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    :cond_c
    add-int v25, v25, v24

    .line 211
    move/from16 v20, v5

    .line 212
    move-object/from16 v0, p4

    iget v3, v0, Lcom/tonicartos/superslim/SectionData;->minimumHeight:I

    move/from16 v0, v25

    if-ge v0, v3, :cond_8

    .line 184
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    sub-int/2addr v5, v3

    goto :goto_6

    .line 201
    .restart local v18    # "measure":Lcom/tonicartos/superslim/LayoutState$View;
    .restart local v19    # "measureParams":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    :cond_d
    move-object/from16 v0, v19

    iget-boolean v3, v0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeader:Z

    if-eqz v3, :cond_e

    .line 193
    :goto_9
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 205
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/tonicartos/superslim/GridSLM;->measureChild(Lcom/tonicartos/superslim/LayoutState$View;Lcom/tonicartos/superslim/SectionData;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    .line 207
    invoke-virtual {v3, v4}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v3

    .line 206
    move/from16 v0, v24

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v24

    goto :goto_9

    .line 229
    .end local v11    # "check":Lcom/tonicartos/superslim/LayoutState$View;
    .end local v12    # "checkParams":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    .end local v17    # "j":I
    .end local v18    # "measure":Lcom/tonicartos/superslim/LayoutState$View;
    .end local v19    # "measureParams":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    .end local v24    # "rowHeight":I
    :cond_f
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Lcom/tonicartos/superslim/LayoutState;->getView(I)Lcom/tonicartos/superslim/LayoutState$View;

    move-result-object v23

    .line 230
    .local v23, "rowAnchor":Lcom/tonicartos/superslim/LayoutState$View;
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v3}, Lcom/tonicartos/superslim/LayoutState;->cacheView(ILandroid/view/View;)V

    .line 231
    invoke-virtual/range {v23 .. v23}, Lcom/tonicartos/superslim/LayoutState$View;->getLayoutParams()Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    move-result-object v22

    .line 232
    .restart local v22    # "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeader:Z

    if-nez v3, :cond_a

    invoke-virtual/range {v22 .. v22}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result v3

    move-object/from16 v0, p4

    iget v4, v0, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    if-ne v3, v4, :cond_a

    .line 236
    if-eqz v10, :cond_10

    move/from16 v0, v20

    if-ge v5, v0, :cond_11

    :cond_10
    const/4 v7, 0x1

    .line 237
    .local v7, "measureRowItems":Z
    :goto_a
    sget-object v6, Lcom/tonicartos/superslim/LayoutManager$Direction;->START:Lcom/tonicartos/superslim/LayoutManager$Direction;

    move-object/from16 v3, p0

    move/from16 v4, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v3 .. v9}, Lcom/tonicartos/superslim/GridSLM;->fillRow(IILcom/tonicartos/superslim/LayoutManager$Direction;ZLcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I

    move-result v24

    .line 239
    .restart local v24    # "rowHeight":I
    sub-int p2, p2, v24

    .line 224
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    sub-int/2addr v5, v3

    goto/16 :goto_7

    .line 236
    .end local v7    # "measureRowItems":Z
    .end local v24    # "rowHeight":I
    :cond_11
    const/4 v7, 0x0

    goto :goto_a
.end method

.method public finishFillToEnd(ILandroid/view/View;Lcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I
    .locals 7
    .param p1, "leadingEdge"    # I
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "sd"    # Lcom/tonicartos/superslim/SectionData;
    .param p4, "state"    # Lcom/tonicartos/superslim/LayoutState;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v0, p2}, Lcom/tonicartos/superslim/LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 248
    .local v6, "anchorPosition":I
    iget v0, p3, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    iget-object v1, p0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v1}, Lcom/tonicartos/superslim/LayoutManager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    .line 249
    invoke-virtual {v3, p2}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v3

    .line 248
    invoke-virtual {p0, v0, v1, v3}, Lcom/tonicartos/superslim/GridSLM;->getLowestEdge(III)I

    move-result v2

    .line 251
    .local v2, "markerLine":I
    add-int/lit8 v3, v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tonicartos/superslim/GridSLM;->fillToEnd(IIILcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I

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
    .line 256
    iget-object v0, p0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v0, p2}, Lcom/tonicartos/superslim/LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 257
    .local v6, "anchorPosition":I
    iget-object v0, p0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v0, p2}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    .line 259
    .local v2, "markerLine":I
    add-int/lit8 v3, v6, -0x1

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tonicartos/superslim/GridSLM;->fillToStart(IIILcom/tonicartos/superslim/SectionData;Lcom/tonicartos/superslim/LayoutState;)I

    move-result v0

    return v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 269
    new-instance v0, Lcom/tonicartos/superslim/GridSLM$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Lcom/tonicartos/superslim/LayoutManager$LayoutParams;)Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    .locals 1
    .param p1, "params"    # Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    .prologue
    .line 264
    invoke-static {p1}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->from(Landroid/view/ViewGroup$LayoutParams;)Lcom/tonicartos/superslim/GridSLM$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAnchorPosition(Lcom/tonicartos/superslim/LayoutState;Lcom/tonicartos/superslim/SectionData;I)I
    .locals 4
    .param p1, "state"    # Lcom/tonicartos/superslim/LayoutState;
    .param p2, "sd"    # Lcom/tonicartos/superslim/SectionData;
    .param p3, "position"    # I

    .prologue
    .line 274
    invoke-direct {p0, p2}, Lcom/tonicartos/superslim/GridSLM;->calculateColumnWidthValues(Lcom/tonicartos/superslim/SectionData;)V

    .line 276
    iget v1, p2, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    .line 277
    .local v1, "firstPosition":I
    invoke-virtual {p1, v1}, Lcom/tonicartos/superslim/LayoutState;->getView(I)Lcom/tonicartos/superslim/LayoutState$View;

    move-result-object v0

    .line 278
    .local v0, "first":Lcom/tonicartos/superslim/LayoutState$View;
    invoke-virtual {v0}, Lcom/tonicartos/superslim/LayoutState$View;->getLayoutParams()Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeader:Z

    if-eqz v2, :cond_0

    .line 279
    add-int/lit8 v1, v1, 0x1

    .line 281
    :cond_0
    iget v2, p2, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    iget-object v3, v0, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    invoke-virtual {p1, v2, v3}, Lcom/tonicartos/superslim/LayoutState;->cacheView(ILandroid/view/View;)V

    .line 282
    sub-int v2, p3, v1

    iget v3, p0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    rem-int/2addr v2, v3

    sub-int v2, p3, v2

    return v2
.end method

.method public getLowestEdge(III)I
    .locals 7
    .param p1, "sectionFirstPosition"    # I
    .param p2, "lastIndex"    # I
    .param p3, "defaultEdge"    # I

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "bottomMostEdge":I
    iget-object v6, p0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v6}, Lcom/tonicartos/superslim/LayoutManager;->getWidth()I

    move-result v3

    .line 289
    .local v3, "leftPosition":I
    const/4 v1, 0x0

    .line 291
    .local v1, "foundItems":Z
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 292
    iget-object v6, p0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v6, v2}, Lcom/tonicartos/superslim/LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 293
    .local v4, "look":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    .line 294
    .local v5, "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    invoke-virtual {v5}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result v6

    if-eq v6, p1, :cond_1

    .line 312
    .end local v4    # "look":Landroid/view/View;
    .end local v5    # "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    :cond_0
    if-eqz v1, :cond_3

    .end local v0    # "bottomMostEdge":I
    :goto_1
    return v0

    .line 298
    .restart local v0    # "bottomMostEdge":I
    .restart local v4    # "look":Landroid/view/View;
    .restart local v5    # "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    :cond_1
    iget-boolean v6, v5, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeader:Z

    if-eqz v6, :cond_2

    .line 291
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    if-ge v6, v3, :cond_0

    .line 303
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 308
    const/4 v1, 0x1

    .line 309
    iget-object v6, p0, Lcom/tonicartos/superslim/GridSLM;->mLayoutManager:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v6, v4}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .end local v4    # "look":Landroid/view/View;
    .end local v5    # "params":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    :cond_3
    move v0, p3

    .line 312
    goto :goto_1
.end method

.method public init(Lcom/tonicartos/superslim/SectionData;)Lcom/tonicartos/superslim/GridSLM;
    .locals 4
    .param p1, "sd"    # Lcom/tonicartos/superslim/SectionData;

    .prologue
    .line 316
    invoke-super {p0, p1}, Lcom/tonicartos/superslim/SectionLayoutManager;->init(Lcom/tonicartos/superslim/SectionData;)Lcom/tonicartos/superslim/SectionLayoutManager;

    .line 318
    iget-object v3, p1, Lcom/tonicartos/superslim/SectionData;->headerParams:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    instance-of v3, v3, Lcom/tonicartos/superslim/GridSLM$LayoutParams;

    if-eqz v3, :cond_1

    .line 319
    iget-object v2, p1, Lcom/tonicartos/superslim/SectionData;->headerParams:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    check-cast v2, Lcom/tonicartos/superslim/GridSLM$LayoutParams;

    .line 320
    .local v2, "params":Lcom/tonicartos/superslim/GridSLM$LayoutParams;
    invoke-virtual {v2}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->getColumnWidth()I

    move-result v0

    .line 321
    .local v0, "columnWidth":I
    invoke-virtual {v2}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->getNumColumns()I

    move-result v1

    .line 322
    .local v1, "numColumns":I
    if-gez v0, :cond_0

    if-gez v1, :cond_0

    .line 323
    const/4 v1, 0x1

    .line 326
    :cond_0
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 327
    invoke-virtual {p0, v0}, Lcom/tonicartos/superslim/GridSLM;->setColumnWidth(I)V

    .line 333
    .end local v0    # "columnWidth":I
    .end local v1    # "numColumns":I
    .end local v2    # "params":Lcom/tonicartos/superslim/GridSLM$LayoutParams;
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/tonicartos/superslim/GridSLM;->calculateColumnWidthValues(Lcom/tonicartos/superslim/SectionData;)V

    .line 335
    return-object p0

    .line 329
    .restart local v0    # "columnWidth":I
    .restart local v1    # "numColumns":I
    .restart local v2    # "params":Lcom/tonicartos/superslim/GridSLM$LayoutParams;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/tonicartos/superslim/GridSLM;->setNumColumns(I)V

    goto :goto_0
.end method

.method public bridge synthetic init(Lcom/tonicartos/superslim/SectionData;)Lcom/tonicartos/superslim/SectionLayoutManager;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/tonicartos/superslim/GridSLM;->init(Lcom/tonicartos/superslim/SectionData;)Lcom/tonicartos/superslim/GridSLM;

    move-result-object v0

    return-object v0
.end method

.method public setColumnWidth(I)V
    .locals 1
    .param p1, "minimumWidth"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 401
    iput p1, p0, Lcom/tonicartos/superslim/GridSLM;->mMinimumWidth:I

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tonicartos/superslim/GridSLM;->mColumnsSpecified:Z

    .line 403
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 407
    iput p1, p0, Lcom/tonicartos/superslim/GridSLM;->mNumColumns:I

    .line 408
    const/4 v0, 0x0

    iput v0, p0, Lcom/tonicartos/superslim/GridSLM;->mMinimumWidth:I

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tonicartos/superslim/GridSLM;->mColumnsSpecified:Z

    .line 410
    return-void
.end method

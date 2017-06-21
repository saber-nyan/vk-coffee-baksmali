.class public Lcom/tonicartos/superslim/GridSLM$LayoutParams;
.super Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
.source "GridSLM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonicartos/superslim/GridSLM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field private mColumnWidth:I

.field private mNumColumns:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 486
    invoke-direct {p0, p1, p2}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;-><init>(II)V

    .line 487
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    .line 490
    invoke-direct {p0, p1, p2}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 492
    sget-object v1, Lcom/tonicartos/superslim/R$styleable;->superslim_GridSLM:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 493
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/tonicartos/superslim/R$styleable;->superslim_GridSLM_slm_grid_numColumns:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->mNumColumns:I

    .line 494
    sget v1, Lcom/tonicartos/superslim/R$styleable;->superslim_GridSLM_slm_grid_columnWidth:I

    .line 495
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->mColumnWidth:I

    .line 496
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 497
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "other"    # Landroid/view/ViewGroup$LayoutParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    invoke-direct {p0, p1}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->init(Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1, "other"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 510
    invoke-direct {p0, p1}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->init(Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    return-void
.end method

.method public static from(Landroid/view/ViewGroup$LayoutParams;)Lcom/tonicartos/superslim/GridSLM$LayoutParams;
    .locals 3
    .param p0, "other"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v2, -0x2

    .line 535
    if-nez p0, :cond_0

    .line 536
    const-string/jumbo v0, "SuperSLiM"

    const-string/jumbo v1, "Null value passed in call to GridSLM.LayoutParams.from()."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v0, Lcom/tonicartos/superslim/GridSLM$LayoutParams;

    invoke-direct {v0, v2, v2}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;-><init>(II)V

    .line 541
    :goto_0
    return-object v0

    .line 538
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 539
    new-instance v0, Lcom/tonicartos/superslim/GridSLM$LayoutParams;

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p0    # "other":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p0}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 541
    .restart local p0    # "other":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lcom/tonicartos/superslim/GridSLM$LayoutParams;

    invoke-direct {v0, p0}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private init(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "other"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v2, -0x1

    .line 562
    instance-of v1, p1, Lcom/tonicartos/superslim/GridSLM$LayoutParams;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 563
    check-cast v0, Lcom/tonicartos/superslim/GridSLM$LayoutParams;

    .line 564
    .local v0, "lp":Lcom/tonicartos/superslim/GridSLM$LayoutParams;
    iget v1, v0, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->mNumColumns:I

    iput v1, p0, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->mNumColumns:I

    .line 565
    iget v1, v0, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->mColumnWidth:I

    iput v1, p0, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->mColumnWidth:I

    .line 570
    .end local v0    # "lp":Lcom/tonicartos/superslim/GridSLM$LayoutParams;
    :goto_0
    return-void

    .line 567
    :cond_0
    iput v2, p0, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->mNumColumns:I

    .line 568
    iput v2, p0, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->mColumnWidth:I

    goto :goto_0
.end method


# virtual methods
.method public getColumnWidth()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->mColumnWidth:I

    return v0
.end method

.method public getNumColumns()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->mNumColumns:I

    return v0
.end method

.method public setColumnWidth(I)V
    .locals 0
    .param p1, "columnWidth"    # I

    .prologue
    .line 550
    iput p1, p0, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->mColumnWidth:I

    .line 551
    return-void
.end method

.method public setNumColumns(I)V
    .locals 0
    .param p1, "numColumns"    # I

    .prologue
    .line 558
    iput p1, p0, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->mNumColumns:I

    .line 559
    return-void
.end method

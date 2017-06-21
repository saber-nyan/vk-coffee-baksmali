.class Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;
.super Landroid/view/ViewGroup;
.source "MultiColumnListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/MultiColumnListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RowLayout"
.end annotation


# instance fields
.field cols:I

.field final synthetic this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ui/MultiColumnListView;)V
    .locals 1

    .prologue
    .line 469
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    .line 470
    invoke-virtual {p1}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 467
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;->cols:I

    .line 471
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 492
    int-to-float v3, p4

    iget v4, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;->cols:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 493
    .local v1, "colW":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 494
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 495
    .local v0, "child":Landroid/view/View;
    int-to-float v3, v2

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    int-to-float v5, v2

    mul-float/2addr v5, v1

    add-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 493
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 497
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 475
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 476
    .local v5, "w":I
    iget v6, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;->cols:I

    div-int v2, v5, v6

    .line 477
    .local v2, "colW":I
    const/4 v4, 0x0

    .line 478
    .local v4, "maxH":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 479
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 480
    .local v0, "child":Landroid/view/View;
    const v1, -0x7ff0bdc1

    .line 481
    .local v1, "chms":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 482
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    or-int v1, v6, v7

    .line 484
    :cond_0
    or-int v6, v2, v7

    invoke-virtual {v0, v6, v1}, Landroid/view/View;->measure(II)V

    .line 485
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 478
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 487
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "chms":I
    :cond_1
    invoke-virtual {p0, v5, v4}, Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;->setMeasuredDimension(II)V

    .line 488
    return-void
.end method

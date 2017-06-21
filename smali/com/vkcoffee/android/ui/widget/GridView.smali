.class public Lcom/vkcoffee/android/ui/widget/GridView;
.super Landroid/view/ViewGroup;
.source "GridView.java"


# instance fields
.field protected columns:I

.field protected divider:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/GridView;->divider:I

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/GridView;->columns:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/GridView;->divider:I

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/GridView;->columns:I

    .line 23
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/ui/widget/GridView;->init(Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/GridView;->divider:I

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/GridView;->columns:I

    .line 28
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/ui/widget/GridView;->init(Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/GridView;->divider:I

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/GridView;->columns:I

    .line 34
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/ui/widget/GridView;->init(Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/vkcoffee/android/R$styleable;->GridView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 40
    const/4 v1, 0x0

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/GridView;->divider:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/widget/GridView;->divider:I

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 53
    iget v7, p0, Lcom/vkcoffee/android/ui/widget/GridView;->columns:I

    if-gez v7, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/GridView;->getChildCount()I

    move-result v1

    .line 54
    .local v1, "columns":I
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/GridView;->getChildCount()I

    move-result v0

    .line 55
    .local v0, "childCount":I
    sub-int v2, p5, p3

    .line 56
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/GridView;->getPaddingLeft()I

    move-result v4

    .line 57
    .local v4, "leftPadding":I
    sub-int v7, p4, p2

    sub-int/2addr v7, v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/GridView;->getPaddingRight()I

    move-result v8

    sub-int v5, v7, v8

    .line 58
    .local v5, "width":I
    add-int/lit8 v7, v1, -0x1

    iget v8, p0, Lcom/vkcoffee/android/ui/widget/GridView;->divider:I

    mul-int/2addr v7, v8

    sub-int v7, v5, v7

    div-int v6, v7, v1

    .line 59
    .local v6, "widthItem":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 60
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget v8, p0, Lcom/vkcoffee/android/ui/widget/GridView;->divider:I

    add-int/2addr v8, v6

    mul-int/2addr v8, v3

    add-int/2addr v8, v4

    const/4 v9, 0x0

    iget v10, p0, Lcom/vkcoffee/android/ui/widget/GridView;->divider:I

    add-int/2addr v10, v6

    mul-int/2addr v10, v3

    add-int/2addr v10, v4

    add-int/2addr v10, v6

    invoke-virtual {v7, v8, v9, v10, v2}, Landroid/view/View;->layout(IIII)V

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 53
    .end local v0    # "childCount":I
    .end local v1    # "columns":I
    .end local v2    # "height":I
    .end local v3    # "i":I
    .end local v4    # "leftPadding":I
    .end local v5    # "width":I
    .end local v6    # "widthItem":I
    :cond_0
    iget v1, p0, Lcom/vkcoffee/android/ui/widget/GridView;->columns:I

    goto :goto_0

    .line 64
    .restart local v0    # "childCount":I
    .restart local v1    # "columns":I
    .restart local v2    # "height":I
    .restart local v3    # "i":I
    .restart local v4    # "leftPadding":I
    .restart local v5    # "width":I
    .restart local v6    # "widthItem":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 68
    iget v8, p0, Lcom/vkcoffee/android/ui/widget/GridView;->columns:I

    if-gez v8, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/GridView;->getChildCount()I

    move-result v3

    .line 69
    .local v3, "columns":I
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/GridView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/GridView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 71
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/GridView;->getChildCount()I

    move-result v0

    .line 72
    .local v0, "childCount":I
    add-int/lit8 v8, v3, -0x1

    iget v9, p0, Lcom/vkcoffee/android/ui/widget/GridView;->divider:I

    mul-int/2addr v8, v9

    sub-int v8, v6, v8

    div-int v7, v8, v3

    .line 74
    .local v7, "widthItem":I
    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 75
    .local v2, "childWidthMeasureSpec":I
    const/16 v8, 0xfa0

    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 77
    .local v1, "childHeightMeasureSpec":I
    const/4 v4, 0x0

    .line 79
    .local v4, "height":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 80
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v2, v1}, Landroid/view/View;->measure(II)V

    .line 81
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 79
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 68
    .end local v0    # "childCount":I
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v3    # "columns":I
    .end local v4    # "height":I
    .end local v5    # "i":I
    .end local v6    # "width":I
    .end local v7    # "widthItem":I
    :cond_0
    iget v3, p0, Lcom/vkcoffee/android/ui/widget/GridView;->columns:I

    goto :goto_0

    .line 83
    .restart local v0    # "childCount":I
    .restart local v1    # "childHeightMeasureSpec":I
    .restart local v2    # "childWidthMeasureSpec":I
    .restart local v3    # "columns":I
    .restart local v4    # "height":I
    .restart local v5    # "i":I
    .restart local v6    # "width":I
    .restart local v7    # "widthItem":I
    :cond_1
    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 84
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_2

    .line 85
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v2, v1}, Landroid/view/View;->measure(II)V

    .line 84
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/GridView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/GridView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    .line 88
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/GridView;->getPaddingTop()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/GridView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    .line 87
    invoke-virtual {p0, v8, v9}, Lcom/vkcoffee/android/ui/widget/GridView;->setMeasuredDimension(II)V

    .line 89
    return-void
.end method

.method public setColumns(I)V
    .locals 1
    .param p1, "columns"    # I

    .prologue
    .line 46
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 47
    iput p1, p0, Lcom/vkcoffee/android/ui/widget/GridView;->columns:I

    .line 49
    :cond_0
    return-void
.end method

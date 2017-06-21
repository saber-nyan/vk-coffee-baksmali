.class public Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;
.super Landroid/support/v4/view/ViewPager;
.source "ViewPagerRatio.java"


# instance fields
.field private maxHeight:I

.field private ratio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;->ratio:F

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;->maxHeight:I

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v1, 0x0

    iput v1, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;->ratio:F

    .line 12
    iput v2, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;->maxHeight:I

    .line 20
    sget-object v1, Lcom/vkcoffee/android/R$styleable;->ViewPagerRatio:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 21
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 22
    iget v1, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;->ratio:F

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;->ratio:F

    .line 23
    const/4 v1, 0x1

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;->maxHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;->maxHeight:I

    .line 24
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 30
    iget v3, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;->ratio:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 31
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 32
    .local v1, "w":I
    iget v3, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;->maxHeight:I

    if-eqz v3, :cond_1

    .line 33
    iget v3, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;->maxHeight:I

    int-to-float v4, v1

    iget v5, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;->ratio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 34
    .local v0, "neededHeight":I
    int-to-float v3, v0

    iget v4, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;->ratio:F

    div-float/2addr v3, v4

    float-to-int v2, v3

    .line 35
    .local v2, "wNew":I
    sub-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;->getPaddingTop()I

    move-result v4

    sub-int v5, v1, v2

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;->setPadding(IIII)V

    .line 36
    int-to-float v3, v2

    iget v4, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;->ratio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 41
    .end local v0    # "neededHeight":I
    .end local v1    # "w":I
    .end local v2    # "wNew":I
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 42
    return-void

    .line 38
    .restart local v1    # "w":I
    :cond_1
    int-to-float v3, v1

    iget v4, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;->ratio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0
.end method

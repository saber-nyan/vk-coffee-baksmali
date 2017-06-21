.class public Lcom/vkcoffee/android/ui/widget/GameCardPager;
.super Landroid/support/v4/view/ViewPager;
.source "GameCardPager.java"


# instance fields
.field maxItemWidth:I

.field minPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 13
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/GameCardPager;->minPadding:I

    .line 14
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/GameCardPager;->maxItemWidth:I

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    iput v3, p0, Lcom/vkcoffee/android/ui/widget/GameCardPager;->minPadding:I

    .line 14
    iput v3, p0, Lcom/vkcoffee/android/ui/widget/GameCardPager;->maxItemWidth:I

    .line 22
    sget-object v1, Lcom/vkcoffee/android/R$styleable;->GameCardPager:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 24
    iget v1, p0, Lcom/vkcoffee/android/ui/widget/GameCardPager;->minPadding:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/widget/GameCardPager;->minPadding:I

    .line 25
    const/4 v1, 0x1

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/GameCardPager;->maxItemWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/widget/GameCardPager;->maxItemWidth:I

    .line 26
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/widget/GameCardPager;->setPageMargin(I)V

    .line 27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 39
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 57
    iget v2, p0, Lcom/vkcoffee/android/ui/widget/GameCardPager;->maxItemWidth:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/GameCardPager;->minPadding:I

    if-eqz v2, :cond_2

    .line 58
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/GameCardPager;->minPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/GameCardPager;->maxItemWidth:I

    sub-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 59
    .local v0, "extPadding":I
    iget v2, p0, Lcom/vkcoffee/android/ui/widget/GameCardPager;->minPadding:I

    div-int/lit8 v3, v0, 0x2

    add-int v1, v2, v3

    .line 60
    .local v1, "padding":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/GameCardPager;->getPaddingLeft()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/GameCardPager;->getPaddingRight()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 61
    :cond_1
    invoke-virtual {p0, v1, v4, v1, v4}, Lcom/vkcoffee/android/ui/widget/GameCardPager;->setPadding(IIII)V

    .line 64
    .end local v0    # "extPadding":I
    .end local v1    # "padding":I
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 65
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/view/ViewPager;->onSizeChanged(IIII)V

    .line 44
    new-instance v0, Lcom/vkcoffee/android/ui/widget/GameCardPager$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/widget/GameCardPager$1;-><init>(Lcom/vkcoffee/android/ui/widget/GameCardPager;)V

    .line 52
    .local v0, "onPreDrawListener":Landroid/view/ViewTreeObserver$OnPreDrawListener;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/GameCardPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 53
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 34
    return-void
.end method

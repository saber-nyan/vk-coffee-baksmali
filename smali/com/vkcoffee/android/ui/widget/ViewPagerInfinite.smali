.class public Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;
.super Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;
.source "ViewPagerInfinite.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private isAttachedToWindow:Z

.field private isResumed:Z

.field private nextPeriod:I

.field private pageMargin:I

.field private scrollStateList:I

.field private scrollStatePage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;-><init>(Landroid/content/Context;)V

    .line 12
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->nextPeriod:I

    .line 13
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->pageMargin:I

    .line 15
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->isAttachedToWindow:Z

    .line 17
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->isResumed:Z

    .line 18
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->scrollStatePage:I

    .line 19
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->scrollStateList:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    iput v2, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->nextPeriod:I

    .line 13
    iput v2, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->pageMargin:I

    .line 15
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->isAttachedToWindow:Z

    .line 17
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->isResumed:Z

    .line 18
    iput v2, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->scrollStatePage:I

    .line 19
    iput v2, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->scrollStateList:I

    .line 27
    sget-object v1, Lcom/vkcoffee/android/R$styleable;->ViewPagerInfinite:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 28
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 29
    iget v1, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->nextPeriod:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->nextPeriod:I

    .line 30
    const/4 v1, 0x1

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->pageMargin:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->pageMargin:I

    .line 31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    :cond_0
    iget v1, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->pageMargin:I

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->setPageMargin(I)V

    .line 34
    new-instance v1, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite$1;-><init>(Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;)V

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 52
    return-void
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->scrollStatePage:I

    return p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->startNextRunnable()V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->stopNextRunnable()V

    return-void
.end method

.method private startNextRunnable()V
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->nextPeriod:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->scrollStateList:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->scrollStatePage:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->isResumed:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->stopNextRunnable()V

    .line 83
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->nextPeriod:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    :cond_0
    return-void
.end method

.method private stopNextRunnable()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0, p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;->onAttachedToWindow()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->isAttachedToWindow:Z

    .line 70
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->startNextRunnable()V

    .line 71
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->isAttachedToWindow:Z

    .line 76
    invoke-super {p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;->onDetachedFromWindow()V

    .line 77
    invoke-virtual {p0, p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->isResumed:Z

    .line 98
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->stopNextRunnable()V

    .line 99
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->isResumed:Z

    .line 93
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->startNextRunnable()V

    .line 94
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 124
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "state"    # I

    .prologue
    .line 115
    iput p2, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->scrollStateList:I

    if-nez p2, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->startNextRunnable()V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->stopNextRunnable()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Lcom/vkcoffee/android/ui/widget/ViewPagerRatio;->onSizeChanged(IIII)V

    .line 57
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->setCurrentItem(IZ)V

    .line 59
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->setCurrentItem(IZ)V

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->setCurrentItem(IZ)V

    .line 62
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->isAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->setCurrentItem(IZ)V

    .line 107
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->startNextRunnable()V

    .line 109
    :cond_0
    return-void
.end method

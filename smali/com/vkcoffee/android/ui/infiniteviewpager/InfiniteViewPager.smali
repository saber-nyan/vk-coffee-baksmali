.class public Lcom/vkcoffee/android/ui/infiniteviewpager/InfiniteViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "InfiniteViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method private getOffsetAmount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfiniteViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v1

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfiniteViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    instance-of v2, v2, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfiniteViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;

    .line 54
    .local v0, "infAdapter":Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;
    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->getRealCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    goto :goto_0
.end method


# virtual methods
.method public getCurrentItem()I
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfiniteViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 37
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    .line 44
    :goto_0
    return v2

    .line 39
    :cond_0
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 40
    .local v1, "position":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfiniteViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    instance-of v2, v2, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;

    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfiniteViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;

    .line 42
    .local v0, "infAdapter":Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;
    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->getRealCount()I

    move-result v2

    rem-int v2, v1, v2

    goto :goto_0

    .line 44
    .end local v0    # "infAdapter":Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;
    :cond_1
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfiniteViewPager;->setCurrentItem(I)V

    .line 20
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfiniteViewPager;->setCurrentItem(IZ)V

    .line 24
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfiniteViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 33
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfiniteViewPager;->getOffsetAmount()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfiniteViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    rem-int v1, p1, v1

    add-int p1, v0, v1

    .line 31
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.class public Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;
.super Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/widget/SubPagerOfList$Decor;


# instance fields
.field private pager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;->init()V

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;I)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;->updateTabsState(I)V

    return-void
.end method

.method private getTabsContainer()Landroid/view/ViewGroup;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 90
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, "tabsContainer":Landroid/view/View;
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 95
    check-cast v0, Landroid/view/ViewGroup;

    .line 97
    .end local v0    # "tabsContainer":Landroid/view/View;
    :goto_1
    return-object v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "tabsContainer":Landroid/view/View;
    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 39
    new-instance v0, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip$1;-><init>(Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 58
    return-void
.end method

.method private updateTabsState(I)V
    .locals 4
    .param p1, "currentSelect"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;->getTabsContainer()Landroid/view/ViewGroup;

    move-result-object v1

    .line 72
    .local v1, "tabsContainer":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 84
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 74
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 75
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 76
    if-ne v0, p1, :cond_3

    .line 77
    check-cast v2, Landroid/widget/TextView;

    .end local v2    # "view":Landroid/view/View;
    const v3, -0xae7e48

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 79
    .restart local v2    # "view":Landroid/view/View;
    :cond_3
    check-cast v2, Landroid/widget/TextView;

    .end local v2    # "view":Landroid/view/View;
    const v3, -0x65ae7e48

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;->updateTabsState(I)V

    .line 63
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    .line 67
    invoke-super {p0, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 68
    return-void
.end method

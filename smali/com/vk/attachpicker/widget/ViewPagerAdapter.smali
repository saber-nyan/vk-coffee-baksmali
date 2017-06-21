.class public abstract Lcom/vk/attachpicker/widget/ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ViewPagerAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 58
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method public abstract getView(ILandroid/support/v4/view/ViewPager;)Landroid/view/View;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 41
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 42
    .local v0, "pager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {p0, p2, v0}, Lcom/vk/attachpicker/widget/ViewPagerAdapter;->getView(ILandroid/support/v4/view/ViewPager;)Landroid/view/View;

    move-result-object v1

    .line 44
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 46
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 28
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

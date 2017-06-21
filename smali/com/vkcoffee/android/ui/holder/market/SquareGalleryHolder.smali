.class public Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "SquareGalleryHolder.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<[",
        "Lcom/vkcoffee/android/Photo;",
        ">;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;"
    }
.end annotation


# instance fields
.field final adapter:Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;

.field final goodGalleryContainer:Lcom/vkcoffee/android/ui/widget/GoodGalleryContainer;

.field final pageIndicator:Lcom/vkcoffee/android/ui/widget/PageIndicator;

.field final viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 32
    const v0, 0x7f03009f

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 33
    const v0, 0x7f100220

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/widget/PageIndicator;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;->pageIndicator:Lcom/vkcoffee/android/ui/widget/PageIndicator;

    .line 34
    const v0, 0x7f100117

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 35
    new-instance v0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, v1, p0}, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;-><init>(Landroid/support/v4/view/ViewPager;Lcom/vkcoffee/android/ui/holder/RecyclerHolder;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;->adapter:Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;

    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;->adapter:Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 38
    const v0, 0x7f10021f

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/widget/GoodGalleryContainer;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;->goodGalleryContainer:Lcom/vkcoffee/android/ui/widget/GoodGalleryContainer;

    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;->goodGalleryContainer:Lcom/vkcoffee/android/ui/widget/GoodGalleryContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/GoodGalleryContainer;->setIsTablet(Z)V

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, [Lcom/vkcoffee/android/Photo;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;->bind([Lcom/vkcoffee/android/Photo;)V

    return-void
.end method

.method public bind([Lcom/vkcoffee/android/Photo;)V
    .locals 5
    .param p1, "item"    # [Lcom/vkcoffee/android/Photo;

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 57
    if-nez p1, :cond_0

    .line 58
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;->pageIndicator:Lcom/vkcoffee/android/ui/widget/PageIndicator;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->setVisibility(I)V

    .line 59
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;->adapter:Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;

    new-array v0, v0, [Lcom/vkcoffee/android/Photo;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;->setPhotos([Lcom/vkcoffee/android/Photo;)V

    .line 65
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;->pageIndicator:Lcom/vkcoffee/android/ui/widget/PageIndicator;

    array-length v3, p1

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->setCountOfPages(I)V

    .line 62
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;->pageIndicator:Lcom/vkcoffee/android/ui/widget/PageIndicator;

    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;->adapter:Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;->setPhotos([Lcom/vkcoffee/android/Photo;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 62
    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 53
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 44
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;->pageIndicator:Lcom/vkcoffee/android/ui/widget/PageIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->setIndexOfCurrentPage(IZ)V

    .line 49
    return-void
.end method

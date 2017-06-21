.class public Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "InfinitePagerAdapter.java"


# instance fields
.field private adapter:Landroid/support/v4/view/PagerAdapter;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/PagerAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    .line 14
    iget-object v0, p0, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    new-instance v1, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter$1;-><init>(Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 25
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->getRealCount()I

    move-result v1

    rem-int v0, p2, v1

    .line 42
    .local v0, "virtualPosition":I
    iget-object v1, p0, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1, v0, p3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 43
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 47
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->getRealCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->getRealCount()I

    move-result v1

    rem-int v0, p1, v1

    .line 67
    .local v0, "virtualPosition":I
    iget-object v1, p0, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public getPageWidth(I)F
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v0

    return v0
.end method

.method public getRealCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->getRealCount()I

    move-result v1

    rem-int v0, p2, v1

    .line 37
    .local v0, "virtualPosition":I
    iget-object v1, p0, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Parcelable;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 55
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 76
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 63
    return-void
.end method

.class public abstract Lcom/vkcoffee/android/fragments/VKListFragment;
.super Lme/grishka/appkit/fragments/BaseListFragment;
.source "VKListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lme/grishka/appkit/fragments/BaseListFragment",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "perPage"    # I

    .prologue
    .line 18
    .local p0, "this":Lcom/vkcoffee/android/fragments/VKListFragment;, "Lcom/vkcoffee/android/fragments/VKListFragment<TT;>;"
    invoke-direct {p0, p1}, Lme/grishka/appkit/fragments/BaseListFragment;-><init>(I)V

    .line 19
    return-void
.end method


# virtual methods
.method protected canGoBack()Z
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lcom/vkcoffee/android/fragments/VKListFragment;, "Lcom/vkcoffee/android/fragments/VKListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getImageLoaderAdapter()Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/vkcoffee/android/fragments/VKListFragment;, "Lcom/vkcoffee/android/fragments/VKListFragment<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNavigationDrawer()Z
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/vkcoffee/android/fragments/VKListFragment;, "Lcom/vkcoffee/android/fragments/VKListFragment<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    .local p0, "this":Lcom/vkcoffee/android/fragments/VKListFragment;, "Lcom/vkcoffee/android/fragments/VKListFragment<TT;>;"
    invoke-super {p0, p1, p2, p3}, Lme/grishka/appkit/fragments/BaseListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 23
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/VKListFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x7f0f0012

    aput v4, v2, v3

    invoke-interface {v1, v2}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->setColorSchemeResources([I)V

    .line 24
    return-object v0
.end method

.method public onToolbarNavigationClick()V
    .locals 3

    .prologue
    .line 57
    .local p0, "this":Lcom/vkcoffee/android/fragments/VKListFragment;, "Lcom/vkcoffee/android/fragments/VKListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKListFragment;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1001e7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 62
    .local v0, "dl":Landroid/support/v4/widget/DrawerLayout;
    if-eqz v0, :cond_0

    .line 63
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    .local p0, "this":Lcom/vkcoffee/android/fragments/VKListFragment;, "Lcom/vkcoffee/android/fragments/VKListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKListFragment;->getImageLoaderAdapter()Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    move-result-object v0

    .line 36
    .local v0, "adapter":Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    if-eqz v0, :cond_0

    .line 37
    new-instance v1, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/VKListFragment;->list:Landroid/widget/ListView;

    invoke-direct {v1, v2, v0, v3, p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;-><init>(Landroid/content/Context;Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;)V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/VKListFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/VKListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/VKListFragment;->setListViewAppearance(Landroid/widget/ListView;)V

    .line 40
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/BaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 41
    sget-boolean v1, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKListFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKListFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 44
    :cond_1
    return-void
.end method

.method public setEmptyText(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 50
    .local p0, "this":Lcom/vkcoffee/android/fragments/VKListFragment;, "Lcom/vkcoffee/android/fragments/VKListFragment<TT;>;"
    return-void
.end method

.method public setEmptyText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 47
    .local p0, "this":Lcom/vkcoffee/android/fragments/VKListFragment;, "Lcom/vkcoffee/android/fragments/VKListFragment<TT;>;"
    return-void
.end method

.method protected setListViewAppearance(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;

    .prologue
    .line 32
    .local p0, "this":Lcom/vkcoffee/android/fragments/VKListFragment;, "Lcom/vkcoffee/android/fragments/VKListFragment<TT;>;"
    return-void
.end method

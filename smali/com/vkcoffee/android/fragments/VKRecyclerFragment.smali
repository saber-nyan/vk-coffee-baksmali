.class public abstract Lcom/vkcoffee/android/fragments/VKRecyclerFragment;
.super Lme/grishka/appkit/fragments/BaseRecyclerFragment;
.source "VKRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/VKRecyclerFragment$NavigatonSpinnerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lme/grishka/appkit/fragments/BaseRecyclerFragment",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "perPage"    # I

    .prologue
    .line 24
    .local p0, "this":Lcom/vkcoffee/android/fragments/VKRecyclerFragment;, "Lcom/vkcoffee/android/fragments/VKRecyclerFragment<TT;>;"
    invoke-direct {p0, p1}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;-><init>(I)V

    .line 25
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "layoutId"    # I
    .param p2, "perPage"    # I

    .prologue
    .line 28
    .local p0, "this":Lcom/vkcoffee/android/fragments/VKRecyclerFragment;, "Lcom/vkcoffee/android/fragments/VKRecyclerFragment<TT;>;"
    invoke-direct {p0, p1, p2}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;-><init>(II)V

    .line 29
    return-void
.end method


# virtual methods
.method protected canGoBack()Z
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/vkcoffee/android/fragments/VKRecyclerFragment;, "Lcom/vkcoffee/android/fragments/VKRecyclerFragment<TT;>;"
    invoke-static {p0}, Lcom/vkcoffee/android/navigation/ToolbarHelper;->canGoBack(Landroid/app/Fragment;)Z

    move-result v0

    return v0
.end method

.method public hasNavigationDrawer()Z
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lcom/vkcoffee/android/fragments/VKRecyclerFragment;, "Lcom/vkcoffee/android/fragments/VKRecyclerFragment<TT;>;"
    invoke-static {p0}, Lcom/vkcoffee/android/navigation/ToolbarHelper;->hasNavigationDrawer(Landroid/app/Fragment;)Z

    move-result v0

    return v0
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/fragments/VKRecyclerFragment;, "Lcom/vkcoffee/android/fragments/VKRecyclerFragment<TT;>;"
    const/high16 v3, 0x41000000    # 8.0f

    const/4 v4, 0x0

    .line 33
    invoke-super {p0, p1, p2, p3}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-virtual {v1, v4, v2, v4, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 35
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const v2, 0x7f020101

    invoke-virtual {v1, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->setSelector(I)V

    .line 36
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x7f0f0012

    aput v3, v2, v4

    invoke-interface {v1, v2}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->setColorSchemeResources([I)V

    .line 37
    return-object v0
.end method

.method protected onCreateNavigationSpinnerAdapter()Landroid/widget/ArrayAdapter;
    .locals 2

    .prologue
    .line 63
    .local p0, "this":Lcom/vkcoffee/android/fragments/VKRecyclerFragment;, "Lcom/vkcoffee/android/fragments/VKRecyclerFragment<TT;>;"
    new-instance v0, Lcom/vkcoffee/android/fragments/VKRecyclerFragment$NavigatonSpinnerAdapter;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment$NavigatonSpinnerAdapter;-><init>(Lcom/vkcoffee/android/fragments/VKRecyclerFragment;Landroid/content/Context;)V

    return-object v0
.end method

.method public onToolbarNavigationClick()V
    .locals 0

    .prologue
    .line 53
    .local p0, "this":Lcom/vkcoffee/android/fragments/VKRecyclerFragment;, "Lcom/vkcoffee/android/fragments/VKRecyclerFragment<TT;>;"
    invoke-static {p0}, Lcom/vkcoffee/android/navigation/ToolbarHelper;->onToolbarNavigationClick(Landroid/app/Fragment;)V

    .line 54
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    .local p0, "this":Lcom/vkcoffee/android/fragments/VKRecyclerFragment;, "Lcom/vkcoffee/android/fragments/VKRecyclerFragment<TT;>;"
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/navigation/ToolbarHelper;->onViewCreated(Landroid/support/v7/widget/Toolbar;)V

    .line 44
    return-void
.end method

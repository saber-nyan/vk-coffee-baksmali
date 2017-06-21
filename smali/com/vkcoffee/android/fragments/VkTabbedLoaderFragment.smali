.class public abstract Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;
.super Lme/grishka/appkit/fragments/TabbedLoaderFragment;
.source "VkTabbedLoaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment$NavigatonSpinnerAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lme/grishka/appkit/fragments/TabbedLoaderFragment;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method protected canGoBack()Z
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/vkcoffee/android/navigation/ToolbarHelper;->canGoBack(Landroid/app/Fragment;)Z

    move-result v0

    return v0
.end method

.method public hasNavigationDrawer()Z
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, Lcom/vkcoffee/android/navigation/ToolbarHelper;->hasNavigationDrawer(Landroid/app/Fragment;)Z

    move-result v0

    return v0
.end method

.method protected onCreateNavigationSpinnerAdapter()Landroid/widget/ArrayAdapter;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment$NavigatonSpinnerAdapter;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment$NavigatonSpinnerAdapter;-><init>(Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;Landroid/content/Context;)V

    return-object v0
.end method

.method public onToolbarNavigationClick()V
    .locals 0

    .prologue
    .line 35
    invoke-static {p0}, Lcom/vkcoffee/android/navigation/ToolbarHelper;->onToolbarNavigationClick(Landroid/app/Fragment;)V

    .line 36
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/TabbedLoaderFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/navigation/ToolbarHelper;->onViewCreated(Landroid/support/v7/widget/Toolbar;)V

    .line 26
    return-void
.end method

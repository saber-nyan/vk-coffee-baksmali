.class public abstract Lcom/vkcoffee/android/fragments/VKToolbarFragment;
.super Lme/grishka/appkit/fragments/ToolbarFragment;
.source "VKToolbarFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lme/grishka/appkit/fragments/ToolbarFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected canGoBack()Z
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/vkcoffee/android/navigation/ToolbarHelper;->canGoBack(Landroid/app/Fragment;)Z

    move-result v0

    return v0
.end method

.method public hasNavigationDrawer()Z
    .locals 1

    .prologue
    .line 23
    invoke-static {p0}, Lcom/vkcoffee/android/navigation/ToolbarHelper;->hasNavigationDrawer(Landroid/app/Fragment;)Z

    move-result v0

    return v0
.end method

.method public onToolbarNavigationClick()V
    .locals 0

    .prologue
    .line 28
    invoke-static {p0}, Lcom/vkcoffee/android/navigation/ToolbarHelper;->onToolbarNavigationClick(Landroid/app/Fragment;)V

    .line 29
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/ToolbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/navigation/ToolbarHelper;->onViewCreated(Landroid/support/v7/widget/Toolbar;)V

    .line 19
    return-void
.end method

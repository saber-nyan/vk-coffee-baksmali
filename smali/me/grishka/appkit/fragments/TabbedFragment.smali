.class public Lme/grishka/appkit/fragments/TabbedFragment;
.super Lme/grishka/appkit/fragments/ToolbarFragment;
.source "TabbedFragment.java"

# interfaces
.implements Lme/grishka/appkit/fragments/TabbedScreen;


# instance fields
.field private delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lme/grishka/appkit/fragments/ToolbarFragment;-><init>()V

    .line 23
    new-instance v0, Lme/grishka/appkit/fragments/TabbedFragment$1;

    invoke-direct {v0, p0, p0}, Lme/grishka/appkit/fragments/TabbedFragment$1;-><init>(Lme/grishka/appkit/fragments/TabbedFragment;Lme/grishka/appkit/fragments/ContainerFragment;)V

    iput-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    return-void
.end method


# virtual methods
.method public addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 111
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 112
    return-void
.end method

.method public addTab(ILandroid/app/Fragment;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "tab"    # Landroid/app/Fragment;
    .param p3, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 96
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0, p1, p2, p3}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->addTab(ILandroid/app/Fragment;Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method public getPagerCurrentItem()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->getPagerCurrentItem()I

    move-result v0

    return v0
.end method

.method public getTabAt(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->getTabAt(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getTabView()Landroid/view/View;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->getTabView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTabsCount()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->getTabsCount()I

    move-result v0

    return v0
.end method

.method public invalidateTabTitles()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->invalidateTabTitles()V

    .line 92
    return-void
.end method

.method public isSwipeEnabled()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->isSwipeEnabled()Z

    move-result v0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ToolbarFragment;->onAttach(Landroid/app/Activity;)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lme/grishka/appkit/fragments/TabbedFragment;->setHasOptionsMenu(Z)V

    .line 43
    return-void
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->createView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/ToolbarFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 147
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0, p1, p2}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 148
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lme/grishka/appkit/fragments/ToolbarFragment;->onDestroyView()V

    .line 61
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->destroyView()V

    .line 62
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 152
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 37
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/ToolbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/TabbedFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/TabbedFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setElevation(F)V

    .line 56
    :cond_0
    return-void
.end method

.method public removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 116
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 117
    return-void
.end method

.method public removeTab(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->removeTab(I)V

    .line 102
    return-void
.end method

.method public removeTab(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/Fragment;

    .prologue
    .line 106
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->removeTab(Landroid/app/Fragment;)V

    .line 107
    return-void
.end method

.method public setPagerCurrentItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->setPagerCurrentItem(I)V

    .line 132
    return-void
.end method

.method public setPagerCurrentItem(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "scroll"    # Z

    .prologue
    .line 136
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0, p1, p2}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->setPagerCurrentItem(IZ)V

    .line 137
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 71
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->setSwipeEnabled(Z)V

    .line 72
    return-void
.end method

.method public setTabTitle(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 86
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0, p1, p2}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->setTabTitle(ILjava/lang/CharSequence;)V

    .line 87
    return-void
.end method

.method public setTabs(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "fragments":Ljava/util/List;, "Ljava/util/List<+Landroid/app/Fragment;>;"
    .local p2, "titles":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0, p1, p2}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->setTabs(Ljava/util/List;Ljava/util/List;)V

    .line 77
    return-void
.end method

.method public setTabsAutoLoad(Z)V
    .locals 1
    .param p1, "autoLoad"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->setTabsAutoLoad(Z)V

    .line 168
    return-void
.end method

.method public setTabsLayout(I)V
    .locals 1
    .param p1, "tabsLayout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 162
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->setTabsLayout(I)V

    .line 163
    return-void
.end method

.method public setTabsVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedFragment;->delegate:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->setTabsVisible(Z)V

    .line 122
    return-void
.end method

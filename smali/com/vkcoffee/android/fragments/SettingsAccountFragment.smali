.class public Lcom/vkcoffee/android/fragments/SettingsAccountFragment;
.super Lme/grishka/appkit/fragments/LoaderFragment;
.source "SettingsAccountFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lme/grishka/appkit/fragments/LoaderFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/SettingsAccountFragment;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsAccountFragment;->showContent()V

    return-void
.end method


# virtual methods
.method public doLoadData()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings;-><init>()V

    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsAccountFragment$1;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/SettingsAccountFragment$1;-><init>(Lcom/vkcoffee/android/fragments/SettingsAccountFragment;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 61
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onAttach(Landroid/app/Activity;)V

    .line 20
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsAccountFragment;->loadData()V

    .line 21
    const v0, 0x7f08047f

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/SettingsAccountFragment;->setTitle(I)V

    .line 22
    return-void
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    .local v0, "content":Landroid/view/View;
    const v1, 0x7f10002c

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 27
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3}, Lme/grishka/appkit/fragments/LoaderFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 32
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f100112

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 33
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    const v2, 0x7f020318

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 34
    invoke-static {v0}, Lcom/vkcoffee/android/navigation/ToolbarHelper;->onViewCreated(Landroid/support/v7/widget/Toolbar;)V

    .line 35
    return-object v1
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsAccountFragment;->loadData()V

    .line 48
    return-void
.end method

.method public onToolbarNavigationClick()V
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsAccountFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsAccountFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

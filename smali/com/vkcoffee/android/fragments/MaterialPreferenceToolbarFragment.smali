.class public Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;
.super Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;
.source "MaterialPreferenceToolbarFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment$MaterialPreferenceToolbarFragment$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment$MaterialPreferenceToolbarFragment$$Lambda$2;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->getTitleRes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitleRes()I
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f080074

    return v0
.end method

.method lambda$onCreateView$405(Landroid/view/View;)V
    .locals 0
    .param p1, "view1"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onToolbarNavigationClick()V

    .line 29
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 16
    .local v1, "view":Landroid/view/View;
    const v3, 0x7f030023

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 17
    .local v2, "wrapView":Landroid/view/View;
    const v3, 0x7f100113

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    const v3, 0x7f100112

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 19
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    const v3, 0x7f020318

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 21
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment$MaterialPreferenceToolbarFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment$MaterialPreferenceToolbarFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;)Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 23
    invoke-static {v0}, Lcom/vkcoffee/android/navigation/ToolbarHelper;->onViewCreated(Landroid/support/v7/widget/Toolbar;)V

    .line 24
    return-object v2
.end method

.method public onToolbarNavigationClick()V
    .locals 0

    .prologue
    .line 32
    invoke-static {p0}, Lcom/vkcoffee/android/navigation/ToolbarHelper;->onToolbarNavigationClick(Landroid/app/Fragment;)V

    .line 33
    return-void
.end method

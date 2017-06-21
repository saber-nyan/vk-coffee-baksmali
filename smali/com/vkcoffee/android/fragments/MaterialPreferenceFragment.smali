.class public Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;
.super Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;
.source "MaterialPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$Adapter;,
        Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$MaterialPreferenceFragment$$Lambda$1;
    }
.end annotation


# instance fields
.field private decorator:Lcom/vkcoffee/android/ui/CardItemDecorator;

.field protected isTablet:Z

.field protected scrW:I

.field protected wrapperAdapter:Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$Adapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->wrapperAdapter:Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$Adapter;

    .line 31
    return-void
.end method

.method private static getScreenSize(Landroid/content/Context;)I
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-static {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getScreenSize(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private updateDecorator()V
    .locals 4

    .prologue
    .line 106
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    instance-of v2, v2, Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->decorator:Lcom/vkcoffee/android/ui/CardItemDecorator;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 108
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    .line 109
    .local v1, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->onCreateCardDecorator()Lcom/vkcoffee/android/ui/CardItemDecorator;

    move-result-object v0

    .line 110
    .local v0, "onCreateCardDecorator":Lcom/vkcoffee/android/ui/CardItemDecorator;
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->decorator:Lcom/vkcoffee/android/ui/CardItemDecorator;

    .line 111
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 113
    .end local v0    # "onCreateCardDecorator":Lcom/vkcoffee/android/ui/CardItemDecorator;
    .end local v1    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    :cond_0
    return-void
.end method


# virtual methods
.method protected bindPreferences()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->bindPreferences()V

    .line 102
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->updateDecorator()V

    .line 103
    return-void
.end method

.method lambda$onCreateRecyclerView$404(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 168
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->wrapperAdapter:Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$Adapter;

    invoke-virtual {v2, p1}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$Adapter;->getItem(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 169
    .local v0, "item":Landroid/support/v7/preference/Preference;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->wrapperAdapter:Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$Adapter;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$Adapter;->getItem(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 170
    .local v1, "itemNext":Landroid/support/v7/preference/Preference;
    instance-of v2, v0, Landroid/support/v7/preference/PreferenceCategory;

    if-nez v2, :cond_0

    instance-of v2, v1, Landroid/support/v7/preference/PreferenceCategory;

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/vkcoffee/android/ui/MaterialSectionDividerPreference;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->onAttach(Landroid/app/Activity;)V

    .line 64
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->updateConfiguration()V

    .line 65
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 96
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->updateConfiguration()V

    .line 97
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->updateDecorator()V

    .line 98
    return-void
.end method

.method protected onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 177
    new-instance v0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$Adapter;

    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 178
    .local v0, "adapter":Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$Adapter;
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->wrapperAdapter:Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$Adapter;

    .line 179
    return-object v0
.end method

.method protected onCreateCardDecorator()Lcom/vkcoffee/android/ui/CardItemDecorator;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 123
    const/4 v4, 0x1

    .line 124
    .local v4, "z":Z
    iget v5, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->scrW:I

    const/16 v6, 0x39c

    if-lt v5, v6, :cond_1

    .line 125
    const/4 v1, 0x1

    .line 129
    .local v1, "isTabletDecorator":Z
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    .line 130
    .local v3, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    if-eqz v1, :cond_0

    .line 131
    const/4 v4, 0x0

    .line 133
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/ui/CardItemDecorator;

    invoke-direct {v0, v3, v4}, Lcom/vkcoffee/android/ui/CardItemDecorator;-><init>(Landroid/support/v7/widget/RecyclerView;Z)V

    .line 134
    .local v0, "decorator":Lcom/vkcoffee/android/ui/CardItemDecorator;
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v7

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/vkcoffee/android/ui/CardItemDecorator;->setPadding(IIII)V

    .line 135
    if-eqz v1, :cond_2

    .line 136
    const/16 v5, 0x10

    iget v6, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->scrW:I

    add-int/lit16 v6, v6, -0x39c

    div-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    .line 140
    .local v2, "pad":I
    :goto_1
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v2, v8, v2, v8}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 141
    return-object v0

    .line 127
    .end local v0    # "decorator":Lcom/vkcoffee/android/ui/CardItemDecorator;
    .end local v1    # "isTabletDecorator":Z
    .end local v2    # "pad":I
    .end local v3    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isTabletDecorator":Z
    goto :goto_0

    .line 138
    .restart local v0    # "decorator":Lcom/vkcoffee/android/ui/CardItemDecorator;
    .restart local v3    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "pad":I
    goto :goto_1
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 174
    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 146
    .local v1, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    new-instance v0, Lme/grishka/appkit/views/DividerItemDecoration;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, 0x26000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lme/grishka/appkit/views/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 147
    .local v0, "dividers":Lme/grishka/appkit/views/DividerItemDecoration;
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$MaterialPreferenceFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;)Lme/grishka/appkit/views/DividerItemDecoration$Provider;

    move-result-object v2

    invoke-virtual {v0, v2}, Lme/grishka/appkit/views/DividerItemDecoration;->setProvider(Lme/grishka/appkit/views/DividerItemDecoration$Provider;)Lme/grishka/appkit/views/DividerItemDecoration;

    .line 148
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 149
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->decorator:Lcom/vkcoffee/android/ui/CardItemDecorator;

    .line 118
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 90
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollBarStyle(I)V

    .line 91
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->updateDecorator()V

    .line 92
    return-void
.end method

.method protected updateConfiguration()V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->scrW:I

    .line 85
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->getScreenSize(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->isTablet:Z

    .line 86
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

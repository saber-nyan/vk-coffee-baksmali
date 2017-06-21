.class public Lme/grishka/appkit/fragments/AppKitFragment;
.super Landroid/app/DialogFragment;
.source "AppKitFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/grishka/appkit/fragments/AppKitFragment$NavigationSpinnerAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_IS_TAB:Ljava/lang/String; = "__is_tab"


# instance fields
.field private hasOptionsMenu:Z

.field protected isTablet:Z

.field protected navigationSpinner:Landroid/widget/Spinner;

.field protected scrW:I

.field protected spinnerViewResourceId:I

.field private subtitle:Ljava/lang/CharSequence;

.field private subtitleMarquee:Z

.field private title:Ljava/lang/CharSequence;

.field private titleMarquee:Z

.field private toolbar:Landroid/support/v7/widget/Toolbar;

.field private viewCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 57
    const v0, 0x7f030020

    iput v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->spinnerViewResourceId:I

    .line 59
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/AppKitFragment;->subtitleMarquee:Z

    .line 61
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/AppKitFragment;->titleMarquee:Z

    .line 51
    return-void
.end method

.method public static getScreenSize(Landroid/content/Context;)I
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 269
    const/4 v5, 0x3

    :try_start_0
    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "normal"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string v6, "large"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string v6, "xlarge"

    aput-object v6, v2, v5

    .line 270
    .local v2, "types":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0805c5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-lt v1, v5, :cond_1

    .end local v1    # "i":I
    .end local v2    # "types":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :goto_1
    move v1, v4

    .line 279
    :cond_0
    return v1

    .line 272
    .restart local v1    # "i":I
    .restart local v2    # "types":[Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_1
    aget-object v5, v2, v1

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .end local v1    # "i":I
    .end local v2    # "types":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "AppKit"

    const-string v6, "error check screen type"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private invalidateToolbarMenu()V
    .locals 4

    .prologue
    .line 243
    :try_start_0
    iget-object v1, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 244
    iget-boolean v1, p0, Lme/grishka/appkit/fragments/AppKitFragment;->hasOptionsMenu:Z

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    new-instance v2, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1, v2}, Lme/grishka/appkit/fragments/AppKitFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "th":Ljava/lang/Throwable;
    const-string v1, "AppKit"

    const-string v2, "error invalidateToolbarMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateToolbarMarquee()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v6, 0x1

    .line 127
    iget-object v4, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v4, :cond_1

    .line 128
    const/4 v3, 0x0

    .line 129
    .local v3, "title":Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 131
    .local v2, "subtitle":Landroid/widget/TextView;
    :try_start_0
    iget-object v4, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mTitleTextView"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 132
    .local v1, "fld":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 133
    iget-object v4, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    .line 134
    iget-object v4, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mSubtitleTextView"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 135
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 136
    iget-object v4, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1    # "fld":Ljava/lang/reflect/Field;
    :goto_0
    if-eqz v3, :cond_0

    .line 140
    invoke-static {v7}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    .line 141
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 142
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 143
    iget-boolean v4, p0, Lme/grishka/appkit/fragments/AppKitFragment;->titleMarquee:Z

    if-eqz v4, :cond_2

    .line 144
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 145
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 151
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 152
    invoke-static {v7}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    .line 153
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 154
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 155
    iget-boolean v4, p0, Lme/grishka/appkit/fragments/AppKitFragment;->subtitleMarquee:Z

    if-eqz v4, :cond_3

    .line 156
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 157
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 164
    .end local v2    # "subtitle":Landroid/widget/TextView;
    .end local v3    # "title":Landroid/widget/TextView;
    :cond_1
    :goto_2
    return-void

    .line 147
    .restart local v2    # "subtitle":Landroid/widget/TextView;
    .restart local v3    # "title":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 148
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 160
    :cond_3
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 161
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2

    .line 137
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method protected canGoBack()Z
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_can_go_back"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected getSelectedNavigationItem()I
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->navigationSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 395
    const/4 v0, -0x1

    .line 397
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->navigationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method protected getToolbar()Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method protected getToolbarContext()Landroid/content/Context;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 366
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x7f010166

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 367
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 368
    .local v1, "themeID":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 369
    if-nez v1, :cond_0

    .line 370
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 372
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected getToolbarPopupContext()Landroid/content/Context;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 376
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x7f010163

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 377
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 378
    .local v1, "themeID":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 379
    if-nez v1, :cond_0

    .line 380
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 382
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public hasNavigationDrawer()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 235
    invoke-direct {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->invalidateToolbarMenu()V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public isSubitleMarqueeEnabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 123
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->subtitleMarquee:Z

    return v0
.end method

.method public isTitleMarqueeEnabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 119
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->titleMarquee:Z

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 258
    invoke-static {p1}, Lme/grishka/appkit/utils/V;->setApplicationContext(Landroid/content/Context;)V

    .line 259
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->updateConfiguration()V

    .line 260
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 264
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->updateConfiguration()V

    .line 265
    return-void
.end method

.method protected onCreateNavigationSpinner(Landroid/view/LayoutInflater;)Landroid/widget/Spinner;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 339
    const v0, 0x7f03001f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    return-object v0
.end method

.method protected onCreateNavigationSpinnerAdapter()Landroid/widget/ArrayAdapter;
    .locals 2

    .prologue
    .line 324
    new-instance v0, Lme/grishka/appkit/fragments/AppKitFragment$NavigationSpinnerAdapter;

    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lme/grishka/appkit/fragments/AppKitFragment$NavigationSpinnerAdapter;-><init>(Lme/grishka/appkit/fragments/AppKitFragment;Landroid/content/Context;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 222
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 223
    iput-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->navigationSpinner:Landroid/widget/Spinner;

    .line 224
    iput-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 225
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lme/grishka/appkit/fragments/AppKitFragment;->setUserVisibleHint(Z)V

    .line 92
    :cond_0
    return-void
.end method

.method protected onSpinnerItemSelected(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public onToolbarNavigationClick()V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 102
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 169
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 170
    const v0, 0x7f100112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 171
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "__is_tab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 173
    iput-object v3, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 175
    :cond_0
    iput-boolean v2, p0, Lme/grishka/appkit/fragments/AppKitFragment;->viewCreated:Z

    .line 176
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_7

    .line 177
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lme/grishka/appkit/fragments/AppKitFragment;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    :cond_1
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->subtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lme/grishka/appkit/fragments/AppKitFragment;->subtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 183
    :cond_2
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->hasOptionsMenu:Z

    if-eqz v0, :cond_3

    .line 184
    invoke-direct {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->invalidateToolbarMenu()V

    .line 185
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lme/grishka/appkit/fragments/AppKitFragment$1;

    invoke-direct {v1, p0}, Lme/grishka/appkit/fragments/AppKitFragment$1;-><init>(Lme/grishka/appkit/fragments/AppKitFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 191
    :cond_3
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 192
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f020318

    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_4
    :goto_0
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lme/grishka/appkit/fragments/AppKitFragment$2;

    invoke-direct {v1, p0}, Lme/grishka/appkit/fragments/AppKitFragment$2;-><init>(Lme/grishka/appkit/fragments/AppKitFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    :cond_5
    :goto_1
    invoke-direct {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->updateToolbarMarquee()V

    .line 219
    return-void

    .line 193
    :cond_6
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->hasNavigationDrawer()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f020317

    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 202
    :cond_7
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_dialog"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 203
    :cond_8
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/fragments/AppKitFragment;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    :cond_9
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_dialog"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 206
    :cond_a
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    .line 207
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-eqz v0, :cond_b

    .line 208
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-static {}, Lme/grishka/appkit/utils/StubListAdapter;->getInstance()Lme/grishka/appkit/utils/StubListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 209
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 211
    :cond_b
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 213
    :cond_c
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->subtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 214
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/fragments/AppKitFragment;->subtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public setHasOptionsMenu(Z)V
    .locals 0
    .param p1, "hasMenu"    # Z

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->setHasOptionsMenu(Z)V

    .line 229
    iput-boolean p1, p0, Lme/grishka/appkit/fragments/AppKitFragment;->hasOptionsMenu:Z

    .line 230
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->invalidateOptionsMenu()V

    .line 231
    return-void
.end method

.method protected setSelectedNavigationItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 390
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->navigationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 391
    return-void
.end method

.method protected setSpinnerAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    const/4 v5, 0x0

    .line 343
    if-eqz p1, :cond_2

    .line 344
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->navigationSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/grishka/appkit/fragments/AppKitFragment;->onCreateNavigationSpinner(Landroid/view/LayoutInflater;)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->navigationSpinner:Landroid/widget/Spinner;

    .line 346
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->navigationSpinner:Landroid/widget/Spinner;

    new-instance v1, Lme/grishka/appkit/fragments/AppKitFragment$3;

    invoke-direct {v1, p0}, Lme/grishka/appkit/fragments/AppKitFragment$3;-><init>(Lme/grishka/appkit/fragments/AppKitFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 354
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lme/grishka/appkit/fragments/AppKitFragment;->navigationSpinner:Landroid/widget/Spinner;

    new-instance v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->navigationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 363
    :cond_1
    :goto_0
    return-void

    .line 359
    :cond_2
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->navigationSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lme/grishka/appkit/fragments/AppKitFragment;->navigationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 361
    iput-object v5, p0, Lme/grishka/appkit/fragments/AppKitFragment;->navigationSpinner:Landroid/widget/Spinner;

    goto :goto_0
.end method

.method protected setSpinnerItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p1, :cond_0

    .line 329
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lme/grishka/appkit/fragments/AppKitFragment;->setSpinnerAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 336
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->onCreateNavigationSpinnerAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 333
    .local v0, "adapter":Landroid/widget/ArrayAdapter;
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 334
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 335
    invoke-virtual {p0, v0}, Lme/grishka/appkit/fragments/AppKitFragment;->setSpinnerAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0
.end method

.method protected setSubtitle(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lme/grishka/appkit/fragments/AppKitFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/grishka/appkit/fragments/AppKitFragment;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 321
    return-void
.end method

.method protected setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 308
    iput-object p1, p0, Lme/grishka/appkit/fragments/AppKitFragment;->subtitle:Ljava/lang/CharSequence;

    .line 309
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->navigationSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 312
    invoke-direct {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->updateToolbarMarquee()V

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->viewCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSubtitleMarqueeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lme/grishka/appkit/fragments/AppKitFragment;->subtitleMarquee:Z

    .line 115
    invoke-direct {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->updateToolbarMarquee()V

    .line 116
    return-void
.end method

.method protected setTitle(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lme/grishka/appkit/fragments/AppKitFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/grishka/appkit/fragments/AppKitFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 305
    return-void
.end method

.method protected setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 289
    iput-object p1, p0, Lme/grishka/appkit/fragments/AppKitFragment;->title:Ljava/lang/CharSequence;

    .line 290
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->navigationSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 293
    invoke-direct {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->updateToolbarMarquee()V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->viewCreated:Z

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_dialog"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    :cond_2
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTitleMarqueeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lme/grishka/appkit/fragments/AppKitFragment;->titleMarquee:Z

    .line 110
    invoke-direct {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->updateToolbarMarquee()V

    .line 111
    return-void
.end method

.method protected updateConfiguration()V
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->scrW:I

    .line 285
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/grishka/appkit/fragments/AppKitFragment;->getScreenSize(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lme/grishka/appkit/fragments/AppKitFragment;->isTablet:Z

    .line 286
    return-void

    .line 285
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

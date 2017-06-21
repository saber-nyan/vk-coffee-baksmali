.class public Lcom/vkcoffee/android/activities/TabletsDialogActivity;
.super Lcom/vkcoffee/android/VKActivity;
.source "TabletsDialogActivity.java"


# instance fields
.field private mGravity:I

.field private mInputMode:I

.field private mMaxWidth:I

.field private mMinSpacing:I

.field private mWindowBackgroundResource:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vkcoffee/android/VKActivity;-><init>()V

    .line 22
    const/16 v0, 0x11

    iput v0, p0, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->mGravity:I

    .line 23
    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->mMinSpacing:I

    .line 24
    const/high16 v0, 0x443e0000    # 760.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->mMaxWidth:I

    .line 25
    const/16 v0, 0x20

    iput v0, p0, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->mInputMode:I

    .line 26
    const v0, 0x106000b

    iput v0, p0, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->mWindowBackgroundResource:I

    return-void
.end method


# virtual methods
.method protected adjustSize(Landroid/view/Window;Z)V
    .locals 3
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "isTablet"    # Z

    .prologue
    .line 76
    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 78
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 79
    .local v1, "width":I
    iget v2, p0, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->mMinSpacing:I

    shl-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    .line 80
    iget v2, p0, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->mMaxWidth:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 81
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 82
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 83
    iget v2, p0, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->mInputMode:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 84
    iget v2, p0, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->mGravity:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 86
    iget v2, p0, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->mInputMode:I

    invoke-virtual {p1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 88
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "width":I
    :cond_0
    iget v2, p0, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->mWindowBackgroundResource:I

    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 89
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 42
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget-boolean v1, Lcom/vkcoffee/android/Global;->isTablet:Z

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->adjustSize(Landroid/view/Window;Z)V

    .line 43
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget-boolean v1, Lcom/vkcoffee/android/Global;->isTablet:Z

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->adjustSize(Landroid/view/Window;Z)V

    .line 37
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "layoutResID"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->setContentView(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 93
    new-instance v0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, "contentView":Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    sget-boolean v1, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-nez v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x44000000    # 512.0f

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 96
    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->setFitsSystemWindows(Z)V

    .line 97
    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->setDrawStatusBar(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->setStatusBarColor(I)V

    .line 99
    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->setClipToPadding(Z)V

    .line 100
    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->setSystemUiVisibility(I)V

    .line 102
    :cond_0
    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->addView(Landroid/view/View;)V

    .line 103
    invoke-super {p0, v0}, Lcom/vkcoffee/android/VKActivity;->setContentView(Landroid/view/View;)V

    .line 104
    return-void
.end method

.method public setDialogGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->mGravity:I

    .line 53
    return-void
.end method

.method public setDialogInputMode(I)V
    .locals 0
    .param p1, "inputMode"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->mInputMode:I

    .line 68
    return-void
.end method

.method public setDialogMaxWidth(I)V
    .locals 0
    .param p1, "maxWidth"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->mMaxWidth:I

    .line 63
    return-void
.end method

.method public setDialogMinSpacing(I)V
    .locals 0
    .param p1, "minSpacing"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->mMinSpacing:I

    .line 58
    return-void
.end method

.method public setDialogWindowBackgroundResource(I)V
    .locals 0
    .param p1, "windowBackgroundResource"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->mWindowBackgroundResource:I

    .line 73
    return-void
.end method

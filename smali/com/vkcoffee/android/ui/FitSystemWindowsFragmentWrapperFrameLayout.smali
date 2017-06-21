.class public Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;
.super Landroid/widget/FrameLayout;
.source "FitSystemWindowsFragmentWrapperFrameLayout.java"


# instance fields
.field private mDrawStatusBar:Z

.field private mInsetTop:I

.field private mStatusBarColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mStatusBarPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->mInsetTop:I

    .line 29
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 56
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->mDrawStatusBar:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->mInsetTop:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->mStatusBarPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 59
    :cond_0
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->mDrawStatusBar:Z

    if-eqz v1, :cond_0

    .line 64
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->mInsetTop:I

    .line 65
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->invalidate()V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 68
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/vkcoffee/android/fragments/FitSystemWindowsFragment;

    if-nez v1, :cond_1

    .line 69
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v1

    .line 77
    .end local v0    # "fragment":Landroid/app/Fragment;
    :goto_0
    return v1

    .line 71
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2

    .line 72
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 74
    :cond_2
    if-eqz v0, :cond_3

    check-cast v0, Lcom/vkcoffee/android/fragments/FitSystemWindowsFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-interface {v0, p1}, Lcom/vkcoffee/android/fragments/FitSystemWindowsFragment;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 77
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0
.end method

.method public getInsetTop()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->mInsetTop:I

    return v0
.end method

.method public setDrawStatusBar(Z)V
    .locals 2
    .param p1, "draw"    # Z

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->mDrawStatusBar:Z

    if-eq p1, v0, :cond_1

    .line 33
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->mDrawStatusBar:Z

    .line 34
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->mDrawStatusBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->mStatusBarPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->mStatusBarPaint:Landroid/graphics/Paint;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->mStatusBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->mStatusBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->invalidate()V

    .line 40
    :cond_1
    return-void
.end method

.method public setStatusBarColor(I)V
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 43
    iget v0, p0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->mStatusBarColor:I

    if-eq p1, v0, :cond_1

    .line 44
    iput p1, p0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->mStatusBarColor:I

    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->mStatusBarPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->mStatusBarPaint:Landroid/graphics/Paint;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->mStatusBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->mStatusBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->invalidate()V

    .line 51
    :cond_1
    return-void
.end method

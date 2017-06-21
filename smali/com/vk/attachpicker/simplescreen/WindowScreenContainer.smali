.class public Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;
.super Landroid/app/Dialog;
.source "WindowScreenContainer.java"

# interfaces
.implements Lcom/vk/attachpicker/simplescreen/ScreenContainer$OnDismissListener;


# instance fields
.field private final screenContainer:Lcom/vk/attachpicker/simplescreen/ScreenContainer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, -0x1

    .line 16
    const v3, 0x7f0c00f1

    invoke-direct {p0, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 18
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->setCancelable(Z)V

    .line 19
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->setCanceledOnTouchOutside(Z)V

    .line 21
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 22
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 23
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 24
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 25
    const v3, 0x7f0c0125

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 26
    const/16 v3, 0x30

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 28
    invoke-virtual {p0}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030125

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->setContentView(Landroid/view/View;)V

    .line 36
    const v3, 0x7f10031b

    invoke-virtual {p0, v3}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->$(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    iput-object v3, p0, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->screenContainer:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    .line 37
    iget-object v3, p0, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->screenContainer:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    invoke-virtual {v3, p0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->setOnDismissListener(Lcom/vk/attachpicker/simplescreen/ScreenContainer$OnDismissListener;)V

    .line 39
    const v3, 0x7f10031c

    invoke-virtual {p0, v3}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->$(I)Landroid/view/View;

    move-result-object v2

    .line 40
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-static {p0, v2}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;Landroid/view/View;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 44
    return-void
.end method


# virtual methods
.method public final $(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->screenContainer:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 68
    :cond_0
    return-void
.end method

.method synthetic lambda$new$41(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->screenContainer:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->onTopPaddingChanged(I)V

    .line 42
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->screenContainer:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->onDestroy()V

    .line 56
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 77
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->screenContainer:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->onPause()V

    .line 52
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->screenContainer:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->onResume()V

    .line 48
    return-void
.end method

.method public showScreen(Lcom/vk/attachpicker/simplescreen/BaseScreen;)V
    .locals 1
    .param p1, "screen"    # Lcom/vk/attachpicker/simplescreen/BaseScreen;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->screenContainer:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->showScreen(Lcom/vk/attachpicker/simplescreen/BaseScreen;)V

    .line 60
    return-void
.end method

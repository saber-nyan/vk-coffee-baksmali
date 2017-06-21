.class public Lcom/vkcoffee/android/PinCodeViewCoffee;
.super Landroid/app/Activity;
.source "PinCodeViewCoffee.java"


# instance fields
.field private passcodeView:Lcom/vkcoffee/android/telegramutils/PasscodeView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showPasscodeActivity()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkcoffee/android/PinCodeViewCoffee;->passcodeView:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/PinCodeViewCoffee;->passcodeView:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->onShow()V

    .line 61
    iget-object v0, p0, Lcom/vkcoffee/android/PinCodeViewCoffee;->passcodeView:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    new-instance v1, Lcom/vkcoffee/android/PinCodeViewCoffee$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/PinCodeViewCoffee$1;-><init>(Lcom/vkcoffee/android/PinCodeViewCoffee;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->setDelegate(Lcom/vkcoffee/android/telegramutils/PasscodeView$PasscodeViewDelegate;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 29
    invoke-static {}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->checkDisplaySize()V

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 32
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    new-instance v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkcoffee/android/PinCodeViewCoffee;->passcodeView:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    .line 22
    iget-object v0, p0, Lcom/vkcoffee/android/PinCodeViewCoffee;->passcodeView:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/PinCodeViewCoffee;->setContentView(Landroid/view/View;)V

    .line 23
    invoke-virtual {p0}, Lcom/vkcoffee/android/PinCodeViewCoffee;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "#5181B8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setStatusBarColor(Landroid/view/Window;I)V

    .line 24
    invoke-direct {p0}, Lcom/vkcoffee/android/PinCodeViewCoffee;->showPasscodeActivity()V

    .line 26
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 43
    invoke-static {}, Lcom/vkcoffee/android/ActUt;->activityPaused()V

    .line 44
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 37
    invoke-static {}, Lcom/vkcoffee/android/ActUt;->activityResumed()V

    .line 38
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 50
    invoke-static {}, Lcom/vkcoffee/android/ActUt;->activityPaused()V

    .line 51
    return-void
.end method

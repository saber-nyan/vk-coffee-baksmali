.class Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$3;
.super Lcom/vkcoffee/android/telegramutils/AnimatorListenerAdapterProxy;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->eraseLastCharacter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$3;->this$1:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    .line 321
    invoke-direct {p0}, Lcom/vkcoffee/android/telegramutils/AnimatorListenerAdapterProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$3;->this$1:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    invoke-static {v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->access$4(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$3;->this$1:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    invoke-static {v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->access$4(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView$3;->this$1:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->access$3(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;Landroid/animation/AnimatorSet;)V

    .line 327
    :cond_0
    return-void
.end method

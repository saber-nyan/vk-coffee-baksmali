.class Lcom/vkcoffee/android/telegramutils/PasscodeView$9;
.super Lcom/vkcoffee/android/telegramutils/AnimatorListenerAdapterProxy;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/telegramutils/PasscodeView;->shakeTextView(FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

.field private final synthetic val$num:I

.field private final synthetic val$x:F


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/telegramutils/PasscodeView;IF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$9;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    iput p2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$9;->val$num:I

    iput p3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$9;->val$x:F

    .line 813
    invoke-direct {p0}, Lcom/vkcoffee/android/telegramutils/AnimatorListenerAdapterProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 816
    iget-object v1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$9;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    iget v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$9;->val$num:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$9;->val$num:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$3(Lcom/vkcoffee/android/telegramutils/PasscodeView;FI)V

    .line 817
    return-void

    .line 816
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$9;->val$x:F

    neg-float v0, v0

    goto :goto_0
.end method

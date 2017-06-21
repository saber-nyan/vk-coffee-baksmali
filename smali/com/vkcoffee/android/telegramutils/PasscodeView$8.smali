.class Lcom/vkcoffee/android/telegramutils/PasscodeView$8;
.super Lcom/vkcoffee/android/telegramutils/AnimatorListenerAdapterProxy;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/telegramutils/PasscodeView;->processDone(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/telegramutils/PasscodeView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$8;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    .line 786
    invoke-direct {p0}, Lcom/vkcoffee/android/telegramutils/AnimatorListenerAdapterProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 789
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$8;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->setVisibility(I)V

    .line 790
    return-void
.end method

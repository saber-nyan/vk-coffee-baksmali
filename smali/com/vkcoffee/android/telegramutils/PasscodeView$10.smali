.class Lcom/vkcoffee/android/telegramutils/PasscodeView$10;
.super Ljava/lang/Object;
.source "PasscodeView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/telegramutils/PasscodeView;->checkFingerprint()V
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
    iput-object p1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$10;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    .line 920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 923
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$10;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$4(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Landroid/support/v4/os/CancellationSignal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$10;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$5(Lcom/vkcoffee/android/telegramutils/PasscodeView;Z)V

    .line 925
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$10;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$4(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Landroid/support/v4/os/CancellationSignal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/os/CancellationSignal;->cancel()V

    .line 926
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$10;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$6(Lcom/vkcoffee/android/telegramutils/PasscodeView;Landroid/support/v4/os/CancellationSignal;)V

    .line 928
    :cond_0
    return-void
.end method

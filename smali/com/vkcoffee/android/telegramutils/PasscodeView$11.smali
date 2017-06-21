.class Lcom/vkcoffee/android/telegramutils/PasscodeView$11;
.super Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.source "PasscodeView.java"


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
    iput-object p1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$11;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    .line 943
    invoke-direct {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 946
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$11;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$7(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$11;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v0, p2}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$8(Lcom/vkcoffee/android/telegramutils/PasscodeView;Ljava/lang/CharSequence;)V

    .line 949
    :cond_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .prologue
    .line 958
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$11;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    const-string v1, "\u041e\u0447\u0435\u043f\u044f\u0442\u043e\u043a \u043f\u0430\u043b\u044c\u0446\u0430 \u043d\u0435 \u0440\u0430\u0441\u043f\u043e\u0437\u043d\u0430\u043d. \u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0441\u043d\u043e\u0432\u0430"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$8(Lcom/vkcoffee/android/telegramutils/PasscodeView;Ljava/lang/CharSequence;)V

    .line 959
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 953
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$11;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v0, p2}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$8(Lcom/vkcoffee/android/telegramutils/PasscodeView;Ljava/lang/CharSequence;)V

    .line 954
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
    .locals 2
    .param p1, "result"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;

    .prologue
    .line 964
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$11;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$9(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$11;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$9(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$11;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$10(Lcom/vkcoffee/android/telegramutils/PasscodeView;Landroid/app/AlertDialog;)V

    .line 971
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$11;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$0(Lcom/vkcoffee/android/telegramutils/PasscodeView;Z)V

    .line 972
    return-void

    .line 967
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class Lcom/vkcoffee/android/telegramutils/PasscodeView$3;
.super Ljava/lang/Object;
.source "PasscodeView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/telegramutils/PasscodeView;-><init>(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$3;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$3;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$1(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 552
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$3;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$0(Lcom/vkcoffee/android/telegramutils/PasscodeView;Z)V

    .line 554
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 542
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 547
    return-void
.end method

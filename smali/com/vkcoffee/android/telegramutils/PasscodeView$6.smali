.class Lcom/vkcoffee/android/telegramutils/PasscodeView$6;
.super Ljava/lang/Object;
.source "PasscodeView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$6;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 688
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$6;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$1(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$6;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$2(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->access$5(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;Z)V

    .line 690
    return v2
.end method

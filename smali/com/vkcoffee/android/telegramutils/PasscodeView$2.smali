.class Lcom/vkcoffee/android/telegramutils/PasscodeView$2;
.super Ljava/lang/Object;
.source "PasscodeView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    iput-object p1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$2;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 531
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$2;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$0(Lcom/vkcoffee/android/telegramutils/PasscodeView;Z)V

    .line 533
    const/4 v0, 0x1

    .line 535
    :cond_0
    return v0
.end method

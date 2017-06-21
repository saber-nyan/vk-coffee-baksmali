.class Lcom/vkcoffee/android/dialogs/PromptDialog$1;
.super Ljava/lang/Object;
.source "PromptDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/dialogs/PromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/dialogs/PromptDialog;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/dialogs/PromptDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/dialogs/PromptDialog;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/vkcoffee/android/dialogs/PromptDialog$1;->this$0:Lcom/vkcoffee/android/dialogs/PromptDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 24
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog$1;->this$0:Lcom/vkcoffee/android/dialogs/PromptDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/dialogs/PromptDialog;->access$000(Lcom/vkcoffee/android/dialogs/PromptDialog;)Lcom/vkcoffee/android/dialogs/PromptDialog$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog$1;->this$0:Lcom/vkcoffee/android/dialogs/PromptDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/dialogs/PromptDialog;->access$100(Lcom/vkcoffee/android/dialogs/PromptDialog;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog$1;->this$0:Lcom/vkcoffee/android/dialogs/PromptDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/dialogs/PromptDialog;->access$000(Lcom/vkcoffee/android/dialogs/PromptDialog;)Lcom/vkcoffee/android/dialogs/PromptDialog$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/dialogs/PromptDialog$1;->this$0:Lcom/vkcoffee/android/dialogs/PromptDialog;

    invoke-static {v1}, Lcom/vkcoffee/android/dialogs/PromptDialog;->access$100(Lcom/vkcoffee/android/dialogs/PromptDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/dialogs/PromptDialog$Listener;->onFinish(Ljava/lang/CharSequence;)V

    .line 29
    :cond_0
    return-void
.end method

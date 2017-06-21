.class Lcom/vkcoffee/android/dialogs/PromptDialog$3;
.super Ljava/lang/Object;
.source "PromptDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/dialogs/PromptDialog;->create()Landroid/app/Dialog;
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
    .line 133
    iput-object p1, p0, Lcom/vkcoffee/android/dialogs/PromptDialog$3;->this$0:Lcom/vkcoffee/android/dialogs/PromptDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog$3;->this$0:Lcom/vkcoffee/android/dialogs/PromptDialog;

    iget-object v1, p0, Lcom/vkcoffee/android/dialogs/PromptDialog$3;->this$0:Lcom/vkcoffee/android/dialogs/PromptDialog;

    invoke-static {v1}, Lcom/vkcoffee/android/dialogs/PromptDialog;->access$400(Lcom/vkcoffee/android/dialogs/PromptDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/dialogs/PromptDialog;->access$302(Lcom/vkcoffee/android/dialogs/PromptDialog;Landroid/widget/Button;)Landroid/widget/Button;

    .line 137
    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog$3;->this$0:Lcom/vkcoffee/android/dialogs/PromptDialog;

    iget-object v1, p0, Lcom/vkcoffee/android/dialogs/PromptDialog$3;->this$0:Lcom/vkcoffee/android/dialogs/PromptDialog;

    invoke-static {v1}, Lcom/vkcoffee/android/dialogs/PromptDialog;->access$100(Lcom/vkcoffee/android/dialogs/PromptDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/dialogs/PromptDialog;->access$200(Lcom/vkcoffee/android/dialogs/PromptDialog;Landroid/text/Editable;)V

    .line 138
    return-void
.end method

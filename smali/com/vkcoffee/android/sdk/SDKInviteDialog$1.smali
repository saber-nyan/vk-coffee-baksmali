.class Lcom/vkcoffee/android/sdk/SDKInviteDialog$1;
.super Ljava/lang/Object;
.source "SDKInviteDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/sdk/SDKInviteDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$1;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 80
    iget-object v1, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$1;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    invoke-static {v1}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->access$000(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;

    move-result-object v0

    .line 81
    .local v0, "listener":Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 82
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 83
    iget-object v1, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$1;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->access$100(Lcom/vkcoffee/android/sdk/SDKInviteDialog;Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;)V

    .line 85
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 86
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 87
    iget-object v1, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$1;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    iget-object v2, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$1;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    invoke-static {v2}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->access$300(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->access$202(Lcom/vkcoffee/android/sdk/SDKInviteDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$1;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    invoke-static {v2}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->access$400(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$1;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    invoke-static {v3}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->access$500(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;->onInviteSent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 89
    :cond_1
    return-void
.end method

.class Lcom/vkcoffee/android/sdk/SDKInviteDialog$2;
.super Ljava/lang/Object;
.source "SDKInviteDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/sdk/SDKInviteDialog;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 190
    iput-object p1, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$2;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$2;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$2;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    invoke-static {v3}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->access$500(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->startActivity(Landroid/content/Intent;)V

    .line 194
    return-void
.end method

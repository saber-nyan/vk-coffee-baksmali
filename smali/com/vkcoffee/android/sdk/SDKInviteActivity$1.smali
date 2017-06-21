.class Lcom/vkcoffee/android/sdk/SDKInviteActivity$1;
.super Ljava/lang/Object;
.source "SDKInviteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/sdk/SDKInviteActivity;->showResendDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/sdk/SDKInviteActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/sdk/SDKInviteActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/sdk/SDKInviteActivity;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity$1;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 200
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity$1;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->access$000(Lcom/vkcoffee/android/sdk/SDKInviteActivity;)V

    .line 203
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 204
    return-void
.end method

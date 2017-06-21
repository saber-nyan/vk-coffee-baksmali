.class Lcom/vkcoffee/android/sdk/SDKInviteActivity$2;
.super Ljava/lang/Object;
.source "SDKInviteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/sdk/SDKInviteActivity;->showExitDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/sdk/SDKInviteActivity;

.field final synthetic val$mid:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/sdk/SDKInviteActivity;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/sdk/SDKInviteActivity;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity$2;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteActivity;

    iput p2, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity$2;->val$mid:I

    iput p3, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity$2;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 220
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 221
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 223
    .local v0, "result":Landroid/content/Intent;
    const-string/jumbo v1, "com.vkcoffee.android.sdk.extra_mid"

    iget v2, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity$2;->val$mid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const-string/jumbo v1, "com.vkcoffee.android.sdk.extra_user_id"

    iget v2, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity$2;->val$uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    iget-object v1, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity$2;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->setResult(ILandroid/content/Intent;)V

    .line 226
    iget-object v1, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity$2;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteActivity;

    invoke-virtual {v1}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->finish()V

    .line 228
    .end local v0    # "result":Landroid/content/Intent;
    :cond_0
    return-void
.end method

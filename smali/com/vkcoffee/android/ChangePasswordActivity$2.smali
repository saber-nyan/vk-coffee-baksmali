.class Lcom/vkcoffee/android/ChangePasswordActivity$2;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "ChangePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ChangePasswordActivity;->changePassword(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ChangePasswordActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ChangePasswordActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/vkcoffee/android/ChangePasswordActivity$2;->this$0:Lcom/vkcoffee/android/ChangePasswordActivity;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity$2;->this$0:Lcom/vkcoffee/android/ChangePasswordActivity;

    invoke-static {p0}, Lcom/vkcoffee/android/ChangePasswordActivity$2$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/ChangePasswordActivity$2;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ChangePasswordActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    goto :goto_0
.end method

.method synthetic lambda$fail$257()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity$2;->this$0:Lcom/vkcoffee/android/ChangePasswordActivity;

    const v1, 0x7f080320

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$success$256()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity$2;->this$0:Lcom/vkcoffee/android/ChangePasswordActivity;

    const v1, 0x7f080337

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 113
    iget-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity$2;->this$0:Lcom/vkcoffee/android/ChangePasswordActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ChangePasswordActivity;->finish()V

    .line 114
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;)V
    .locals 4
    .param p1, "result"    # Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;

    .prologue
    .line 110
    iget-object v0, p1, Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;->token:Ljava/lang/String;

    iget-object v1, p1, Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;->secret:Ljava/lang/String;

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/vkcoffee/android/Auth;->setData(Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 111
    iget-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity$2;->this$0:Lcom/vkcoffee/android/ChangePasswordActivity;

    invoke-static {p0}, Lcom/vkcoffee/android/ChangePasswordActivity$2$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ChangePasswordActivity$2;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ChangePasswordActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 107
    check-cast p1, Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ChangePasswordActivity$2;->success(Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;)V

    return-void
.end method

.class Lcom/vkcoffee/android/activities/RestoreActivity$3;
.super Ljava/lang/Object;
.source "RestoreActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/activities/RestoreActivity;->completeRestore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/activities/RestoreActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/activities/RestoreActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/activities/RestoreActivity;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 260
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v0

    .line 261
    .local v0, "errorCode":I
    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    invoke-static {p0, v0, p1}, Lcom/vkcoffee/android/activities/RestoreActivity$3$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/activities/RestoreActivity$3;ILcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/activities/RestoreActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method synthetic lambda$fail$181(ILcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3

    .prologue
    .line 265
    const/16 v0, 0x456

    if-ne p1, v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    const v2, 0x7f0804f0

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/activities/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/activities/RestoreActivity;->access$100(Lcom/vkcoffee/android/activities/RestoreActivity;Ljava/lang/String;)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    const/16 v0, 0x457

    if-eq p1, v0, :cond_0

    .line 269
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    const v2, 0x7f080162

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/activities/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/activities/RestoreActivity;->access$100(Lcom/vkcoffee/android/activities/RestoreActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_2
    const/16 v0, 0xf

    if-ne p1, v0, :cond_4

    .line 272
    iget-object v0, p2, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    const-string/jumbo v1, "change_password_hash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    const v2, 0x7f080166

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/activities/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/activities/RestoreActivity;->access$100(Lcom/vkcoffee/android/activities/RestoreActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    invoke-static {v0, p2}, Lcom/vkcoffee/android/activities/RestoreActivity;->access$300(Lcom/vkcoffee/android/activities/RestoreActivity;Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    goto :goto_0

    .line 277
    :cond_4
    const/16 v0, 0x64

    if-ne p1, v0, :cond_6

    .line 278
    iget-object v0, p2, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    const-string/jumbo v1, "compromised"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 279
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    const v2, 0x7f08016b

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/activities/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/activities/RestoreActivity;->access$100(Lcom/vkcoffee/android/activities/RestoreActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_5
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    invoke-static {v0, p2}, Lcom/vkcoffee/android/activities/RestoreActivity;->access$300(Lcom/vkcoffee/android/activities/RestoreActivity;Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    goto :goto_0

    .line 284
    :cond_6
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    invoke-static {v0, p2}, Lcom/vkcoffee/android/activities/RestoreActivity;->access$300(Lcom/vkcoffee/android/activities/RestoreActivity;Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    goto :goto_0
.end method

.method public success(Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;)V
    .locals 4
    .param p1, "result"    # Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;

    .prologue
    const/4 v3, 0x1

    .line 252
    iget-object v0, p1, Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;->token:Ljava/lang/String;

    iget-object v1, p1, Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;->secret:Ljava/lang/String;

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    invoke-static {v0, v1, v2, v3}, Lcom/vkcoffee/android/Auth;->setData(Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 253
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    invoke-static {v0, v3}, Lcom/vkcoffee/android/activities/RestoreActivity;->access$402(Lcom/vkcoffee/android/activities/RestoreActivity;Z)Z

    .line 254
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/activities/RestoreActivity;->setResult(I)V

    .line 255
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/activities/RestoreActivity;->finish()V

    .line 256
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 249
    check-cast p1, Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/activities/RestoreActivity$3;->success(Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;)V

    return-void
.end method

.class Lcom/vkcoffee/android/activities/SignupActivity$3;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/activities/SignupActivity;->requestCode(Ljava/lang/String;ZLjava/lang/Runnable;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/activities/SignupActivity;

.field final synthetic val$runAfter:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/activities/SignupActivity;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/activities/SignupActivity;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/vkcoffee/android/activities/SignupActivity$3;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/activities/SignupActivity$3;->val$runAfter:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 4
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v0

    .line 226
    .local v0, "errorCode":I
    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 229
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity$3;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/SignupActivity$3;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    const v3, 0x7f080162

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/activities/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/SignupActivity;->access$200(Lcom/vkcoffee/android/activities/SignupActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_1
    const/16 v1, 0x3ec

    if-ne v0, v1, :cond_2

    .line 232
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/SignupActivity$3;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080165

    .line 233
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080503

    .line 234
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0804ea

    new-instance v3, Lcom/vkcoffee/android/activities/SignupActivity$3$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/activities/SignupActivity$3$1;-><init>(Lcom/vkcoffee/android/activities/SignupActivity$3;)V

    .line 235
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08031e

    const/4 v3, 0x0

    .line 243
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 244
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 245
    :cond_2
    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0x458

    if-ne v0, v1, :cond_4

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity$3;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/SignupActivity$3;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    const v3, 0x7f0804f8

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/activities/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/SignupActivity;->access$200(Lcom/vkcoffee/android/activities/SignupActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_4
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_5

    .line 248
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity$3;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/SignupActivity$3;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    const v3, 0x7f0804fb

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/activities/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/SignupActivity;->access$200(Lcom/vkcoffee/android/activities/SignupActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_5
    const/16 v1, 0x64

    if-ne v0, v1, :cond_9

    .line 250
    iget-object v1, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    const-string/jumbo v2, "first_name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    const-string/jumbo v2, "last_name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 251
    :cond_6
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity$3;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/SignupActivity$3;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    const v3, 0x7f0804fa

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/activities/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/SignupActivity;->access$200(Lcom/vkcoffee/android/activities/SignupActivity;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity$3;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/SignupActivity;->access$000(Lcom/vkcoffee/android/activities/SignupActivity;I)V

    goto/16 :goto_0

    .line 253
    :cond_7
    iget-object v1, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 254
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity$3;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/SignupActivity$3;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    const v3, 0x7f0804fc

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/activities/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/SignupActivity;->access$200(Lcom/vkcoffee/android/activities/SignupActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 256
    :cond_8
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity$3;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    invoke-static {v1, p1}, Lcom/vkcoffee/android/activities/SignupActivity;->access$400(Lcom/vkcoffee/android/activities/SignupActivity;Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    goto/16 :goto_0

    .line 259
    :cond_9
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity$3;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    invoke-static {v1, p1}, Lcom/vkcoffee/android/activities/SignupActivity;->access$400(Lcom/vkcoffee/android/activities/SignupActivity;Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 214
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/activities/SignupActivity$3;->success(Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 1
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/vkcoffee/android/activities/SignupActivity$3;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/activities/SignupActivity;->access$102(Lcom/vkcoffee/android/activities/SignupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/vkcoffee/android/activities/SignupActivity$3;->val$runAfter:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/vkcoffee/android/activities/SignupActivity$3;->val$runAfter:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 221
    :cond_0
    return-void
.end method

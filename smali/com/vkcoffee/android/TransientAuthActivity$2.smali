.class Lcom/vkcoffee/android/TransientAuthActivity$2;
.super Ljava/lang/Object;
.source "TransientAuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/TransientAuthActivity;->authDone(ILjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/TransientAuthActivity;

.field final synthetic val$extra:Ljava/util/HashMap;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/TransientAuthActivity;ILjava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/TransientAuthActivity;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    iput p2, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->val$result:I

    iput-object p3, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->val$extra:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 172
    iget v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->val$result:I

    sget v8, Lcom/vkcoffee/android/Auth;->REAUTH_PROCESSING:I

    if-ne v7, v8, :cond_1

    .line 173
    iget-object v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    invoke-static {v7}, Lcom/vkcoffee/android/TransientAuthActivity;->access$100(Lcom/vkcoffee/android/TransientAuthActivity;)V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    invoke-static {v7}, Lcom/vkcoffee/android/TransientAuthActivity;->access$200(Lcom/vkcoffee/android/TransientAuthActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-static {v7}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 177
    iget v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->val$result:I

    sget v8, Lcom/vkcoffee/android/Auth;->REAUTH_CANCELED:I

    if-eq v7, v8, :cond_0

    .line 178
    iget v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->val$result:I

    sget v8, Lcom/vkcoffee/android/Auth;->REAUTH_OPEN_BROWSER:I

    if-ne v7, v8, :cond_5

    .line 179
    iget-object v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->val$extra:Ljava/util/HashMap;

    const-string/jumbo v8, "type"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 180
    .local v6, "type":Ljava/lang/String;
    const-string/jumbo v7, "phone"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 181
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    const-class v8, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "sid"

    iget-object v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->val$extra:Ljava/util/HashMap;

    const-string/jumbo v9, "sid"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string/jumbo v8, "name"

    iget-object v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->val$extra:Ljava/util/HashMap;

    const-string/jumbo v9, "ext_user_name"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string/jumbo v8, "photo"

    iget-object v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->val$extra:Ljava/util/HashMap;

    const-string/jumbo v9, "ext_user_photo"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string/jumbo v7, "result_intent"

    iget-object v8, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    invoke-virtual {v8}, Lcom/vkcoffee/android/TransientAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 186
    iget-object v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    const/16 v8, 0xcb

    invoke-virtual {v7, v3, v8}, Lcom/vkcoffee/android/TransientAuthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 188
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v7, "2fa_app"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "2fa_sms"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 189
    :cond_3
    iget-object v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    iget-object v8, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    iget-object v9, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->val$extra:Ljava/util/HashMap;

    invoke-static {v8, v9}, Lcom/vkcoffee/android/TransientAuthActivity;->access$302(Lcom/vkcoffee/android/TransientAuthActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkcoffee/android/TransientAuthActivity;->access$400(Lcom/vkcoffee/android/TransientAuthActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 191
    :cond_4
    iget-object v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->val$extra:Ljava/util/HashMap;

    const-string/jumbo v8, "url"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 192
    iget-object v8, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    iget-object v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->val$extra:Ljava/util/HashMap;

    const-string/jumbo v9, "url"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/vkcoffee/android/TransientAuthActivity;->access$500(Lcom/vkcoffee/android/TransientAuthActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    .end local v6    # "type":Ljava/lang/String;
    :cond_5
    iget v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->val$result:I

    sget v8, Lcom/vkcoffee/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    if-ne v7, v8, :cond_9

    .line 202
    iget-object v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->val$extra:Ljava/util/HashMap;

    const-string/jumbo v8, "error_message"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 203
    .local v2, "extraMessage":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 204
    iget-object v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    invoke-virtual {v7}, Lcom/vkcoffee/android/TransientAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08009a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 211
    .end local v2    # "extraMessage":Ljava/lang/String;
    .local v4, "msg":Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    .line 212
    .local v0, "_onDismiss":Ljava/lang/Runnable;
    iget v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->val$result:I

    sget v8, Lcom/vkcoffee/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    if-ne v7, v8, :cond_7

    .line 214
    sget-object v7, Lcom/vkcoffee/android/Auth;->lastError:Ljava/lang/String;

    const-string/jumbo v8, "code is invalid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    sget-object v7, Lcom/vkcoffee/android/Auth;->lastError:Ljava/lang/String;

    const-string/jumbo v8, "wrong code"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 215
    :cond_6
    iget-object v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    const v8, 0x7f0800a1

    invoke-virtual {v7, v8}, Lcom/vkcoffee/android/TransientAuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 216
    new-instance v0, Lcom/vkcoffee/android/TransientAuthActivity$2$1;

    .end local v0    # "_onDismiss":Ljava/lang/Runnable;
    invoke-direct {v0, p0}, Lcom/vkcoffee/android/TransientAuthActivity$2$1;-><init>(Lcom/vkcoffee/android/TransientAuthActivity$2;)V

    .line 230
    .restart local v0    # "_onDismiss":Ljava/lang/Runnable;
    :cond_7
    :goto_2
    move-object v5, v0

    .line 231
    .local v5, "onDismiss":Ljava/lang/Runnable;
    new-instance v7, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v8, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    invoke-direct {v7, v8}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 232
    invoke-virtual {v7, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f08009c

    .line 233
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f08031e

    const/4 v9, 0x0

    .line 234
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 235
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 236
    .local v1, "dlg":Landroid/app/AlertDialog;
    new-instance v7, Lcom/vkcoffee/android/TransientAuthActivity$2$2;

    invoke-direct {v7, p0, v5}, Lcom/vkcoffee/android/TransientAuthActivity$2$2;-><init>(Lcom/vkcoffee/android/TransientAuthActivity$2;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 206
    .end local v0    # "_onDismiss":Ljava/lang/Runnable;
    .end local v1    # "dlg":Landroid/app/AlertDialog;
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "onDismiss":Ljava/lang/Runnable;
    .restart local v2    # "extraMessage":Ljava/lang/String;
    :cond_8
    move-object v4, v2

    .restart local v4    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 209
    .end local v2    # "extraMessage":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_9
    iget-object v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    invoke-virtual {v7}, Lcom/vkcoffee/android/TransientAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08009b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 224
    .restart local v0    # "_onDismiss":Ljava/lang/Runnable;
    :cond_a
    sget-object v7, Lcom/vkcoffee/android/Auth;->lastError:Ljava/lang/String;

    const-string/jumbo v8, "too"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Lcom/vkcoffee/android/Auth;->lastError:Ljava/lang/String;

    const-string/jumbo v8, "tries"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 225
    iget-object v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    const v8, 0x7f08009d

    invoke-virtual {v7, v8}, Lcom/vkcoffee/android/TransientAuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 226
    :cond_b
    sget-object v7, Lcom/vkcoffee/android/Auth;->lastError:Ljava/lang/String;

    const-string/jumbo v8, "email"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Lcom/vkcoffee/android/Auth;->lastError:Ljava/lang/String;

    const-string/jumbo v8, "registered"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 227
    iget-object v7, p0, Lcom/vkcoffee/android/TransientAuthActivity$2;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    const v8, 0x7f080172

    invoke-virtual {v7, v8}, Lcom/vkcoffee/android/TransientAuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

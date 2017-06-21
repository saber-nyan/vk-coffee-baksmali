.class Lcom/vkcoffee/android/activities/PhoneVerificationActivity$2;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "PhoneVerificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->requestCode(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/activities/PhoneVerificationActivity;

.field final synthetic val$runAfter:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/activities/PhoneVerificationActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$2;->this$0:Lcom/vkcoffee/android/activities/PhoneVerificationActivity;

    iput-object p3, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$2;->val$runAfter:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 4
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 191
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v0

    .line 192
    .local v0, "errorCode":I
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$2;->this$0:Lcom/vkcoffee/android/activities/PhoneVerificationActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$2;->this$0:Lcom/vkcoffee/android/activities/PhoneVerificationActivity;

    const v3, 0x7f080162

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->access$000(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_2
    const/16 v1, 0x3ec

    if-eq v0, v1, :cond_0

    .line 211
    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0x458

    if-ne v0, v1, :cond_4

    .line 212
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$2;->this$0:Lcom/vkcoffee/android/activities/PhoneVerificationActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$2;->this$0:Lcom/vkcoffee/android/activities/PhoneVerificationActivity;

    const v3, 0x7f0804f8

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->access$000(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_4
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_5

    .line 214
    iget-object v1, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$2;->this$0:Lcom/vkcoffee/android/activities/PhoneVerificationActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$2;->this$0:Lcom/vkcoffee/android/activities/PhoneVerificationActivity;

    const v3, 0x7f0804fb

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->access$000(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_5
    const/16 v1, 0x64

    if-ne v0, v1, :cond_9

    .line 216
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

    .line 217
    :cond_6
    iget-object v1, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$2;->this$0:Lcom/vkcoffee/android/activities/PhoneVerificationActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$2;->this$0:Lcom/vkcoffee/android/activities/PhoneVerificationActivity;

    const v3, 0x7f0804fa

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->access$000(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$2;->this$0:Lcom/vkcoffee/android/activities/PhoneVerificationActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->access$100(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;I)V

    goto :goto_0

    .line 219
    :cond_7
    iget-object v1, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 220
    iget-object v1, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$2;->this$0:Lcom/vkcoffee/android/activities/PhoneVerificationActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$2;->this$0:Lcom/vkcoffee/android/activities/PhoneVerificationActivity;

    const v3, 0x7f0804fc

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->access$000(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    :cond_8
    iget-object v1, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$2;->this$0:Lcom/vkcoffee/android/activities/PhoneVerificationActivity;

    invoke-static {v1, p1}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->access$200(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    goto/16 :goto_0

    .line 225
    :cond_9
    iget-object v1, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$2;->this$0:Lcom/vkcoffee/android/activities/PhoneVerificationActivity;

    invoke-static {v1, p1}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->access$200(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    goto/16 :goto_0
.end method

.method public success()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$2;->val$runAfter:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$2;->val$runAfter:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 187
    :cond_0
    return-void
.end method

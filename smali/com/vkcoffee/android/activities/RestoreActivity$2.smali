.class Lcom/vkcoffee/android/activities/RestoreActivity$2;
.super Ljava/lang/Object;
.source "RestoreActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/activities/RestoreActivity;->requestCode(Ljava/lang/String;ZLjava/lang/Runnable;)V
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
.field final synthetic this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

.field final synthetic val$runAfter:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/activities/RestoreActivity;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/activities/RestoreActivity;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->val$runAfter:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 4
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v0

    .line 165
    .local v0, "errorCode":I
    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 168
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    const v3, 0x7f080162

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/activities/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/RestoreActivity;->access$100(Lcom/vkcoffee/android/activities/RestoreActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_1
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0x458

    if-ne v0, v1, :cond_3

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    const v3, 0x7f0804f8

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/activities/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/RestoreActivity;->access$100(Lcom/vkcoffee/android/activities/RestoreActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_3
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_4

    .line 173
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    const v3, 0x7f0804fb

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/activities/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/RestoreActivity;->access$100(Lcom/vkcoffee/android/activities/RestoreActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_4
    const/16 v1, 0x64

    if-ne v0, v1, :cond_8

    .line 175
    iget-object v1, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    const-string/jumbo v2, "first_name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    const-string/jumbo v2, "last_name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 176
    :cond_5
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    const v3, 0x7f0804fa

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/activities/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/RestoreActivity;->access$100(Lcom/vkcoffee/android/activities/RestoreActivity;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/RestoreActivity;->access$200(Lcom/vkcoffee/android/activities/RestoreActivity;I)V

    goto :goto_0

    .line 178
    :cond_6
    iget-object v1, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 179
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    const v3, 0x7f0804fc

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/activities/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/RestoreActivity;->access$100(Lcom/vkcoffee/android/activities/RestoreActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :cond_7
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    invoke-static {v1, p1}, Lcom/vkcoffee/android/activities/RestoreActivity;->access$300(Lcom/vkcoffee/android/activities/RestoreActivity;Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    goto/16 :goto_0

    .line 183
    :cond_8
    const/16 v1, 0xf

    if-ne v0, v1, :cond_b

    .line 184
    iget-object v1, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    const-string/jumbo v2, "user not found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 185
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    const v3, 0x7f08016d

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/activities/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/RestoreActivity;->access$100(Lcom/vkcoffee/android/activities/RestoreActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :cond_9
    iget-object v1, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    const-string/jumbo v2, "not available"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 187
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    const v3, 0x7f08016a

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/activities/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/RestoreActivity;->access$100(Lcom/vkcoffee/android/activities/RestoreActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    :cond_a
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    invoke-static {v1, p1}, Lcom/vkcoffee/android/activities/RestoreActivity;->access$300(Lcom/vkcoffee/android/activities/RestoreActivity;Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    goto/16 :goto_0

    .line 192
    :cond_b
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    invoke-static {v1, p1}, Lcom/vkcoffee/android/activities/RestoreActivity;->access$300(Lcom/vkcoffee/android/activities/RestoreActivity;Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 153
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/activities/RestoreActivity$2;->success(Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 1
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->this$0:Lcom/vkcoffee/android/activities/RestoreActivity;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/activities/RestoreActivity;->access$002(Lcom/vkcoffee/android/activities/RestoreActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->val$runAfter:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity$2;->val$runAfter:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 160
    :cond_0
    return-void
.end method

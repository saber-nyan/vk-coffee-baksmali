.class Lcom/vkcoffee/android/activities/SignupActivity$5;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/activities/SignupActivity;->completeSignup()V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/activities/SignupActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/activities/SignupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/activities/SignupActivity;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/vkcoffee/android/activities/SignupActivity$5;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 4
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 312
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v0

    .line 313
    .local v0, "errorCode":I
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const/16 v1, 0x456

    if-ne v0, v1, :cond_2

    .line 317
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity$5;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/SignupActivity$5;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    const v3, 0x7f0804f0

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/activities/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/SignupActivity;->access$200(Lcom/vkcoffee/android/activities/SignupActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_2
    const/16 v1, 0x457

    if-eq v0, v1, :cond_0

    .line 320
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 321
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity$5;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/SignupActivity$5;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    const v3, 0x7f080162

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/activities/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/SignupActivity;->access$200(Lcom/vkcoffee/android/activities/SignupActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity$5;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    invoke-static {v1, p1}, Lcom/vkcoffee/android/activities/SignupActivity;->access$400(Lcom/vkcoffee/android/activities/SignupActivity;Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    goto :goto_0
.end method

.method public success(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/Integer;

    .prologue
    .line 304
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity$5;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    const-class v2, Lcom/vkcoffee/android/TransientAuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "login"

    iget-object v2, p0, Lcom/vkcoffee/android/activities/SignupActivity$5;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/activities/SignupActivity;->access$300(Lcom/vkcoffee/android/activities/SignupActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string/jumbo v1, "password"

    iget-object v2, p0, Lcom/vkcoffee/android/activities/SignupActivity$5;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/activities/SignupActivity;->access$600(Lcom/vkcoffee/android/activities/SignupActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity$5;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    const/16 v2, 0xcc

    invoke-virtual {v1, v0, v2}, Lcom/vkcoffee/android/activities/SignupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 308
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 301
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/activities/SignupActivity$5;->success(Ljava/lang/Integer;)V

    return-void
.end method

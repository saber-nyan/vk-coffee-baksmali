.class Lcom/vkcoffee/android/activities/SignupActivity$4;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/activities/SignupActivity;->verifyCode(Ljava/lang/String;)V
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

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/activities/SignupActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/activities/SignupActivity;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/vkcoffee/android/activities/SignupActivity$4;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/activities/SignupActivity$4;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 4
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 279
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v0

    .line 280
    .local v0, "errorCode":I
    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 293
    :goto_0
    return-void

    .line 283
    :cond_0
    const/16 v1, 0x456

    if-ne v0, v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity$4;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/SignupActivity$4;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    const v3, 0x7f0804f0

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/activities/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/SignupActivity;->access$200(Lcom/vkcoffee/android/activities/SignupActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    const/16 v1, 0x457

    if-ne v0, v1, :cond_2

    .line 286
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity$4;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/SignupActivity;->access$000(Lcom/vkcoffee/android/activities/SignupActivity;I)V

    .line 287
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity$4;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/SignupActivity$4;->val$code:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/SignupActivity;->access$502(Lcom/vkcoffee/android/activities/SignupActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 288
    :cond_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 289
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity$4;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/SignupActivity$4;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    const v3, 0x7f080162

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/activities/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/activities/SignupActivity;->access$200(Lcom/vkcoffee/android/activities/SignupActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity$4;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    invoke-static {v1, p1}, Lcom/vkcoffee/android/activities/SignupActivity;->access$400(Lcom/vkcoffee/android/activities/SignupActivity;Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    goto :goto_0
.end method

.method public success(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/Integer;

    .prologue
    .line 275
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 272
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/activities/SignupActivity$4;->success(Ljava/lang/Integer;)V

    return-void
.end method

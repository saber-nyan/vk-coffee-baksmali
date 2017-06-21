.class Lcom/vkcoffee/android/fragments/GameCardFragment$5;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "GameCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/GameCardFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/GameCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$5;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 176
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$5;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 177
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCode()I

    move-result v1

    iget-object v2, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/api/APIUtils;->showErrorToast(Landroid/content/Context;ILjava/lang/String;)V

    .line 180
    :cond_0
    return-void
.end method

.method public success(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 167
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$5;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 168
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$5;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080274

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 171
    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 164
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/GameCardFragment$5;->success(Ljava/lang/Integer;)V

    return-void
.end method

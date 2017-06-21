.class Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$3;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "SuggestionsFriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 716
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$3;->this$1:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "err"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 740
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$3;->this$1:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$300(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 742
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$3;->this$1:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080165

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 743
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 716
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$3;->success(Ljava/util/List;)V

    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 719
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$3;->this$1:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$3;->this$1:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$300(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 722
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$3;->this$1:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$3$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$3$1;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$3;->this$1:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$3;->this$1:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->val$acc:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string/jumbo v2, "email"

    invoke-static {v0, p1, v1, v2}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$1000(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

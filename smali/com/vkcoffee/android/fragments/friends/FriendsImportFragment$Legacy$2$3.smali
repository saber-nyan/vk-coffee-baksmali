.class Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "FriendsImportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;->run()V
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
.field final synthetic this$2:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$2"    # Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 844
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3;->this$2:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "err"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 868
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

    .line 869
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3;->this$2:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;->this$1:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;->progress:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 870
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3;->this$2:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;->this$1:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080165

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 871
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 844
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3;->success(Ljava/util/List;)V

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
    .line 847
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3;->this$2:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;->this$1:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3;->this$2:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;->this$1:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;->progress:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 850
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3;->this$2:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;->this$1:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3$1;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3;->this$2:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;->this$1:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3;->this$2:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;->val$acc:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string/jumbo v2, "email"

    invoke-virtual {v0, p1, v1, v2}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;->doImport(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->loadData()V
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$102(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/vkcoffee/android/api/VKAPIRequest;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 184
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$300(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 188
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCode()I

    move-result v1

    iget-object v2, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 170
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;->success(Ljava/util/ArrayList;)V

    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "_users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$102(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/vkcoffee/android/api/VKAPIRequest;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 174
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 175
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 176
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$200(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V

    .line 177
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->updateList()V

    .line 178
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$300(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 179
    return-void
.end method

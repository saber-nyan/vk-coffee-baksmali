.class Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$9;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->startImportFacebook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    .prologue
    .line 757
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$1202(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/facebook/CallbackManager;)Lcom/facebook/CallbackManager;

    .line 770
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3
    .param p1, "e"    # Lcom/facebook/FacebookException;

    .prologue
    .line 774
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$1202(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/facebook/CallbackManager;)Lcom/facebook/CallbackManager;

    .line 775
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080165

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 776
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 2
    .param p1, "loginResult"    # Lcom/facebook/login/LoginResult;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$1202(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/facebook/CallbackManager;)Lcom/facebook/CallbackManager;

    .line 762
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$1300(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/facebook/AccessToken;)V

    .line 765
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 757
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$9;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method

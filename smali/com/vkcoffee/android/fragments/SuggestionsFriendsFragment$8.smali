.class Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->importGmail(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

.field final synthetic val$acc:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Landroid/accounts/Account;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->val$acc:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 675
    const/4 v4, 0x0

    .line 677
    .local v4, "token":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->val$acc:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string/jumbo v7, "oauth2:https://www.google.com/m8/feeds"

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 713
    :goto_0
    if-eqz v4, :cond_0

    .line 715
    new-instance v5, Lcom/vkcoffee/android/api/external/GmailGetContacts;

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->val$acc:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Lcom/vkcoffee/android/api/external/GmailGetContacts;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$3;

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    .line 716
    invoke-virtual {v7}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$3;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/api/external/GmailGetContacts;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    .line 745
    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 747
    :cond_0
    :goto_1
    return-void

    .line 684
    :catch_0
    move-exception v2

    .line 685
    .local v2, "recoverableException":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    const-string/jumbo v5, "vk"

    invoke-static {v5, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 686
    invoke-virtual {v2}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 688
    .local v3, "recoveryIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    const/16 v6, 0x67

    invoke-virtual {v5, v3, v6}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 689
    .end local v2    # "recoverableException":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    .end local v3    # "recoveryIntent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 691
    .local v0, "authEx":Lcom/google/android/gms/auth/GoogleAuthException;
    const-string/jumbo v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unrecoverable authentication exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/auth/GoogleAuthException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 692
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 693
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$1;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$1;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 699
    :cond_1
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$300(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-static {v5}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    goto :goto_1

    .line 701
    .end local v0    # "authEx":Lcom/google/android/gms/auth/GoogleAuthException;
    :catch_2
    move-exception v1

    .line 702
    .local v1, "ioEx":Ljava/io/IOException;
    const-string/jumbo v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "transient error encountered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 704
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$2;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$2;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 710
    :cond_2
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$300(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-static {v5}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    goto/16 :goto_1

    .line 678
    .end local v1    # "ioEx":Ljava/io/IOException;
    :catch_3
    move-exception v5

    goto/16 :goto_0
.end method

.class Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "SuggestionsFriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->doImport(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

.field final synthetic val$service:Ljava/lang/String;

.field final synthetic val$usrs:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Landroid/app/Fragment;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->val$usrs:Ljava/util/List;

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->val$service:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$300(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 535
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 536
    const-string/jumbo v0, "phone"

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->val$service:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$802(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Z)Z

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$200(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V

    .line 540
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;)V
    .locals 12
    .param p1, "r"    # Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;

    .prologue
    .line 458
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p1, Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;->other:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 459
    iget-object v9, p1, Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;->other:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/UserProfile;

    iget-object v9, v9, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v10, "external_id"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, "id":Ljava/lang/String;
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->val$usrs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/UserProfile;

    .line 461
    .local v5, "p":Lcom/vkcoffee/android/UserProfile;
    iget-object v10, v5, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 462
    iget-object v9, p1, Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;->other:Ljava/util/ArrayList;

    invoke-virtual {v9, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 458
    .end local v5    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 467
    .end local v3    # "id":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v9}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$300(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-static {v9}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 468
    const/4 v6, -0x1

    .line 469
    .local v6, "srv":I
    const-string/jumbo v7, ""

    .line 470
    .local v7, "title":Ljava/lang/String;
    const-string/jumbo v9, "phone"

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->val$service:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 471
    const/4 v6, 0x0

    .line 472
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    const v10, 0x7f080522

    invoke-virtual {v9, v10}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 483
    :cond_3
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v4, "notFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v1, "foundExternalIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p1, Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;->found:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/UserProfile;

    .line 486
    .restart local v5    # "p":Lcom/vkcoffee/android/UserProfile;
    iget-object v10, v5, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v11, "external_id"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 473
    .end local v1    # "foundExternalIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "notFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v5    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_4
    const-string/jumbo v9, "google"

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->val$service:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 474
    const/4 v6, 0x1

    .line 475
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    const v10, 0x7f08052a

    invoke-virtual {v9, v10}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 476
    :cond_5
    const-string/jumbo v9, "facebook"

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->val$service:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 477
    const/4 v6, 0x2

    .line 478
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    const v10, 0x7f080526

    invoke-virtual {v9, v10}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 479
    :cond_6
    const-string/jumbo v9, "email"

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->val$service:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 480
    const/4 v6, 0x3

    .line 481
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    const v10, 0x7f080528

    invoke-virtual {v9, v10}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 488
    .restart local v1    # "foundExternalIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "notFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_7
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->val$usrs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/UserProfile;

    .line 489
    .restart local v5    # "p":Lcom/vkcoffee/android/UserProfile;
    iget-object v10, v5, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v11, "external_id"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 490
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 493
    .end local v5    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/UserProfile;

    .line 494
    .restart local v5    # "p":Lcom/vkcoffee/android/UserProfile;
    iget-object v10, v5, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    if-nez v10, :cond_a

    .line 495
    iget-object v10, v5, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v11, "external_id"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    goto :goto_4

    .line 498
    .end local v5    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_b
    new-instance v9, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6$1;

    invoke-direct {v9, p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6$1;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;)V

    invoke-static {v4, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 504
    iget-object v9, p1, Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;->found:Ljava/util/ArrayList;

    invoke-static {v6, v9, v4}, Lcom/vkcoffee/android/data/Friends;->saveImportedContacts(ILjava/util/List;Ljava/util/List;)V

    .line 505
    const-string/jumbo v9, "phone"

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->val$service:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v9}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "from_signup"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 506
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    iget-object v9, v9, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 507
    iget-object v9, p1, Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;->found:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/UserProfile;

    .line 508
    .local v8, "user":Lcom/vkcoffee/android/UserProfile;
    iget-boolean v10, v8, Lcom/vkcoffee/android/UserProfile;->isFriend:Z

    if-nez v10, :cond_c

    .line 509
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    iget-object v10, v10, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 512
    .end local v8    # "user":Lcom/vkcoffee/android/UserProfile;
    :cond_d
    iget-object v9, p1, Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;->found:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_e
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/UserProfile;

    .line 513
    .restart local v8    # "user":Lcom/vkcoffee/android/UserProfile;
    iget-boolean v10, v8, Lcom/vkcoffee/android/UserProfile;->isFriend:Z

    if-eqz v10, :cond_e

    .line 514
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    iget-object v10, v10, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 517
    .end local v8    # "user":Lcom/vkcoffee/android/UserProfile;
    :cond_f
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v9}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->updateList()V

    .line 518
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$802(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Z)Z

    .line 519
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v9}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$200(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V

    .line 530
    :goto_7
    return-void

    .line 521
    :cond_10
    iget-object v9, p1, Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;->found:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_11

    iget-object v9, p1, Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;->other:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_11

    if-eqz v6, :cond_11

    const/4 v9, 0x3

    if-eq v6, v9, :cond_11

    .line 522
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v9}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f080304

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 525
    :cond_11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 526
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v9, "service"

    invoke-virtual {v0, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 527
    const-string/jumbo v9, "title"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-class v9, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v10}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v9, v0, v10}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_7
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 454
    check-cast p1, Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->success(Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;)V

    return-void
.end method

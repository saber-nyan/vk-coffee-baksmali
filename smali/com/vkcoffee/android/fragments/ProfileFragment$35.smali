.class Lcom/vkcoffee/android/fragments/ProfileFragment$35;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->doRemoveFriend()V
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
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 5478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3

    .prologue
    .line 5499
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080165

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080162

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08031e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5500
    return-void
.end method

.method public success(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 5480
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    if-ne v0, v2, :cond_0

    .line 5481
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->decreaseRequests()V

    .line 5483
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 5484
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    iput v2, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    .line 5485
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-boolean v0, v0, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v0, :cond_3

    const v0, 0x7f08018e

    :goto_0
    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v5, v5, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v5, v5, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5487
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    if-ne v0, v6, :cond_2

    .line 5488
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    iput v7, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    .line 5489
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->canSendFriendRequest:Z

    if-eqz v0, :cond_2

    .line 5490
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080195

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v5, v5, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v5, v5, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5493
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$37(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    .line 5494
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v0

    invoke-static {v0}, Lcom/vkcoffee/android/data/Friends;->removeLocally(I)V

    .line 5495
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v1

    iget v1, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    invoke-static {v0, v1}, Lcom/vkcoffee/android/data/Friends;->notifyFriendStatusChanged(II)V

    .line 5496
    return-void

    .line 5485
    :cond_3
    const v0, 0x7f08018f

    goto/16 :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$35;->success(Ljava/lang/Integer;)V

    return-void
.end method

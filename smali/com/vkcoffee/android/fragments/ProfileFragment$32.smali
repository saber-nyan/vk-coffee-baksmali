.class Lcom/vkcoffee/android/fragments/ProfileFragment$32;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->doAddFriend(Ljava/lang/String;)V
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

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->val$msg:Ljava/lang/String;

    .line 5385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/ProfileFragment$32;)Lcom/vkcoffee/android/fragments/ProfileFragment;
    .locals 1

    .prologue
    .line 5385
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    return-object v0
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 9

    .prologue
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    const v8, 0x7f08031e

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const v2, 0x7f080165

    .line 5415
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v0

    const/16 v1, 0xaf

    if-ne v0, v1, :cond_1

    .line 5416
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-boolean v0, v0, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v0, :cond_0

    const v0, 0x7f080053

    :goto_0
    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/vkcoffee/android/api/ExtendedUserProfile;->firstNameDat:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/vkcoffee/android/api/ExtendedUserProfile;->lastNameDat:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5432
    :goto_1
    return-void

    .line 5416
    :cond_0
    const v0, 0x7f080054

    goto :goto_0

    .line 5417
    :cond_1
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v0

    const/16 v1, 0xb0

    if-ne v0, v1, :cond_3

    .line 5418
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-boolean v0, v0, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v0, :cond_2

    const v0, 0x7f080051

    :goto_2
    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/vkcoffee/android/api/ExtendedUserProfile;->firstNameAcc:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/vkcoffee/android/api/ExtendedUserProfile;->lastNameAcc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080558

    new-instance v2, Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->val$msg:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment$32;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 5428
    const v1, 0x7f0800b7

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 5418
    :cond_2
    const v0, 0x7f080052

    goto :goto_2

    .line 5430
    :cond_3
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/vkcoffee/android/AppStateTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    :goto_3
    invoke-direct {v1, v0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08015f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_3
.end method

.method public success(Ljava/lang/Integer;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x1

    .line 5387
    const/4 v0, 0x0

    .line 5388
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 5389
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->canSendFriendRequest:Z

    if-eqz v1, :cond_0

    .line 5390
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-boolean v1, v1, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v1, :cond_6

    const v1, 0x7f080059

    :goto_0
    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v5, v5, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5392
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v1

    iput v6, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    .line 5394
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 5395
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5396
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    .line 5397
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    invoke-static {v1}, Lcom/vkcoffee/android/data/Friends;->addLocally(Lcom/vkcoffee/android/UserProfile;)V

    .line 5398
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->decreaseRequests()V

    .line 5400
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 5401
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5402
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v1

    iput v6, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    .line 5404
    :cond_3
    if-eqz v0, :cond_4

    .line 5405
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5407
    :cond_4
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$37(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    .line 5408
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "from_post"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5409
    const-string v1, "subscription_from_post"

    invoke-static {v1}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->collapse()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->unique()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string v2, "post_ids"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "from_post"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->flushBuffer()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 5411
    :cond_5
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    invoke-static {v1, v2}, Lcom/vkcoffee/android/data/Friends;->notifyFriendStatusChanged(II)V

    .line 5412
    return-void

    .line 5390
    :cond_6
    const v1, 0x7f08005a

    goto/16 :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->success(Ljava/lang/Integer;)V

    return-void
.end method

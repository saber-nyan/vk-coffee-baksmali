.class Lcom/vkcoffee/android/fragments/ProfileFragment$33;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->joinGroup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field private final synthetic val$sure:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/content/Context;Z)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$33;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iput-boolean p3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$33;->val$sure:Z

    .line 5437
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3

    .prologue
    .line 5460
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$33;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080165

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    const v0, 0x7f08032e

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08031e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5461
    return-void

    .line 5460
    :cond_0
    const v0, 0x7f080162

    goto :goto_0
.end method

.method public success()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 5439
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$33;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "from_post"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5440
    const-string v2, "subscription_from_post"

    invoke-static {v2}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->collapse()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->unique()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    const-string v3, "post_ids"

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$33;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "from_post"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->flushBuffer()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 5442
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$33;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    if-ne v2, v6, :cond_1

    .line 5443
    invoke-static {}, Lcom/vkcoffee/android/data/Groups;->decreaseInvites()V

    .line 5445
    :cond_1
    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$33;->val$sure:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 5446
    .local v1, "joinedStatus":I
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$33;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/api/ExtendedUserProfile;->groupAccess:I

    if-eqz v2, :cond_4

    .line 5447
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$33;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    .line 5448
    .local v0, "access$400":Lcom/vkcoffee/android/api/ExtendedUserProfile;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$33;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    if-eq v2, v6, :cond_2

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$33;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/api/ExtendedUserProfile;->adminLevel:I

    if-gtz v2, :cond_2

    .line 5449
    const/4 v1, 0x4

    .line 5451
    :cond_2
    iput v1, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    .line 5455
    .end local v0    # "access$400":Lcom/vkcoffee/android/api/ExtendedUserProfile;
    :goto_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$33;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$33;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v3

    iget v3, v3, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    invoke-static {v2, v3}, Lcom/vkcoffee/android/data/Groups;->notifyGroupStatusChanged(II)V

    .line 5456
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$33;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    .line 5457
    return-void

    .line 5445
    .end local v1    # "joinedStatus":I
    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    .line 5453
    .restart local v1    # "joinedStatus":I
    :cond_4
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$33;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v2

    iput v1, v2, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    goto :goto_1
.end method

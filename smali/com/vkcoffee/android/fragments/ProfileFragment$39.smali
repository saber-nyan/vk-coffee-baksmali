.class Lcom/vkcoffee/android/fragments/ProfileFragment$39;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->doLeaveGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$39;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 5596
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3

    .prologue
    .line 5607
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$39;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

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

    .line 5608
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 5598
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$39;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 5599
    invoke-static {}, Lcom/vkcoffee/android/data/Groups;->decreaseInvites()V

    .line 5601
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$39;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    .line 5602
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$39;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$39;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v1

    iget v1, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    invoke-static {v0, v1}, Lcom/vkcoffee/android/data/Groups;->notifyGroupStatusChanged(II)V

    .line 5603
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$39;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    .line 5604
    return-void
.end method

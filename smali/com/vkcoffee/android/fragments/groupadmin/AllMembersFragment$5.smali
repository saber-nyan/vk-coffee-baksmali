.class Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$5;
.super Ljava/lang/Object;
.source "AllMembersFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->removeFromGroup(Lcom/vkcoffee/android/UserProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

.field final synthetic val$user:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;Lcom/vkcoffee/android/UserProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$5;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$5;->val$user:Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 224
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsRemoveUser;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$5;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$5;->val$user:Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/groups/GroupsRemoveUser;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$5$1;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$5;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    .line 225
    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$5$1;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$5;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsRemoveUser;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$5;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    .line 232
    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$5;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    .line 233
    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 234
    return-void
.end method

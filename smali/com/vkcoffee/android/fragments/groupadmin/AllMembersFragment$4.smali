.class Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4;
.super Ljava/lang/Object;
.source "AllMembersFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->removeManager(Lcom/vkcoffee/android/UserProfile;)V
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
    .line 197
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4;->val$user:Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 200
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsEditManager;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4;->val$user:Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    const/4 v4, 0x0

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/api/groups/GroupsEditManager;-><init>(IILjava/lang/String;ZLjava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4$1;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    .line 201
    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4$1;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsEditManager;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    .line 209
    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    .line 210
    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 211
    return-void
.end method

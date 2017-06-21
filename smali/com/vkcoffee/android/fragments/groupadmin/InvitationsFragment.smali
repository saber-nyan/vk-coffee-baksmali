.class public Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment;
.super Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;
.source "InvitationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment$Holder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;-><init>()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 42
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsGetInvitedUsers;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lcom/vkcoffee/android/api/groups/GroupsGetInvitedUsers;-><init>(III)V

    new-instance v1, Lcom/vkcoffee/android/api/SimpleListCallback;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/api/SimpleListCallback;-><init>(Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetInvitedUsers;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 45
    return-void
.end method

.method protected getHolder(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/UserHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/vkcoffee/android/ui/holder/UserHolder",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment$Holder;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment$Holder;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;->onAttach(Landroid/content/Context;)V

    .line 23
    const v0, 0x7f080260

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment;->setTitle(I)V

    .line 24
    return-void
.end method

.method public onItemButtonClick(Landroid/view/View;Lcom/vkcoffee/android/UserProfile;)V
    .locals 3
    .param p1, "button"    # Landroid/view/View;
    .param p2, "user"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 28
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsRemoveUser;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/groups/GroupsRemoveUser;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment$1;

    .line 29
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2}, Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment$1;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment;Landroid/content/Context;Lcom/vkcoffee/android/UserProfile;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsRemoveUser;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 38
    return-void
.end method

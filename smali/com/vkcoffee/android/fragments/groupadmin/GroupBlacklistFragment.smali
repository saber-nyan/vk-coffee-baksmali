.class public Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;
.super Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;
.source "GroupBlacklistFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$Holder;
    }
.end annotation


# instance fields
.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;-><init>()V

    .line 30
    new-instance v0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$1;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 108
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsGetBanned;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lcom/vkcoffee/android/api/groups/GroupsGetBanned;-><init>(III)V

    new-instance v1, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$2;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$2;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    .line 109
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetBanned;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 124
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
    .line 128
    new-instance v0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$Holder;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$Holder;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;->onAttach(Landroid/app/Activity;)V

    .line 94
    const v0, 0x7f080217

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->setEmptyText(I)V

    .line 95
    const v0, 0x7f080216

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->setTitle(I)V

    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/vkcoffee/android/data/GroupsAdmin;->ACTION_BAN_ADDED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    sget-object v1, Lcom/vkcoffee/android/data/GroupsAdmin;->ACTION_BAN_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/vkcoffee/android/data/GroupsAdmin;->ACTION_BAN_REMOVED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 83
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;->onDestroy()V

    .line 88
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    return-void
.end method

.method public onItemButtonClick(Landroid/view/View;Lcom/vkcoffee/android/UserProfile;)V
    .locals 4
    .param p1, "button"    # Landroid/view/View;
    .param p2, "user"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "id"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string/jumbo v1, "profile"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 103
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->open(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 104
    return-void
.end method

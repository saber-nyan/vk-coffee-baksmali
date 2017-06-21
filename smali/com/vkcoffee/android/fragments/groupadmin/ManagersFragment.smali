.class public Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;
.super Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;
.source "ManagersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$Holder;
    }
.end annotation


# instance fields
.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;-><init>()V

    .line 26
    new-instance v0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$1;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 98
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsGetManagers;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lcom/vkcoffee/android/api/groups/GroupsGetManagers;-><init>(III)V

    new-instance v1, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$2;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$2;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    .line 99
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetManagers;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 125
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
    .line 129
    new-instance v0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$Holder;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$Holder;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/vkcoffee/android/data/GroupsAdmin;->ACTION_ADMIN_ADDED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    sget-object v1, Lcom/vkcoffee/android/data/GroupsAdmin;->ACTION_ADMIN_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    sget-object v1, Lcom/vkcoffee/android/data/GroupsAdmin;->ACTION_ADMIN_REMOVED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 79
    const v1, 0x7f080244

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->setTitle(I)V

    .line 80
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;->onDestroy()V

    .line 85
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    return-void
.end method

.method public onItemButtonClick(Landroid/view/View;Lcom/vkcoffee/android/UserProfile;)V
    .locals 4
    .param p1, "button"    # Landroid/view/View;
    .param p2, "user"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "id"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string/jumbo v1, "profile"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 93
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->open(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 94
    return-void
.end method

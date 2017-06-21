.class public Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;
.super Lcom/vkcoffee/android/fragments/base/GridFragment;
.source "GroupInvitesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/GridFragment",
        "<",
        "Lcom/vkcoffee/android/api/GroupInvitation;",
        ">;"
    }
.end annotation


# instance fields
.field private mAcceptListener:Lcom/vkcoffee/android/functions/VoidF2Int;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF2Int",
            "<",
            "Lcom/vkcoffee/android/api/GroupInvitation;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupListener:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/base/GridFragment;-><init>(I)V

    .line 39
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->mGroupListener:Lcom/vkcoffee/android/functions/VoidF1;

    .line 40
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)Lcom/vkcoffee/android/functions/VoidF2Int;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->mAcceptListener:Lcom/vkcoffee/android/functions/VoidF2Int;

    .line 62
    new-instance v0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$1;-><init>(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->mGroupListener:Lcom/vkcoffee/android/functions/VoidF1;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)Lcom/vkcoffee/android/functions/VoidF2Int;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->mAcceptListener:Lcom/vkcoffee/android/functions/VoidF2Int;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method accept(Lcom/vkcoffee/android/api/GroupInvitation;Lcom/vkcoffee/android/data/Groups$JoinType;I)V
    .locals 7
    .param p1, "invite"    # Lcom/vkcoffee/android/api/GroupInvitation;
    .param p2, "type"    # Lcom/vkcoffee/android/data/Groups$JoinType;
    .param p3, "position"    # I

    .prologue
    .line 136
    iget-object v0, p1, Lcom/vkcoffee/android/api/GroupInvitation;->group:Lcom/vkcoffee/android/api/Group;

    invoke-static {v0, p2}, Lcom/vkcoffee/android/data/Groups;->joinGroup(Lcom/vkcoffee/android/api/Group;Lcom/vkcoffee/android/data/Groups$JoinType;)Lcom/vkcoffee/android/api/ResultlessAPIRequest;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v6

    new-instance v0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$3;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$3;-><init>(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;Landroid/app/Fragment;Lcom/vkcoffee/android/api/GroupInvitation;Lcom/vkcoffee/android/data/Groups$JoinType;I)V

    .line 138
    invoke-virtual {v6, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 149
    return-void
.end method

.method protected createAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/fragments/base/GridFragment",
            "<",
            "Lcom/vkcoffee/android/api/GroupInvitation;",
            ">.GridAdapter<",
            "Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$1;)V

    return-object v0
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 103
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsGetInvites;

    invoke-direct {v0, p1, p2}, Lcom/vkcoffee/android/api/groups/GroupsGetInvites;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$2;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$2;-><init>(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    .line 104
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetInvites;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 113
    return-void
.end method

.method protected getColumnsCount()I
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->isTablet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method synthetic lambda$new$386(Lcom/vkcoffee/android/api/GroupInvitation;Ljava/lang/Boolean;I)V
    .locals 6
    .param p1, "invite"    # Lcom/vkcoffee/android/api/GroupInvitation;
    .param p2, "result"    # Ljava/lang/Boolean;
    .param p3, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 41
    iget-object v0, p1, Lcom/vkcoffee/android/api/GroupInvitation;->group:Lcom/vkcoffee/android/api/Group;

    .line 42
    .local v0, "group":Lcom/vkcoffee/android/api/Group;
    iget v1, v0, Lcom/vkcoffee/android/api/Group;->type:I

    if-ne v1, v5, :cond_1

    .line 43
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const v4, 0x7f080231

    .line 46
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const v3, 0x7f080233

    .line 47
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const v4, 0x7f080230

    .line 48
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, p1, p3}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;Lcom/vkcoffee/android/api/GroupInvitation;I)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 45
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 60
    :goto_0
    return-void

    .line 55
    :cond_0
    sget-object v1, Lcom/vkcoffee/android/data/Groups$JoinType;->DECLINE:Lcom/vkcoffee/android/data/Groups$JoinType;

    invoke-virtual {p0, p1, v1, p3}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->accept(Lcom/vkcoffee/android/api/GroupInvitation;Lcom/vkcoffee/android/data/Groups$JoinType;I)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/vkcoffee/android/data/Groups$JoinType;->ACCEPT:Lcom/vkcoffee/android/data/Groups$JoinType;

    :goto_1
    invoke-virtual {p0, p1, v1, p3}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->accept(Lcom/vkcoffee/android/api/GroupInvitation;Lcom/vkcoffee/android/data/Groups$JoinType;I)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/vkcoffee/android/data/Groups$JoinType;->DECLINE:Lcom/vkcoffee/android/data/Groups$JoinType;

    goto :goto_1
.end method

.method synthetic lambda$null$385(Lcom/vkcoffee/android/api/GroupInvitation;ILandroid/content/DialogInterface;I)V
    .locals 1
    .param p3, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p4, "selectedPosition"    # I

    .prologue
    .line 50
    if-nez p4, :cond_0

    sget-object v0, Lcom/vkcoffee/android/data/Groups$JoinType;->ACCEPT:Lcom/vkcoffee/android/data/Groups$JoinType;

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->accept(Lcom/vkcoffee/android/api/GroupInvitation;Lcom/vkcoffee/android/data/Groups$JoinType;I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    sget-object v0, Lcom/vkcoffee/android/data/Groups$JoinType;->UNSURE:Lcom/vkcoffee/android/data/Groups$JoinType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/vkcoffee/android/data/Groups$JoinType;->DECLINE:Lcom/vkcoffee/android/data/Groups$JoinType;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->loadData()V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->dataLoaded()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.vkcoffee.android.ACTION_GROUP_STATUS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 93
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onDestroy()V

    .line 98
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    return-void
.end method

.method public openGroupDetails(Lcom/vkcoffee/android/api/Group;)V
    .locals 2
    .param p1, "group"    # Lcom/vkcoffee/android/api/Group;

    .prologue
    .line 152
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget v1, p1, Lcom/vkcoffee/android/api/Group;->id:I

    neg-int v1, v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 153
    return-void
.end method

.class public Lcom/vkcoffee/android/fragments/groups/GroupsFragment;
.super Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;
.source "GroupsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$3$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$3$$Lambda$2;,
        Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$3$$Lambda$3;
    }
.end annotation


# instance fields
.field private addItem:Landroid/view/MenuItem;

.field private allGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

.field private events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private eventsView:Lcom/vkcoffee/android/fragments/groups/EventsFragment;

.field private fragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private global_search:Z

.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private groupsView:Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;

.field private mHasInvitesTab:Z

.field private mInvitesCount:I

.field private mTabsCreated:Z

.field private receiver:Landroid/content/BroadcastReceiver;

.field private requestsView:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

.field private searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

.field private searching:Z

.field private select:Z

.field private showAdmined:Z

.field private titles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->allGroups:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->events:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->fragments:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->groups:Ljava/util/ArrayList;

    .line 48
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->mHasInvitesTab:Z

    .line 49
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumGroupInvitations()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->mInvitesCount:I

    .line 51
    new-instance v0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$1;-><init>(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 92
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->searching:Z

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->titles:Ljava/util/ArrayList;

    .line 96
    sget v0, Lcom/vkcoffee/android/Global;->uid:I

    iput v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->uid:I

    .line 99
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->setTabsAutoLoad(Z)V

    .line 100
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->mInvitesCount:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->mInvitesCount:I

    return-void
.end method

.method static synthetic access$10(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Lcom/vkcoffee/android/fragments/groups/EventsFragment;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->eventsView:Lcom/vkcoffee/android/fragments/groups/EventsFragment;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->isTablet:Z

    return v0
.end method

.method static synthetic access$12(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->contentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->progress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;Lcom/vkcoffee/android/api/VKAPIRequest;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    return-void
.end method

.method static synthetic access$15(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->errorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->updateTabs()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->searching:Z

    return v0
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;Z)V
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->searching:Z

    return-void
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->groupsView:Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->allGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->showAdmined:Z

    return v0
.end method

.method static synthetic access$8(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->events:Ljava/util/ArrayList;

    return-object v0
.end method

.method static lambda$null$389(Lcom/vkcoffee/android/api/Group;Lcom/vkcoffee/android/api/Group;)I
    .locals 2
    .param p0, "lhs"    # Lcom/vkcoffee/android/api/Group;
    .param p1, "rhs"    # Lcom/vkcoffee/android/api/Group;

    .prologue
    .line 333
    iget v0, p0, Lcom/vkcoffee/android/api/Group;->startTime:I

    iget v1, p1, Lcom/vkcoffee/android/api/Group;->startTime:I

    if-ge v0, v1, :cond_0

    .line 334
    const/4 v0, -0x1

    .line 336
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/api/Group;->startTime:I

    iget v1, p1, Lcom/vkcoffee/android/api/Group;->startTime:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static lambda$run$388(Lcom/vkcoffee/android/api/Group;Lcom/vkcoffee/android/api/Group;)I
    .locals 2
    .param p0, "lhs"    # Lcom/vkcoffee/android/api/Group;
    .param p1, "rhs"    # Lcom/vkcoffee/android/api/Group;

    .prologue
    .line 326
    iget v0, p0, Lcom/vkcoffee/android/api/Group;->startTime:I

    iget v1, p1, Lcom/vkcoffee/android/api/Group;->startTime:I

    if-ge v0, v1, :cond_0

    .line 327
    const/4 v0, -0x1

    .line 329
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/api/Group;->startTime:I

    iget v1, p1, Lcom/vkcoffee/android/api/Group;->startTime:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showCreateGroupDialog()V
    .locals 3

    .prologue
    .line 232
    new-instance v0, Lcom/vkcoffee/android/CreateGroupDialog;

    invoke-direct {v0}, Lcom/vkcoffee/android/CreateGroupDialog;-><init>()V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/CreateGroupDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method private updateTabs()V
    .locals 10

    .prologue
    const v9, 0x7f0e001d

    const v8, 0x7f0e001b

    const v7, 0x7f0e000b

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 236
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->mTabsCreated:Z

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->groups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->groups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->setTabTitle(ILjava/lang/CharSequence;)V

    .line 239
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->events:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->events:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v7, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->setTabTitle(ILjava/lang/CharSequence;)V

    .line 240
    iget v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->mInvitesCount:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->uid:I

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->requestsView:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->mHasInvitesTab:Z

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->mInvitesCount:I

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->mInvitesCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v8, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->setTabTitle(ILjava/lang/CharSequence;)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iput-boolean v5, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->mTabsCreated:Z

    .line 247
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 248
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->fragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 249
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->titles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->groups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->groups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v9, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->fragments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->groupsView:Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->titles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->events:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->events:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v7, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->fragments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->eventsView:Lcom/vkcoffee/android/fragments/groups/EventsFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    iget v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->mInvitesCount:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->uid:I

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->requestsView:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->titles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->mInvitesCount:I

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->mInvitesCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v8, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->fragments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->requestsView:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iput-boolean v5, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->mHasInvitesTab:Z

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->fragments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->titles:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->setTabs(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected doLoadData()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 263
    iget v3, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->uid:I

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v3, v4, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "_from_menu"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->allGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    const/16 v2, 0xb4

    :cond_0
    int-to-long v0, v2

    .line 265
    .local v0, "when":J
    new-instance v2, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3;-><init>(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;J)V

    .line 288
    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3;->start()V

    .line 324
    .end local v0    # "when":J
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->contentView:Landroid/view/ViewGroup;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 292
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->progress:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 293
    new-instance v2, Lcom/vkcoffee/android/api/groups/GroupsGet;

    iget v3, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->uid:I

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/api/groups/GroupsGet;-><init>(I)V

    new-instance v3, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;-><init>(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)V

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/groups/GroupsGet;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 323
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 293
    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method

.method public hasNavigationDrawer()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method lambda$onViewCreated$387(Lcom/vkcoffee/android/api/Group;)V
    .locals 3
    .param p1, "group"    # Lcom/vkcoffee/android/api/Group;

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v0, "result":Landroid/content/Intent;
    const-string v1, "gid"

    iget v2, p1, Lcom/vkcoffee/android/api/Group;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    const-string v1, "name"

    iget-object v2, p1, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v1, "photo"

    iget-object v2, p1, Lcom/vkcoffee/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 196
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 197
    return-void
.end method

.method lambda$run$390()V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->events:Ljava/util/ArrayList;

    invoke-static {}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$3$$Lambda$3;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 341
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->eventsView:Lcom/vkcoffee/android/fragments/groups/EventsFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->events:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->isTablet:Z

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->setData(Ljava/util/ArrayList;Z)V

    .line 342
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->groupsView:Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->setData(Ljava/util/ArrayList;)V

    .line 343
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->updateTabs()V

    .line 344
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->dataLoaded()V

    .line 345
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->invalidateOptionsMenu()V

    .line 346
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "select"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->select:Z

    .line 105
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uid"

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->uid:I

    .line 106
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "admin_only"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->showAdmined:Z

    .line 107
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "global_search"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->global_search:Z

    .line 108
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "groups?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ActivityUtils;->setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 109
    iget v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->uid:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->uid:I

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "admin_only"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 111
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    :cond_2
    :goto_0
    iget v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->uid:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->uid:I

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v1, v2, :cond_4

    .line 117
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkcoffee.android.GROUP_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v1, "com.vkcoffee.android.GROUP_INVITES_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 122
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_4
    return-void

    .line 113
    :cond_5
    const v1, 0x7f08025f

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->setTitle(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 210
    if-eqz p1, :cond_2

    .line 211
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->loaded:Z

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v1, p1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 214
    :cond_0
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->select:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->uid:I

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v1, v2, :cond_1

    .line 215
    const v1, 0x7f1000a2

    const v2, 0x7f080047

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 216
    .local v0, "add":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 217
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->addItem:Landroid/view/MenuItem;

    .line 218
    const v1, 0x7f02011f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 220
    .end local v0    # "add":Landroid/view/MenuItem;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 222
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 349
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;->onDestroy()V

    .line 351
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->cancel()V

    .line 357
    :cond_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 225
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1000a2

    if-ne v0, v1, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->showCreateGroupDialog()V

    .line 228
    :cond_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method protected onSpinnerItemSelected(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 204
    if-ne p1, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->showAdmined:Z

    .line 205
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->doLoadData()V

    .line 206
    return v1

    .line 204
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 126
    iget v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->uid:I

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->newInstance(I)Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->groupsView:Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;

    .line 127
    iget v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->uid:I

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->newInstance(I)Lcom/vkcoffee/android/fragments/groups/EventsFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->eventsView:Lcom/vkcoffee/android/fragments/groups/EventsFragment;

    .line 128
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->groupsView:Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;

    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->global_search:Z

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->setGlobalSearch(Z)V

    .line 129
    iget v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->uid:I

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v2, v3, :cond_0

    .line 130
    new-instance v2, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    invoke-direct {v2}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->requestsView:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    .line 132
    :cond_0
    iget v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->uid:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->uid:I

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v2, v3, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "admin_only"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v1, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v2, 0x7f08025f

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    const v2, 0x7f080261

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->setSpinnerItems(Ljava/util/List;)V

    .line 140
    .end local v1    # "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->updateTabs()V

    .line 141
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "tab"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "tab"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->setPagerCurrentItem(I)V

    .line 144
    :cond_2
    new-instance v2, Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$2;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$2;-><init>(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)V

    invoke-direct {v2, v3, v4}, Lcom/vkcoffee/android/ui/SearchViewWrapper;-><init>(Landroid/app/Activity;Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;)V

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .line 181
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->setHasOptionsMenu(Z)V

    .line 182
    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->select:Z

    if-eqz v2, :cond_3

    .line 183
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v0

    .line 184
    .local v0, "listener":Lcom/vkcoffee/android/functions/VoidF1;, "Lcom/vkcoffee/android/functions/VoidF1<Lcom/vkcoffee/android/api/Group;>;"
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->groupsView:Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->setSelectionListener(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;

    .line 185
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->eventsView:Lcom/vkcoffee/android/fragments/groups/EventsFragment;

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->setSelectionListener(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/fragments/groups/EventsFragment;

    .line 187
    .end local v0    # "listener":Lcom/vkcoffee/android/functions/VoidF1;, "Lcom/vkcoffee/android/functions/VoidF1<Lcom/vkcoffee/android/api/Group;>;"
    :cond_3
    return-void

    .line 138
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->onSpinnerItemSelected(I)Z

    goto :goto_0
.end method

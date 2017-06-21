.class public Lcom/vkcoffee/android/fragments/friends/FriendsFragment;
.super Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;,
        Lcom/vkcoffee/android/fragments/friends/FriendsFragment$FriendsFragment$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/friends/FriendsFragment$FriendsFragment$$Lambda$2;,
        Lcom/vkcoffee/android/fragments/friends/FriendsFragment$FriendsFragment$$Lambda$3;
    }
.end annotation


# instance fields
.field private addItem:Landroid/view/MenuItem;

.field private allFriends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private allFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

.field private currentId:I

.field private currentPosition:I

.field protected currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

.field private disable_spinner:Z

.field private folders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/Friends$Folder;",
            ">;"
        }
    .end annotation
.end field

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

.field private mAdmin:Z

.field mRequestsAdded:Z

.field private mRequestsCount:I

.field private mSelectedUsers:[I

.field private mTabsCreated:Z

.field private multiselect:Z

.field private mutual:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mutualView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

.field private onlineFriends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private onlineFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private requestsView:Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

.field private searchEnabled:Z

.field private searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

.field private searching:Z

.field private select:Z

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

    .line 163
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriends:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->folders:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->fragments:Ljava/util/ArrayList;

    .line 52
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mRequestsAdded:Z

    .line 53
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumFriendRequests()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mRequestsCount:I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mutual:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->onlineFriends:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$1;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 103
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->searching:Z

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->titles:Ljava/util/ArrayList;

    .line 106
    sget v0, Lcom/vkcoffee/android/Global;->uid:I

    iput v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->uid:I

    .line 164
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->setTabsAutoLoad(Z)V

    .line 165
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->currentPosition:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mRequestsCount:I

    return v0
.end method

.method static synthetic access$10(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->isTablet:Z

    return v0
.end method

.method static synthetic access$11(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->errorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->progress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mRequestsCount:I

    return-void
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->updateTabs()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->searching:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;Z)V
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->searching:Z

    return-void
.end method

.method static synthetic access$6(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mutual:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriends:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mutualView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    return-object v0
.end method

.method private updateTabs()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriends:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->onlineFriends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->updateTabs(II)V

    .line 368
    return-void
.end method

.method private updateTabs(II)V
    .locals 10
    .param p1, "usersSize"    # I
    .param p2, "onlineSize"    # I

    .prologue
    const v9, 0x7f0e000d

    const v8, 0x7f0e000c

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 371
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 372
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mTabsCreated:Z

    if-eqz v0, :cond_5

    .line 373
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v9, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->setTabTitle(ILjava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->onlineFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000e

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->setTabTitle(ILjava/lang/CharSequence;)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mutualView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->uid:I

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v0, v1, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mutual:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mutual:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v8, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->setTabTitle(ILjava/lang/CharSequence;)V

    .line 380
    :cond_1
    iget v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->uid:I

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->requestsView:Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getTabsCount()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 409
    :cond_2
    :goto_0
    return-void

    .line 383
    :cond_3
    iget v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mRequestsCount:I

    if-lez v0, :cond_4

    .line 384
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000f

    iget v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mRequestsCount:I

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mRequestsCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->setTabTitle(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 387
    :cond_4
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080196

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->setTabTitle(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 390
    :cond_5
    iput-boolean v6, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mTabsCreated:Z

    .line 391
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 392
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->fragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 393
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->titles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriends:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriends:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v9, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->fragments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->onlineFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    if-eqz v0, :cond_6

    .line 396
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->titles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e000e

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->onlineFriends:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->onlineFriends:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->fragments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->onlineFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_6
    iget v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mRequestsCount:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->uid:I

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->requestsView:Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    if-eqz v0, :cond_7

    .line 400
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->titles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e000f

    iget v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mRequestsCount:I

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mRequestsCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->fragments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->requestsView:Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_7
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mutualView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->uid:I

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v0, v1, :cond_8

    .line 404
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->titles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mutual:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mutual:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v8, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->fragments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mutualView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_8
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->fragments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->titles:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->setTabs(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected doLoadData()V
    .locals 5

    .prologue
    .line 432
    iget v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->uid:I

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v2, v3, :cond_1

    .line 433
    const-wide/16 v0, 0x0

    .line 434
    .local v0, "when":J
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "_from_menu"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriends:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 435
    const-wide/16 v0, 0xb4

    .line 437
    :cond_0
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$FriendsFragment$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/vkcoffee/android/functions/Functions;->postDelayed(Ljava/lang/Runnable;J)V

    .line 456
    .end local v0    # "when":J
    :goto_0
    return-void

    .line 440
    :cond_1
    new-instance v2, Lcom/vkcoffee/android/api/friends/FriendsGet;

    iget v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->uid:I

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/vkcoffee/android/api/friends/FriendsGet;-><init>(IZ)V

    new-instance v3, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$3;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$3;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)V

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/friends/FriendsGet;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 455
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 440
    iput-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method

.method public hasNavigationDrawer()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method lambda$doLoadData$350()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriends:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 460
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriends:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vkcoffee/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriends:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->setData(Ljava/util/List;)V

    .line 462
    return-void
.end method

.method lambda$onViewCreated$348(Lcom/vkcoffee/android/UserProfile;)V
    .locals 3
    .param p1, "user"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 284
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 285
    .local v0, "result":Landroid/content/Intent;
    const-string v1, "uid"

    iget v2, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    const-string v1, "name"

    iget-object v2, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v1, "photo"

    iget-object v2, p1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v1, "verified"

    iget-boolean v2, p1, Lcom/vkcoffee/android/UserProfile;->verified:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 292
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 293
    return-void
.end method

.method lambda$onViewCreated$349(Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "users"    # Ljava/util/ArrayList;

    .prologue
    .line 296
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 297
    .local v0, "result":Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 299
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 300
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 168
    const/4 v1, 0x1

    .line 169
    .local v1, "z":Z
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;->onCreate(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "select"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->select:Z

    .line 171
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "multiselect"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->multiselect:Z

    .line 172
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "global_search"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->global_search:Z

    .line 173
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "search_enabled"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->searchEnabled:Z

    .line 174
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "disable_spinner"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->disable_spinner:Z

    .line 175
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "uid"

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->uid:I

    .line 176
    iget v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->uid:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->uid:I

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v2, v3, :cond_0

    .line 177
    const/4 v1, 0x0

    .line 179
    :cond_0
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mAdmin:Z

    .line 180
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "selectedUsers"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mSelectedUsers:[I

    .line 181
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "friends?id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ActivityUtils;->setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 183
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    :goto_0
    iget v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->uid:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->uid:I

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v2, v3, :cond_2

    .line 188
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 189
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.vkcoffee.android.FRIEND_LIST_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v2, "com.vkcoffee.android.FRIEND_REQUESTS_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 193
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    return-void

    .line 185
    :cond_3
    const v2, 0x7f0801a4

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->setTitle(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 340
    if-eqz p1, :cond_2

    .line 341
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->searchEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->loaded:Z

    if-eqz v2, :cond_0

    .line 342
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v2, p1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 344
    :cond_0
    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mAdmin:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->select:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->multiselect:Z

    if-nez v2, :cond_1

    .line 345
    const v2, 0x7f1000a2

    const v3, 0x7f080049

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 346
    .local v0, "add":Landroid/view/MenuItem;
    const v2, 0x7f10045c

    const-string v3, "\u0418\u0441\u0445\u043e\u0434\u044f\u0449\u0438\u0435"

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 348
    .local v1, "add2":Landroid/view/MenuItem;
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 349
    const v2, 0x7f02011f

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 350
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 351
    const v2, 0x7f020310

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 353
    .end local v0    # "add":Landroid/view/MenuItem;
    .end local v1    # "add2":Landroid/view/MenuItem;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 355
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 465
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;->onDestroy()V

    .line 467
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->cancel()V

    .line 473
    :cond_0
    return-void

    .line 468
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 358
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1000a2

    if-ne v0, v1, :cond_1

    .line 359
    const-class v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 363
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 360
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f10045c

    if-ne v0, v1, :cond_0

    .line 361
    const-class v0, Lcom/vkcoffee/android/fragments/FriendsOutRequest;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method protected onSpinnerItemSelected(I)Z
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 308
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->folders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, p1, :cond_0

    if-gez p1, :cond_2

    .line 309
    :cond_0
    const/4 v0, 0x0

    .line 313
    .local v0, "i":I
    :goto_0
    iput v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->currentId:I

    .line 314
    iput p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->currentPosition:I

    .line 315
    iget v6, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->currentId:I

    if-eqz v6, :cond_5

    .line 316
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v3, "online":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    iget v6, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->currentId:I

    shl-int v2, v9, v6

    .line 319
    .local v2, "listBit":I
    const/4 v1, 0x0

    .local v1, "i2":I
    :goto_1
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriends:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_3

    .line 328
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    iget-boolean v7, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mAdmin:Z

    iget-boolean v8, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->isTablet:Z

    invoke-virtual {v6, v5, v9, v7, v8}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->setData(Ljava/util/List;ZZZ)V

    .line 329
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->onlineFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    if-eqz v6, :cond_1

    .line 330
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->onlineFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    iget-boolean v7, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->isTablet:Z

    invoke-virtual {v6, v3, v10, v10, v7}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->setData(Ljava/util/List;ZZZ)V

    .line 332
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->updateTabs(II)V

    .line 336
    .end local v1    # "i2":I
    .end local v2    # "listBit":I
    .end local v3    # "online":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    :goto_2
    return v9

    .line 311
    .end local v0    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->folders:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/data/Friends$Folder;

    iget v0, v6, Lcom/vkcoffee/android/data/Friends$Folder;->id:I

    .restart local v0    # "i":I
    goto :goto_0

    .line 320
    .restart local v1    # "i2":I
    .restart local v2    # "listBit":I
    .restart local v3    # "online":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_3
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriends:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/UserProfile;

    .line 321
    .local v4, "p":Lcom/vkcoffee/android/UserProfile;
    iget v6, v4, Lcom/vkcoffee/android/UserProfile;->country:I

    and-int/2addr v6, v2

    if-lez v6, :cond_4

    .line 322
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    iget v6, v4, Lcom/vkcoffee/android/UserProfile;->online:I

    if-eqz v6, :cond_4

    .line 324
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 334
    .end local v1    # "i2":I
    .end local v2    # "listBit":I
    .end local v3    # "online":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v4    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->doLoadData()V

    goto :goto_2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 196
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 197
    new-instance v4, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-direct {v4}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;-><init>()V

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    .line 198
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->global_search:Z

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->setGlobalSearch(Z)V

    .line 199
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mSelectedUsers:[I

    if-eqz v4, :cond_0

    .line 200
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 201
    .local v1, "args":Landroid/os/Bundle;
    const-string v4, "selectedUsers"

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mSelectedUsers:[I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 202
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-virtual {v4, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 204
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_0
    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->multiselect:Z

    if-nez v4, :cond_1

    .line 205
    new-instance v4, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-direct {v4}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;-><init>()V

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->onlineFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    .line 206
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->onlineFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->global_search:Z

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->setGlobalSearch(Z)V

    .line 208
    :cond_1
    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->select:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mAdmin:Z

    if-nez v4, :cond_2

    .line 209
    new-instance v4, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-direct {v4}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;-><init>()V

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mutualView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    .line 211
    :cond_2
    iget v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->uid:I

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v4, v5, :cond_3

    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->select:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->multiselect:Z

    if-nez v4, :cond_3

    .line 212
    new-instance v4, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    invoke-direct {v4}, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;-><init>()V

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->requestsView:Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    .line 214
    :cond_3
    iget v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->uid:I

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->uid:I

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v4, v5, :cond_9

    :cond_4
    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->disable_spinner:Z

    if-nez v4, :cond_9

    .line 215
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->folders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 216
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->titles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 217
    new-instance v0, Lcom/vkcoffee/android/data/Friends$Folder;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/Friends$Folder;-><init>()V

    .line 218
    .local v0, "all":Lcom/vkcoffee/android/data/Friends$Folder;
    const/4 v4, 0x0

    iput v4, v0, Lcom/vkcoffee/android/data/Friends$Folder;->id:I

    .line 219
    const v4, 0x7f0801a4

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/vkcoffee/android/data/Friends$Folder;->name:Ljava/lang/String;

    .line 220
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->folders:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->folders:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/vkcoffee/android/data/Friends;->getLists(Ljava/util/List;)V

    .line 222
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->folders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_8

    .line 225
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->titles:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->setSpinnerItems(Ljava/util/List;)V

    .line 229
    .end local v0    # "all":Lcom/vkcoffee/android/data/Friends$Folder;
    .end local v2    # "i":I
    :goto_1
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->updateTabs()V

    .line 230
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "tab"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 231
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "tab"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->setPagerCurrentItem(I)V

    .line 233
    :cond_5
    new-instance v4, Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$2;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$2;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)V

    invoke-direct {v4, v5, v6}, Lcom/vkcoffee/android/ui/SearchViewWrapper;-><init>(Landroid/app/Activity;Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;)V

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .line 270
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->setHasOptionsMenu(Z)V

    .line 271
    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->select:Z

    if-eqz v4, :cond_6

    .line 272
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$FriendsFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v3

    .line 273
    .local v3, "listener":Lcom/vkcoffee/android/functions/VoidF1;, "Lcom/vkcoffee/android/functions/VoidF1<Lcom/vkcoffee/android/UserProfile;>;"
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-virtual {v4, v3}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->setSelectionListener(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    .line 274
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->onlineFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    if-eqz v4, :cond_6

    .line 275
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->onlineFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-virtual {v4, v3}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->setSelectionListener(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    .line 278
    .end local v3    # "listener":Lcom/vkcoffee/android/functions/VoidF1;, "Lcom/vkcoffee/android/functions/VoidF1<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_6
    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->multiselect:Z

    if-eqz v4, :cond_7

    .line 279
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$FriendsFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->setMultiselectListener(Lcom/vkcoffee/android/functions/VoidF1;)V

    .line 281
    :cond_7
    return-void

    .line 223
    .restart local v0    # "all":Lcom/vkcoffee/android/data/Friends$Folder;
    .restart local v2    # "i":I
    :cond_8
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->titles:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->folders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/data/Friends$Folder;

    iget-object v4, v4, Lcom/vkcoffee/android/data/Friends$Folder;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "all":Lcom/vkcoffee/android/data/Friends$Folder;
    .end local v2    # "i":I
    :cond_9
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->loadData()V

    goto :goto_1
.end method

.method public setData(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    const/4 v7, 0x0

    .line 412
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriends:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 413
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->onlineFriends:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 414
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriends:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 415
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriends:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 416
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 422
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->allFriends:Ljava/util/ArrayList;

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->mAdmin:Z

    iget-boolean v6, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->isTablet:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->setData(Ljava/util/List;ZZZ)V

    .line 423
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->onlineFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    if-eqz v2, :cond_1

    .line 424
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->onlineFriendsView:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->onlineFriends:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->isTablet:Z

    invoke-virtual {v2, v3, v7, v7, v4}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->setData(Ljava/util/List;ZZZ)V

    .line 426
    :cond_1
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->updateTabs()V

    .line 427
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->dataLoaded()V

    .line 428
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->invalidateOptionsMenu()V

    .line 429
    return-void

    .line 417
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 418
    .local v1, "profile":Lcom/vkcoffee/android/UserProfile;
    iget v2, v1, Lcom/vkcoffee/android/UserProfile;->online:I

    if-eqz v2, :cond_0

    .line 419
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->onlineFriends:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

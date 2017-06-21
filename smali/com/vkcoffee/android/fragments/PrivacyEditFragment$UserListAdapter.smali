.class Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "PrivacyEditFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/PrivacyEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;",
        ">;",
        "Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;"
    }
.end annotation


# instance fields
.field f1:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field final isAllowed:Z

.field selectFriendList:Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder$Data;

.field selectFriends:Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder$Data;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PrivacyEditFragment;

.field private users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private visible:Z


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;Lcom/vkcoffee/android/functions/VoidF0;Lcom/vkcoffee/android/functions/VoidF0;Z)V
    .locals 2
    .param p2, "selectFriendsFunc"    # Lcom/vkcoffee/android/functions/VoidF0;
    .param p3, "selectFriendListFunc"    # Lcom/vkcoffee/android/functions/VoidF0;
    .param p4, "isAllowed"    # Z

    .prologue
    .line 474
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->this$0:Lcom/vkcoffee/android/fragments/PrivacyEditFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->users:Ljava/util/ArrayList;

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->visible:Z

    .line 464
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->f1:Lcom/vkcoffee/android/functions/VoidF1;

    .line 475
    new-instance v0, Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder$Data;

    const v1, 0x7f080355

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder$Data;-><init>(Ljava/lang/Object;Lcom/vkcoffee/android/functions/VoidF0;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->selectFriends:Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder$Data;

    .line 476
    new-instance v0, Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder$Data;

    const v1, 0x7f080357

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder$Data;-><init>(Ljava/lang/Object;Lcom/vkcoffee/android/functions/VoidF0;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->selectFriendList:Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder$Data;

    .line 477
    iput-boolean p4, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->isAllowed:Z

    .line 478
    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->visible:Z

    return v0
.end method

.method static synthetic access$202(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 459
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->visible:Z

    return p1
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->users:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getBlockType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 539
    if-nez p1, :cond_0

    .line 540
    const/4 v0, 0x2

    .line 544
    :goto_0
    return v0

    .line 541
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_1

    .line 542
    const/4 v0, 0x1

    goto :goto_0

    .line 544
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getImageCountForItem(I)I
    .locals 3
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 550
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 556
    :goto_0
    return v0

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->users:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget v0, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v2, 0x77359400

    if-le v0, v2, :cond_2

    move v0, v1

    .line 554
    goto :goto_0

    .line 556
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 561
    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->users:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->visible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 482
    if-nez p1, :cond_0

    .line 483
    const/16 v0, 0xa

    .line 491
    :goto_0
    return v0

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 485
    const/16 v0, 0xb

    goto :goto_0

    .line 486
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne p1, v0, :cond_2

    .line 487
    const/16 v0, 0xe

    goto :goto_0

    .line 488
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-ne p1, v0, :cond_3

    .line 489
    const/16 v0, 0xc

    goto :goto_0

    .line 491
    :cond_3
    const/16 v0, 0xd

    goto :goto_0
.end method

.method synthetic lambda$new$537(Lcom/vkcoffee/android/UserProfile;)V
    .locals 2
    .param p1, "v"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 466
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->this$0:Lcom/vkcoffee/android/fragments/PrivacyEditFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->access$700(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;)V

    .line 467
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->this$0:Lcom/vkcoffee/android/fragments/PrivacyEditFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->updateList()V

    .line 468
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->this$0:Lcom/vkcoffee/android/fragments/PrivacyEditFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->access$802(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;Z)Z

    .line 469
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 459
    check-cast p1, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 513
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 524
    :goto_0
    :pswitch_0
    instance-of v0, p1, Lcom/vkcoffee/android/ui/holder/UserHolder;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 525
    check-cast v0, Lcom/vkcoffee/android/ui/holder/UserHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->users:Ljava/util/ArrayList;

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->bind(Lcom/vkcoffee/android/UserProfile;)V

    .line 526
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->users:Ljava/util/ArrayList;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget v0, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v1, 0x77359400

    if-lt v0, v1, :cond_0

    .line 527
    check-cast p1, Lcom/vkcoffee/android/ui/holder/UserHolder;

    .end local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    iget-object v1, p1, Lcom/vkcoffee/android/ui/holder/UserHolder;->mImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->access$600()[I

    move-result-object v2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->users:Ljava/util/ArrayList;

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget v0, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v3, 0x77359401

    sub-int/2addr v0, v3

    invoke-static {}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->access$600()[I

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v0, v3

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 530
    :cond_0
    return-void

    .restart local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    :pswitch_1
    move-object v0, p1

    .line 515
    check-cast v0, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->isAllowed:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0803ba

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;->bind(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0803bb

    goto :goto_1

    :pswitch_2
    move-object v0, p1

    .line 518
    check-cast v0, Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->selectFriends:Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder$Data;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder;->bind(Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder$Data;)V

    goto :goto_0

    :pswitch_3
    move-object v0, p1

    .line 521
    check-cast v0, Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->selectFriendList:Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder$Data;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder;->bind(Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder$Data;)V

    goto :goto_0

    .line 513
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 459
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 497
    packed-switch p2, :pswitch_data_0

    .line 504
    :pswitch_0
    const v0, 0x7f030192

    invoke-static {p1, v0}, Lcom/vkcoffee/android/ui/holder/UserHolder;->actionable(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->f1:Lcom/vkcoffee/android/functions/VoidF1;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->onAction(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    .line 499
    :pswitch_1
    invoke-static {p1}, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;->blueTitle(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->isAllowed:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0803ba

    :goto_1
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;->withText(I)Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0803bb

    goto :goto_1

    .line 501
    :pswitch_2
    new-instance v0, Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;-><init>(Landroid/view/ViewGroup;)V

    const v1, 0x7f02004e

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;->setRes(I)Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;

    move-result-object v0

    goto :goto_0

    .line 507
    :pswitch_3
    new-instance v0, Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 497
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

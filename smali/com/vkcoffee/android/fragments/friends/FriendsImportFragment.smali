.class public Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;
.super Lcom/vkcoffee/android/fragments/base/GridFragment;
.source "FriendsImportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;,
        Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$ImportHolder;,
        Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$UserHolder;,
        Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Adapter;,
        Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/GridFragment",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final legacy:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

.field mImportServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;",
            ">;"
        }
    .end annotation
.end field

.field startFrom:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/base/GridFragment;-><init>(I)V

    .line 89
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->legacy:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

    .line 163
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->startFrom:Ljava/lang/String;

    .line 93
    return-void
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method addFriend(Lcom/vkcoffee/android/UserProfile;I)V
    .locals 3
    .param p1, "user"    # Lcom/vkcoffee/android/UserProfile;
    .param p2, "position"    # I

    .prologue
    .line 185
    new-instance v0, Lcom/vkcoffee/android/api/friends/FriendsAdd;

    iget v1, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/friends/FriendsAdd;-><init>(ILjava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/friends/FriendsAdd;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$2;

    invoke-direct {v1, p0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$2;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;Landroid/app/Fragment;Lcom/vkcoffee/android/UserProfile;I)V

    .line 187
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 196
    return-void
.end method

.method protected createAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/fragments/base/GridFragment",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">.GridAdapter<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$1;)V

    .line 152
    .local v0, "adapter":Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Adapter;
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->setSpanSizeLoockuper(Lcom/vkcoffee/android/functions/IntFIntInt;)V

    .line 153
    return-object v0
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->startFrom:Ljava/lang/String;

    .line 170
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/api/friends/FriendsGetRecommendations;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->startFrom:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/vkcoffee/android/api/friends/FriendsGetRecommendations;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$1;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$1;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;Landroid/app/Fragment;)V

    .line 171
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/friends/FriendsGetRecommendations;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 178
    return-void
.end method

.method protected getColumnsCount()I
    .locals 4

    .prologue
    .line 158
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v2}, Lme/grishka/appkit/views/UsableRecyclerView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 159
    .local v1, "listWidth":I
    const/high16 v2, 0x43340000    # 180.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    .line 160
    .local v0, "columnWidth":I
    div-int v2, v1, v0

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 142
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->loadData()V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->dataLoaded()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 241
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 242
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->legacy:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;->onActivityResult(IILandroid/content/Intent;)V

    .line 243
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->legacy:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;->onCreated()V

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->setRefreshEnabled(Z)V

    .line 112
    return-void
.end method

.method protected onCreateCardDecorator()Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/high16 v8, 0x41000000    # 8.0f

    .line 123
    new-instance v5, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v6

    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->isTablet:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-direct {v5, v6, v3}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;-><init>(Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;Z)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->setCardsSpacing(I)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    move-result-object v0

    .line 125
    .local v0, "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    iget v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->scrW:I

    const/16 v5, 0x258

    if-lt v3, v5, :cond_1

    .line 126
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    .line 132
    .local v2, "padding":I
    :goto_1
    iget v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->scrW:I

    const/16 v5, 0x39c

    if-lt v3, v5, :cond_2

    const/16 v3, 0x10

    iget v5, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->scrW:I

    add-int/lit16 v5, v5, -0x348

    add-int/lit8 v5, v5, -0x54

    div-int/lit8 v5, v5, 0x2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    .line 133
    .local v1, "margin":I
    :goto_2
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    add-int v5, v1, v2

    invoke-static {v8}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    add-int v7, v1, v2

    invoke-virtual {v3, v5, v6, v7, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 134
    invoke-static {v8}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-virtual {v0, v2, v4, v2, v3}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->setPadding(IIII)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    .line 135
    return-object v0

    .end local v0    # "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .end local v1    # "margin":I
    .end local v2    # "padding":I
    :cond_0
    move v3, v4

    .line 123
    goto :goto_0

    .line 128
    .restart local v0    # "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    :cond_1
    invoke-static {v8}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    .restart local v2    # "padding":I
    goto :goto_1

    :cond_2
    move v1, v4

    .line 132
    goto :goto_2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 117
    const v0, 0x7f080186

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->setTitle(I)V

    .line 118
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->updateItems()V

    .line 119
    return-void
.end method

.method openProfile(Lcom/vkcoffee/android/UserProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 181
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget v1, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 182
    return-void
.end method

.method updateItems()V
    .locals 6

    .prologue
    .line 199
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$3;

    const v2, 0x7f02016e

    const v3, 0x7f080522

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->legacy:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;->access$500(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0802dd

    :goto_0
    invoke-direct {v0, p0, v2, v3, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$3;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;III)V

    .line 206
    .local v0, "contactsImporter":Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->mImportServices:Ljava/util/List;

    if-nez v1, :cond_1

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->mImportServices:Ljava/util/List;

    .line 208
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->mImportServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->mImportServices:Ljava/util/List;

    new-instance v2, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$4;

    const v3, 0x7f020170

    const v4, 0x7f080528

    const v5, 0x7f080529

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$4;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->mImportServices:Ljava/util/List;

    new-instance v2, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$5;

    const v3, 0x7f02016f

    const v4, 0x7f080526

    const v5, 0x7f080527

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$5;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->mImportServices:Ljava/util/List;

    new-instance v2, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$6;

    const v3, 0x7f020172

    const v4, 0x7f080524

    const v5, 0x7f080525

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$6;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->mImportServices:Ljava/util/List;

    new-instance v2, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$7;

    const v3, 0x7f020171

    const v4, 0x7f08052c

    const v5, 0x7f08052d

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$7;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :goto_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->updateList()V

    .line 237
    return-void

    .line 199
    .end local v0    # "contactsImporter":Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;
    :cond_0
    const v1, 0x7f080523

    goto :goto_0

    .line 234
    .restart local v0    # "contactsImporter":Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->mImportServices:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

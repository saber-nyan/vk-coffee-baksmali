.class public Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;
.super Lcom/vkcoffee/android/fragments/base/SegmenterFragment;
.source "AllGroupsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/SegmenterFragment",
        "<",
        "Lcom/vkcoffee/android/api/Group;",
        ">;"
    }
.end annotation


# static fields
.field public static final USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field private mData:Lcom/vkcoffee/android/ui/util/ListSegmenter;

.field private mGlobalSearchEnabled:Z

.field private mSearchIndexer:Lcom/vkcoffee/android/ui/util/SearchSegmenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/ui/util/SearchSegmenter",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchMode:Z

.field private mSelectionListener:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;-><init>()V

    .line 34
    new-instance v0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    new-instance v1, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$1;-><init>(Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;)V

    invoke-static {}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$$Lambda$1;->lambdaFactory$()Lcom/vkcoffee/android/ui/util/SearchSegmenter$Generator;

    move-result-object v2

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;-><init>(Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;Lcom/vkcoffee/android/ui/util/SearchSegmenter$Generator;I)V

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v2, 0x7f08045b

    .line 58
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->setGlobalTitle(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mSearchIndexer:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    .line 62
    new-instance v0, Lcom/vkcoffee/android/ui/util/ListSegmenter;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/util/ListSegmenter;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mData:Lcom/vkcoffee/android/ui/util/ListSegmenter;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mGlobalSearchEnabled:Z

    .line 155
    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mSelectionListener:Lcom/vkcoffee/android/functions/VoidF1;

    return-object v0
.end method

.method public static newInstance(I)Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 66
    new-instance v1, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;-><init>()V

    .line 67
    .local v1, "fragment":Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    return-object v1
.end method


# virtual methods
.method protected createAdapter()Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/fragments/base/SegmenterFragment",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">.GridAdapter<",
            "Lcom/vkcoffee/android/api/Group;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$1;)V

    return-object v0
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->preloader:Lme/grishka/appkit/utils/Preloader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/grishka/appkit/utils/Preloader;->setMoreAvailable(Z)V

    .line 118
    return-void
.end method

.method protected getColumnsCount()I
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->isTablet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getSegmenter()Lcom/vkcoffee/android/ui/util/Segmenter;
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mSearchIndexer:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mData:Lcom/vkcoffee/android/ui/util/ListSegmenter;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mUserId:I

    .line 77
    iget v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mUserId:I

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->setRefreshEnabled(Z)V

    .line 78
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/data/Groups;->reload(Z)V

    .line 87
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 92
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mSearchIndexer:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->attach(Landroid/support/v7/widget/RecyclerView;)V

    .line 93
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->updateList()V

    .line 94
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->loaded:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->dataLoaded()V

    .line 97
    :cond_0
    return-void
.end method

.method public openGroupDetails(Lcom/vkcoffee/android/api/Group;)V
    .locals 2
    .param p1, "group"    # Lcom/vkcoffee/android/api/Group;

    .prologue
    .line 182
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget v1, p1, Lcom/vkcoffee/android/api/Group;->id:I

    neg-int v1, v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 183
    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Group;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mSearchMode:Z

    .line 122
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 123
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 124
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mData:Lcom/vkcoffee/android/ui/util/ListSegmenter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/util/ListSegmenter;->clear()V

    .line 125
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mData:Lcom/vkcoffee/android/ui/util/ListSegmenter;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/util/ListSegmenter;->bind(Ljava/util/List;)Lcom/vkcoffee/android/ui/util/ListSegmenter;

    .line 126
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mSearchIndexer:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->clear()V

    .line 127
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mSearchIndexer:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->bind(Ljava/util/List;)V

    .line 128
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mData:Lcom/vkcoffee/android/ui/util/ListSegmenter;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->setData(Lcom/vkcoffee/android/ui/util/Segmenter;)Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->loaded:Z

    .line 130
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->updateList()V

    .line 134
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->dataLoaded()V

    .line 135
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->refreshDone()V

    goto :goto_0
.end method

.method public setGlobalSearch(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mGlobalSearchEnabled:Z

    .line 82
    return-void
.end method

.method public setSelectionListener(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;
    .locals 0
    .param p1    # Lcom/vkcoffee/android/functions/VoidF1;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;)",
            "Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "l":Lcom/vkcoffee/android/functions/VoidF1;, "Lcom/vkcoffee/android/functions/VoidF1<Lcom/vkcoffee/android/api/Group;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mSelectionListener:Lcom/vkcoffee/android/functions/VoidF1;

    .line 187
    return-object p0
.end method

.method public updateFilter(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mSearchMode:Z

    if-nez v0, :cond_0

    .line 141
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mSearchMode:Z

    .line 142
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->updateList()V

    .line 143
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->setRefreshEnabled(Z)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mSearchIndexer:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mGlobalSearchEnabled:Z

    invoke-virtual {v0, p1, v1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->search(Ljava/lang/String;Z)V

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 147
    :cond_2
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mSearchMode:Z

    if-eqz v0, :cond_1

    .line 148
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->mSearchMode:Z

    .line 149
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->updateList()V

    .line 150
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->setRefreshEnabled(Z)V

    goto :goto_0
.end method

.class public Lcom/vkcoffee/android/fragments/groups/EventsFragment;
.super Lcom/vkcoffee/android/fragments/base/SegmenterFragment;
.source "EventsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter;
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
.field private mData:Lcom/vkcoffee/android/ui/util/SectionSegmenter;

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
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;-><init>()V

    .line 31
    new-instance v0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/util/SectionSegmenter;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->mData:Lcom/vkcoffee/android/ui/util/SectionSegmenter;

    .line 151
    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/groups/EventsFragment;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groups/EventsFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->mSelectionListener:Lcom/vkcoffee/android/functions/VoidF1;

    return-object v0
.end method

.method public static newInstance(I)Lcom/vkcoffee/android/fragments/groups/EventsFragment;
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 36
    new-instance v1, Lcom/vkcoffee/android/fragments/groups/EventsFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/groups/EventsFragment;-><init>()V

    .line 37
    .local v1, "fragment":Lcom/vkcoffee/android/fragments/groups/EventsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
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
    .line 72
    new-instance v0, Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/groups/EventsFragment;Lcom/vkcoffee/android/fragments/groups/EventsFragment$1;)V

    return-object v0
.end method

.method protected doLoadData(II)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 63
    return-void
.end method

.method protected getColumnsCount()I
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->isTablet:Z

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
    .line 139
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->mData:Lcom/vkcoffee/android/ui/util/SectionSegmenter;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->mUserId:I

    .line 47
    iget v0, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->mUserId:I

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->setRefreshEnabled(Z)V

    .line 48
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/data/Groups;->reload(Z)V

    .line 68
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->updateList()V

    .line 54
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->loaded:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->dataLoaded()V

    .line 57
    :cond_0
    return-void
.end method

.method public openGroupDetails(Lcom/vkcoffee/android/api/Group;)V
    .locals 2
    .param p1, "group"    # Lcom/vkcoffee/android/api/Group;

    .prologue
    .line 148
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget v1, p1, Lcom/vkcoffee/android/api/Group;->id:I

    neg-int v1, v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 149
    return-void
.end method

.method public setData(Ljava/util/ArrayList;Z)V
    .locals 8
    .param p2, "isTablet"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Group;>;"
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 83
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v3, "mUpcomingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/api/Group;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v2, "mPastEvents":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/api/Group;>;"
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v4

    .line 89
    .local v4, "now":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 90
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/Group;

    .line 91
    .local v0, "event":Lcom/vkcoffee/android/api/Group;
    iget v5, v0, Lcom/vkcoffee/android/api/Group;->startTime:I

    if-le v5, v4, :cond_0

    .line 92
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    .end local v0    # "event":Lcom/vkcoffee/android/api/Group;
    :cond_1
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->mData:Lcom/vkcoffee/android/ui/util/SectionSegmenter;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->clear()V

    .line 98
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 99
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->mData:Lcom/vkcoffee/android/ui/util/SectionSegmenter;

    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v7, 0x7f080264

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->addSection(Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 101
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 102
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->mData:Lcom/vkcoffee/android/ui/util/SectionSegmenter;

    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v7, 0x7f080263

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->addSection(Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 105
    :cond_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->mData:Lcom/vkcoffee/android/ui/util/SectionSegmenter;

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->setData(Lcom/vkcoffee/android/ui/util/Segmenter;)Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    .line 106
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->loaded:Z

    .line 107
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-nez v5, :cond_4

    .line 113
    :goto_2
    return-void

    .line 110
    :cond_4
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->updateList()V

    .line 111
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->dataLoaded()V

    .line 112
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->refreshDone()V

    goto :goto_2
.end method

.method public setSelectionListener(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/fragments/groups/EventsFragment;
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
            "Lcom/vkcoffee/android/fragments/groups/EventsFragment;"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "l":Lcom/vkcoffee/android/functions/VoidF1;, "Lcom/vkcoffee/android/functions/VoidF1<Lcom/vkcoffee/android/api/Group;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->mSelectionListener:Lcom/vkcoffee/android/functions/VoidF1;

    .line 144
    return-object p0
.end method

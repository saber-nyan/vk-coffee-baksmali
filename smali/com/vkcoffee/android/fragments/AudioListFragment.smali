.class public Lcom/vkcoffee/android/fragments/AudioListFragment;
.super Lcom/vkcoffee/android/fragments/VKRecyclerFragment;
.source "AudioListFragment.java"

# interfaces
.implements Lcom/vk/attachpicker/SupportExternalToolbarContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;,
        Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListFragment$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;,
        Lcom/vkcoffee/android/fragments/AudioListFragment$SectionHeaderAdapter;,
        Lcom/vkcoffee/android/fragments/AudioListFragment$SectionViewHolder;,
        Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllAdapter;,
        Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllViewHolder;,
        Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsAdapter;,
        Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/VKRecyclerFragment",
        "<",
        "Lcom/vkcoffee/android/AudioFile;",
        ">;",
        "Lcom/vk/attachpicker/SupportExternalToolbarContainer;"
    }
.end annotation


# static fields
.field public static final SELECT_MODE_ARGUMENT:Ljava/lang/String; = "select"


# instance fields
.field private adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

.field private animatingTransitionOut:Z

.field private audioProgressCallback:Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;

.field private currentPlaylist:I

.field private displayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;"
        }
    .end annotation
.end field

.field private errorRequest:Lme/grishka/appkit/api/APIRequest;

.field private handler:Landroid/os/Handler;

.field private itemProgress:Landroid/widget/ProgressBar;

.field private localSearchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;"
        }
    .end annotation
.end field

.field private nowPlaying:Lcom/vkcoffee/android/AudioFile;

.field private panelProgress:Landroid/widget/ProgressBar;

.field private playerBar:Landroid/view/View;

.field private playlists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/AudioPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Landroid/content/BroadcastReceiver;

.field private searchLoader:Ljava/lang/Runnable;

.field private searchRequest:Lme/grishka/appkit/api/APIRequest;

.field private searchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;"
        }
    .end annotation
.end field

.field private searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

.field private searching:Z

.field private select:Z

.field private tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 562
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;-><init>(I)V

    .line 103
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->animatingTransitionOut:Z

    .line 104
    new-instance v0, Lcom/vkcoffee/android/fragments/AudioListFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$1;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->audioProgressCallback:Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;

    .line 116
    iput v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentPlaylist:I

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->displayList:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->handler:Landroid/os/Handler;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->localSearchResults:Ljava/util/ArrayList;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkcoffee/android/AudioFile;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playlists:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$2;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->searchResults:Ljava/util/ArrayList;

    .line 237
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->searching:Z

    .line 238
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->select:Z

    .line 563
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->panelProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->itemProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkcoffee/android/fragments/AudioListFragment;)I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentPlaylist:I

    return v0
.end method

.method static synthetic access$12(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->displayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkcoffee/android/fragments/AudioListFragment;I)V
    .locals 0

    .prologue
    .line 548
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->deleteAudio(I)V

    return-void
.end method

.method static synthetic access$14(Lcom/vkcoffee/android/fragments/AudioListFragment;I)V
    .locals 0

    .prologue
    .line 798
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setVisibilityForPlayerBar(I)V

    return-void
.end method

.method static synthetic access$15(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->searching:Z

    return v0
.end method

.method static synthetic access$18(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->localSearchResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$19(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->searchResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->select:Z

    return v0
.end method

.method static synthetic access$21(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->animatingTransitionOut:Z

    return v0
.end method

.method static synthetic access$22(Lcom/vkcoffee/android/fragments/AudioListFragment;Landroid/widget/ProgressBar;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->itemProgress:Landroid/widget/ProgressBar;

    return-void
.end method

.method static synthetic access$23(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;)Z
    .locals 1

    .prologue
    .line 806
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->showContextMenuFor(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$24(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playlists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$25(Lcom/vkcoffee/android/fragments/AudioListFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1391
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->loadSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/api/APIRequest;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->searchRequest:Lme/grishka/appkit/api/APIRequest;

    return-object v0
.end method

.method static synthetic access$27(Lcom/vkcoffee/android/fragments/AudioListFragment;Lme/grishka/appkit/api/APIRequest;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->searchRequest:Lme/grishka/appkit/api/APIRequest;

    return-void
.end method

.method static synthetic access$28(Lcom/vkcoffee/android/fragments/AudioListFragment;Z)V
    .locals 0

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->searching:Z

    return-void
.end method

.method static synthetic access$29(Lcom/vkcoffee/android/fragments/AudioListFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1425
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->doLocalSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lcom/vkcoffee/android/AudioFile;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkcoffee/android/AudioFile;

    return-object v0
.end method

.method static synthetic access$30(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->contentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$31(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z
    .locals 1

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->isInContextOfAttachActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$32(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;)V
    .locals 0

    .prologue
    .line 917
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->showEditDialog(Lcom/vkcoffee/android/AudioFile;)V

    return-void
.end method

.method static synthetic access$33(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;)V
    .locals 0

    .prologue
    .line 960
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->showDeleteDialog(Lcom/vkcoffee/android/AudioFile;)V

    return-void
.end method

.method static synthetic access$34(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;)Z
    .locals 1

    .prologue
    .line 973
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->enqueue(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$35(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 943
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vkcoffee/android/fragments/AudioListFragment;->editAudio(Lcom/vkcoffee/android/AudioFile;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$36(Lcom/vkcoffee/android/fragments/AudioListFragment;)V
    .locals 0

    .prologue
    .line 1021
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->addSystemPlaylists()V

    return-void
.end method

.method static synthetic access$37(Lcom/vkcoffee/android/fragments/AudioListFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setSpinnerItems(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$38(Lcom/vkcoffee/android/fragments/AudioListFragment;Z)V
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->animatingTransitionOut:Z

    return-void
.end method

.method static synthetic access$39(Lcom/vkcoffee/android/fragments/AudioListFragment;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->showContent()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/utils/MergeRecyclerAdapter;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    return-object v0
.end method

.method static synthetic access$40(Lcom/vkcoffee/android/fragments/AudioListFragment;Lme/grishka/appkit/api/APIRequest;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    return-void
.end method

.method static synthetic access$41(Lcom/vkcoffee/android/fragments/AudioListFragment;I)V
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentPlaylist:I

    return-void
.end method

.method static synthetic access$42(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->refreshing:Z

    return v0
.end method

.method static synthetic access$43(Lcom/vkcoffee/android/fragments/AudioListFragment;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setSelectedNavigationItem(I)V

    return-void
.end method

.method static synthetic access$44(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/api/APIRequest;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    return-object v0
.end method

.method static synthetic access$45(Lcom/vkcoffee/android/fragments/AudioListFragment;Lme/grishka/appkit/api/APIRequest;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->errorRequest:Lme/grishka/appkit/api/APIRequest;

    return-void
.end method

.method static synthetic access$46(Lcom/vkcoffee/android/fragments/AudioListFragment;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$47(Lcom/vkcoffee/android/fragments/AudioListFragment;I)V
    .locals 0

    .prologue
    .line 1272
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setCurrentPlaylist(I)V

    return-void
.end method

.method static synthetic access$48(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/views/SwipeRefreshLayoutI;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;Z)V
    .locals 0

    .prologue
    .line 1230
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->animateBottomBar(Lcom/vkcoffee/android/AudioFile;Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;)V
    .locals 0

    .prologue
    .line 1204
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->showBottomBar(Lcom/vkcoffee/android/AudioFile;)V

    return-void
.end method

.method static synthetic access$7(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkcoffee/android/AudioFile;

    return-void
.end method

.method static synthetic access$8(Lcom/vkcoffee/android/fragments/AudioListFragment;IZ)V
    .locals 0

    .prologue
    .line 1138
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->animateStateTransition(IZ)V

    return-void
.end method

.method static synthetic access$9(Lcom/vkcoffee/android/fragments/AudioListFragment;)I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->uid:I

    return v0
.end method

.method private addSystemPlaylists()V
    .locals 9

    .prologue
    const v8, 0x7f080422

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1022
    iget v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->uid:I

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v0, v1, :cond_1

    .line 1023
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playlists:Ljava/util/ArrayList;

    new-instance v1, Lcom/vkcoffee/android/AudioPlaylist;

    const v2, 0x7f0802b8

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lcom/vkcoffee/android/AudioPlaylist;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playlists:Ljava/util/ArrayList;

    new-instance v1, Lcom/vkcoffee/android/AudioPlaylist;

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v7, v2}, Lcom/vkcoffee/android/AudioPlaylist;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1031
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playlists:Ljava/util/ArrayList;

    new-instance v1, Lcom/vkcoffee/android/AudioPlaylist;

    const/4 v2, -0x2

    const v3, 0x7f08008e

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/AudioPlaylist;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    return-void

    .line 1026
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playlists:Ljava/util/ArrayList;

    new-instance v1, Lcom/vkcoffee/android/AudioPlaylist;

    const v2, 0x7f080580

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "username_first_only"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lcom/vkcoffee/android/AudioPlaylist;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    iget v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->uid:I

    if-lez v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playlists:Ljava/util/ArrayList;

    new-instance v1, Lcom/vkcoffee/android/AudioPlaylist;

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v7, v2}, Lcom/vkcoffee/android/AudioPlaylist;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private animateBottomBar(Lcom/vkcoffee/android/AudioFile;Z)V
    .locals 12
    .param p1, "f"    # Lcom/vkcoffee/android/AudioFile;
    .param p2, "forward"    # Z

    .prologue
    .line 1231
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v3, 0x7f10015f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ViewFlipper;

    .line 1232
    .local v11, "vs":Landroid/widget/ViewFlipper;
    invoke-virtual {v11}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v11, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1233
    .local v10, "v":Landroid/view/View;
    const v2, 0x7f100162

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    const v2, 0x7f100161

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1235
    const v2, 0x7f100162

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1236
    const v2, 0x7f100161

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1237
    iget v3, p1, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget v4, p1, Lcom/vkcoffee/android/AudioFile;->aid:I

    const v2, 0x7f100160

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4, v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getAndShowCover(IILandroid/widget/ImageView;)V

    .line 1238
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz p2, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_1
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1239
    .local v0, "in":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1240
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1241
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz p2, :cond_2

    const/high16 v9, -0x40800000    # -1.0f

    :goto_2
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1242
    .local v1, "out":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->panelProgress:Landroid/widget/ProgressBar;

    sget-object v3, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    iget-boolean v3, v3, Lcom/vkcoffee/android/AudioPlayerService;->initing:Z

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1243
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1244
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1245
    invoke-virtual {v11, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1246
    invoke-virtual {v11, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1247
    invoke-virtual {v11}, Landroid/widget/ViewFlipper;->showNext()V

    .line 1248
    return-void

    .line 1232
    .end local v0    # "in":Landroid/view/animation/Animation;
    .end local v1    # "out":Landroid/view/animation/Animation;
    .end local v10    # "v":Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1238
    .restart local v10    # "v":Landroid/view/View;
    :cond_1
    const/high16 v6, -0x40800000    # -1.0f

    goto :goto_1

    .line 1241
    .restart local v0    # "in":Landroid/view/animation/Animation;
    :cond_2
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_2
.end method

.method private animateStateTransition(IZ)V
    .locals 10
    .param p1, "item"    # I
    .param p2, "in"    # Z

    .prologue
    .line 1139
    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->select:Z

    if-nez v5, :cond_0

    .line 1140
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v5, p1}, Lme/grishka/appkit/views/UsableRecyclerView;->findViewHolderForAdapterPosition(I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v1

    .line 1141
    .local v1, "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    .line 1142
    iget-object v4, v1, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1143
    .local v4, "v":Landroid/view/View;
    const v5, 0x7f100172

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1144
    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    .line 1147
    .local v2, "iconSize":I
    if-eqz p2, :cond_1

    .line 1148
    const v5, 0x7f100172

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1149
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->panelProgress:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1151
    .local v0, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const v5, 0x7f100172

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "translationX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    neg-int v9, v2

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    const v5, 0x7f100173

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "translationX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    neg-int v9, v2

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    const v5, 0x7f100172

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1154
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1155
    .local v3, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1156
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1179
    .end local v0    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .end local v2    # "iconSize":I
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    .end local v4    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1159
    .restart local v1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .restart local v2    # "iconSize":I
    .restart local v4    # "v":Landroid/view/View;
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->animatingTransitionOut:Z

    .line 1160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1161
    .restart local v0    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const v5, 0x7f100172

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "translationX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    neg-int v9, v2

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    const v5, 0x7f100173

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "translationX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    neg-int v9, v2

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    const v5, 0x7f100172

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1165
    .restart local v3    # "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1166
    new-instance v5, Lcom/vkcoffee/android/fragments/AudioListFragment$14;

    invoke-direct {v5, p0, v4}, Lcom/vkcoffee/android/fragments/AudioListFragment$14;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1175
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1153
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static checkSimMode()Z
    .locals 3

    .prologue
    .line 1524
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "simMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private deleteAudio(I)V
    .locals 3
    .param p1, "aid"    # I

    .prologue
    .line 549
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 550
    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 559
    :goto_0
    return-void

    .line 551
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    .line 552
    .local v0, "file":Lcom/vkcoffee/android/AudioFile;
    iget v2, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    if-ne v2, p1, :cond_0

    .line 553
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 554
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->displayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 555
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    invoke-virtual {v2}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private doLocalSearch(Ljava/lang/String;)V
    .locals 13
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/4 v12, -0x1

    const/16 v11, 0x8

    const/4 v7, 0x0

    .line 1426
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->localSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1427
    if-nez p1, :cond_1

    .line 1428
    iput-boolean v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->searching:Z

    .line 1429
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    invoke-interface {v6, v7}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->setVisibility(I)V

    .line 1430
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->progress:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1461
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1434
    .local v5, "words":[Ljava/lang/String;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->displayList:Ljava/util/ArrayList;

    .line 1435
    .local v3, "searchList":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .line 1436
    .local v1, "i":I
    array-length v8, v5

    move v6, v7

    :goto_1
    if-lt v6, v8, :cond_2

    .line 1451
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    if-eqz v6, :cond_0

    .line 1452
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    invoke-virtual {v6}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyDataSetChanged()V

    .line 1453
    iget-boolean v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->searching:Z

    if-nez v6, :cond_7

    .line 1454
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    invoke-interface {v6, v7}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->setVisibility(I)V

    .line 1455
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->progress:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1436
    :cond_2
    aget-object v4, v5, v6

    .line 1437
    .local v4, "word":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1438
    .local v2, "it":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1444
    array-length v9, v5

    add-int/lit8 v10, v1, 0x1

    if-le v9, v10, :cond_4

    .line 1445
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "searchList":Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1446
    .restart local v3    # "searchList":Ljava/util/ArrayList;
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->localSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1447
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->localSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1449
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 1436
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1439
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    .line 1440
    .local v0, "f":Lcom/vkcoffee/android/AudioFile;
    iget-object v9, v0, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gt v9, v12, :cond_6

    iget-object v9, v0, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-le v9, v12, :cond_3

    :cond_6
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->localSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1441
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->localSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1456
    .end local v0    # "f":Lcom/vkcoffee/android/AudioFile;
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v4    # "word":Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->localSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 1457
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    invoke-interface {v6, v11}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->setVisibility(I)V

    .line 1458
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->progress:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private editAudio(Lcom/vkcoffee/android/AudioFile;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 8
    .param p1, "file"    # Lcom/vkcoffee/android/AudioFile;
    .param p2, "newTitle"    # Ljava/lang/String;
    .param p3, "newArtist"    # Ljava/lang/String;
    .param p4, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 944
    move-object v3, p4

    .line 945
    .local v3, "dialog2":Landroid/app/Dialog;
    move-object v4, p1

    .line 946
    .local v4, "audioFile":Lcom/vkcoffee/android/AudioFile;
    move-object v5, p2

    .line 947
    .local v5, "str":Ljava/lang/String;
    move-object v6, p3

    .line 948
    .local v6, "str2":Ljava/lang/String;
    new-instance v7, Lcom/vkcoffee/android/api/audio/AudioEdit;

    invoke-direct {v7, p1, p2, p3}, Lcom/vkcoffee/android/api/audio/AudioEdit;-><init>(Lcom/vkcoffee/android/AudioFile;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vkcoffee/android/fragments/AudioListFragment$11;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/fragments/AudioListFragment$11;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Landroid/app/Fragment;Landroid/app/Dialog;Lcom/vkcoffee/android/AudioFile;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/vkcoffee/android/api/audio/AudioEdit;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 957
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 958
    return-void
.end method

.method private enqueue(Lcom/vkcoffee/android/AudioFile;)Z
    .locals 3
    .param p1, "file"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    const/4 v0, 0x0

    .line 974
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->select:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1, p1}, Lcom/vkcoffee/android/AudioPlayerService;->enqueue(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 978
    :cond_0
    :goto_0
    return v0

    .line 977
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080089

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 978
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getAid()I
    .locals 3

    .prologue
    .line 1535
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "aid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getAndShowCover(IILandroid/widget/ImageView;)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 1255
    const v0, 0x7f0202b5

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1256
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GET COVER "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    const/4 v0, 0x1

    new-instance v1, Lcom/vkcoffee/android/fragments/AudioListFragment$16;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/AudioListFragment$16;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;IILandroid/widget/ImageView;)V

    invoke-static {p2, p1, v0, v1}, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->getCoverImage(IIILcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    .line 1270
    return-void
.end method

.method private getBottomBarHeight()I
    .locals 1

    .prologue
    .line 1251
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->isTablet:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42900000    # 72.0f

    :goto_0
    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x42600000    # 56.0f

    goto :goto_0
.end method

.method public static getOid()I
    .locals 3

    .prologue
    .line 1538
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "oid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private isInContextOfAttachActivity()Z
    .locals 1

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vk/attachpicker/AttachActivity;

    return v0
.end method

.method private loadRecommendations()V
    .locals 2

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    invoke-virtual {v0}, Lme/grishka/appkit/api/APIRequest;->cancel()V

    .line 1366
    :cond_0
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->refreshing:Z

    if-nez v0, :cond_1

    .line 1367
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->showProgress()V

    .line 1369
    :cond_1
    new-instance v0, Lcom/vkcoffee/android/api/audio/AudioGetRecommendations;

    iget v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->uid:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/audio/AudioGetRecommendations;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/AudioListFragment$19;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$19;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/audio/AudioGetRecommendations;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1388
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1369
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 1389
    return-void
.end method

.method private loadSaved()V
    .locals 2

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    invoke-virtual {v0}, Lme/grishka/appkit/api/APIRequest;->cancel()V

    .line 1467
    :cond_0
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->refreshing:Z

    if-nez v0, :cond_1

    .line 1468
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->showProgress()V

    .line 1470
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/fragments/AudioListFragment$21;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$21;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1488
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1489
    return-void
.end method

.method private loadSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->searchRequest:Lme/grishka/appkit/api/APIRequest;

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->searchRequest:Lme/grishka/appkit/api/APIRequest;

    invoke-virtual {v0}, Lme/grishka/appkit/api/APIRequest;->cancel()V

    .line 1394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->searchRequest:Lme/grishka/appkit/api/APIRequest;

    .line 1396
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->errorView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1397
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->errorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1399
    :cond_1
    new-instance v0, Lcom/vkcoffee/android/api/audio/AudioSearch;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/api/audio/AudioSearch;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/fragments/AudioListFragment$20;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$20;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/audio/AudioSearch;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1422
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1399
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->searchRequest:Lme/grishka/appkit/api/APIRequest;

    .line 1423
    return-void
.end method

.method public static offSimMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1521
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "simMode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "simMode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1522
    :cond_0
    return-void
.end method

.method public static onSimMode()V
    .locals 3

    .prologue
    .line 1518
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "simMode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1519
    return-void
.end method

.method public static setAid(I)V
    .locals 2
    .param p0, "aid"    # I

    .prologue
    .line 1528
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "aid"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1529
    return-void
.end method

.method private setCurrentPlaylist(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1273
    iput p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentPlaylist:I

    .line 1274
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1275
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->loadData()V

    .line 1292
    :cond_0
    :goto_0
    return-void

    .line 1278
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->displayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1279
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1280
    .local v1, "it":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1286
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    if-eqz v2, :cond_3

    .line 1287
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    invoke-virtual {v2}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyDataSetChanged()V

    .line 1289
    :cond_3
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-eqz v2, :cond_0

    .line 1290
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v2}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    goto :goto_0

    .line 1281
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    .line 1282
    .local v0, "f":Lcom/vkcoffee/android/AudioFile;
    if-eqz p1, :cond_5

    iget v2, v0, Lcom/vkcoffee/android/AudioFile;->playlistID:I

    if-ne v2, p1, :cond_2

    .line 1283
    :cond_5
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->displayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static setOid(I)V
    .locals 2
    .param p0, "oid"    # I

    .prologue
    .line 1531
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "oid"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1532
    return-void
.end method

.method private setVisibilityForPlayerBar(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 799
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 800
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->select:Z

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 804
    :cond_2
    return-void
.end method

.method private showBottomBar(Lcom/vkcoffee/android/AudioFile;)V
    .locals 7
    .param p1, "f"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    const v6, 0x7f100162

    const v5, 0x7f100161

    const/4 v4, 0x1

    .line 1205
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v3, 0x7f10015f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    .line 1206
    .local v1, "vs":Landroid/widget/ViewFlipper;
    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1207
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1209
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1210
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1211
    iget v3, p1, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget v4, p1, Lcom/vkcoffee/android/AudioFile;->aid:I

    const v2, 0x7f100160

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4, v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getAndShowCover(IILandroid/widget/ImageView;)V

    .line 1212
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setVisibilityForPlayerBar(I)V

    .line 1213
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/fragments/AudioListFragment$15;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$15;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1223
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v4}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v5}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingRight()I

    move-result v5

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getBottomBarHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 1224
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    if-eqz v2, :cond_0

    .line 1225
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v4}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v5}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingRight()I

    move-result v5

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getBottomBarHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 1227
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->panelProgress:Landroid/widget/ProgressBar;

    sget-object v3, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    iget-boolean v3, v3, Lcom/vkcoffee/android/AudioPlayerService;->initing:Z

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1228
    return-void
.end method

.method private showContextMenuFor(Lcom/vkcoffee/android/AudioFile;)Z
    .locals 5
    .param p1, "file"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    .line 807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 809
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p1, Lcom/vkcoffee/android/AudioFile;->oid:I

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v2, v3, :cond_0

    iget v2, p1, Lcom/vkcoffee/android/AudioFile;->oid:I

    if-gez v2, :cond_1

    iget v2, p1, Lcom/vkcoffee/android/AudioFile;->oid:I

    neg-int v2, v2

    invoke-static {v2}, Lcom/vkcoffee/android/data/Groups;->isGroupAdmin(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 810
    :cond_0
    const v2, 0x7f08013d

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    const-string v2, "edit"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    const v2, 0x7f080119

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    const-string v2, "delete"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    const-string v2, "\u041f\u043e\u043a\u0430\u0437\u0430\u0442\u044c \u043f\u043e\u0445\u043e\u0436\u0438\u0435"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    const-string v2, "sim"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    const-string v2, "\u041a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u043d\u0430\u0437\u0432\u0430\u043d\u0438\u0435"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    const-string v2, "copy"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    const-string v2, "\u0421\u043a\u0430\u0447\u0430\u0442\u044c"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    const-string v2, "download"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    const-string v2, "\u0421\u043a\u0430\u0447\u0430\u0442\u044c \u0432 \u043a\u044d\u0448"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    const-string v2, "downloadCache"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    :cond_1
    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->select:Z

    if-nez v2, :cond_2

    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v2, p1}, Lcom/vkcoffee/android/AudioPlayerService;->canEnqueue(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 826
    const v2, 0x7f080087

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    const-string v2, "enqueue"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 830
    const/4 v2, 0x0

    .line 914
    :goto_0
    return v2

    .line 832
    :cond_3
    new-instance v2, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080085

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/vkcoffee/android/fragments/AudioListFragment$9;

    invoke-direct {v4, p0, v1, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment$9;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Ljava/util/List;Lcom/vkcoffee/android/AudioFile;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 913
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 914
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showDeleteDialog(Lcom/vkcoffee/android/AudioFile;)V
    .locals 3
    .param p1, "file"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    .line 961
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08011c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;Landroid/content/Context;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802d7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 962
    return-void
.end method

.method private showEditDialog(Lcom/vkcoffee/android/AudioFile;)V
    .locals 8
    .param p1, "file"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    const/4 v7, 0x0

    .line 918
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030049

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 919
    .local v6, "root":Landroid/view/View;
    const v0, 0x7f1000dd

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 920
    .local v4, "title":Landroid/widget/EditText;
    const v0, 0x7f100169

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 921
    .local v5, "subtitle":Landroid/widget/EditText;
    if-eqz p1, :cond_0

    .line 922
    iget-object v0, p1, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 923
    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 924
    iget-object v0, p1, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 926
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08013f

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08031e

    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800b7

    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 927
    .local v2, "dialog":Landroid/app/AlertDialog;
    move-object v3, p1

    .line 928
    .local v3, "audioFile":Lcom/vkcoffee/android/AudioFile;
    new-instance v0, Lcom/vkcoffee/android/fragments/AudioListFragment$10;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/fragments/AudioListFragment$10;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Landroid/app/AlertDialog;Lcom/vkcoffee/android/AudioFile;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 940
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 941
    return-void
.end method

.method private updateBottomBarButtons()V
    .locals 7

    .prologue
    .line 1184
    const/4 v3, 0x0

    .line 1185
    .local v3, "i2":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    const/high16 v6, 0x43fa0000    # 500.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    .line 1186
    const/4 v4, 0x1

    .line 1190
    .local v4, "showBtns":Z
    :goto_0
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v6, 0x7f100163

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1191
    .local v0, "findViewById":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 1192
    const/4 v2, 0x0

    .line 1196
    .local v2, "i":I
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1197
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v6, 0x7f100165

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1198
    .local v1, "findViewById2":Landroid/view/View;
    if-nez v4, :cond_0

    .line 1199
    const/16 v3, 0x8

    .line 1201
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1202
    return-void

    .line 1188
    .end local v0    # "findViewById":Landroid/view/View;
    .end local v1    # "findViewById2":Landroid/view/View;
    .end local v2    # "i":I
    .end local v4    # "showBtns":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "showBtns":Z
    goto :goto_0

    .line 1194
    .restart local v0    # "findViewById":Landroid/view/View;
    :cond_2
    const/16 v2, 0x8

    .restart local v2    # "i":I
    goto :goto_1
.end method

.method private updateNavItems()V
    .locals 7

    .prologue
    const v6, 0x7f080422

    const/4 v5, 0x0

    .line 1035
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1036
    .local v0, "navItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/vkcoffee/android/fragments/AudioListFragment;->checkSimMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1037
    const-string v1, "\u041f\u043e\u0445\u043e\u0436\u0438\u0435 \u0430\u0443\u0434\u0438\u043e\u0437\u0430\u043f\u0438\u0441\u0438"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setSpinnerItems(Ljava/util/List;)V

    .line 1039
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setRefreshEnabled(Z)V

    .line 1080
    :goto_0
    return-void

    .line 1042
    :cond_0
    iget v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->uid:I

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v1, v2, :cond_2

    .line 1043
    const v1, 0x7f0802b8

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1044
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    :cond_1
    :goto_1
    const v1, 0x7f08008e

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    if-eqz v1, :cond_3

    .line 1053
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->addSystemPlaylists()V

    .line 1054
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1055
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/fragments/AudioListFragment;->onSpinnerItemSelected(I)Z

    .line 1059
    :goto_2
    new-instance v1, Lcom/vkcoffee/android/api/audio/AudioGetAlbums;

    iget v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->uid:I

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/api/audio/AudioGetAlbums;-><init>(I)V

    new-instance v2, Lcom/vkcoffee/android/fragments/AudioListFragment$13;

    invoke-direct {v2, p0, v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$13;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/audio/AudioGetAlbums;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 1079
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 1046
    :cond_2
    const v1, 0x7f080580

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "username"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    iget v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->uid:I

    if-lez v1, :cond_1

    .line 1048
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1057
    :cond_3
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setSpinnerItems(Ljava/util/List;)V

    goto :goto_2
.end method


# virtual methods
.method protected canGoBack()Z
    .locals 1

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->isInContextOfAttachActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    const/4 v0, 0x0

    .line 788
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->canGoBack()Z

    move-result v0

    goto :goto_0
.end method

.method public doLoadData(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 1295
    invoke-static {}, Lcom/vkcoffee/android/fragments/AudioListFragment;->checkSimMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1296
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    invoke-virtual {v0}, Lme/grishka/appkit/api/APIRequest;->cancel()V

    .line 1299
    :cond_0
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->refreshing:Z

    if-nez v0, :cond_1

    .line 1300
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->showProgress()V

    .line 1302
    :cond_1
    new-instance v0, Lcom/vkcoffee/android/apicoffee/AudioGetSim;

    invoke-static {}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getOid()I

    move-result v1

    invoke-static {}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getAid()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/apicoffee/AudioGetSim;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/fragments/AudioListFragment$17;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$17;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/apicoffee/AudioGetSim;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1325
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1302
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 1360
    :goto_0
    return-void

    .line 1330
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    if-eqz v0, :cond_3

    .line 1331
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    invoke-virtual {v0}, Lme/grishka/appkit/api/APIRequest;->cancel()V

    .line 1333
    :cond_3
    iget v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentPlaylist:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 1334
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->loadRecommendations()V

    goto :goto_0

    .line 1335
    :cond_4
    iget v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentPlaylist:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_5

    .line 1336
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->loadSaved()V

    goto :goto_0

    .line 1338
    :cond_5
    new-instance v0, Lcom/vkcoffee/android/api/audio/AudioGet;

    iget v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->uid:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/audio/AudioGet;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/AudioListFragment$18;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$18;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/audio/AudioGet;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1358
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1338
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    goto :goto_0
.end method

.method protected getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 990
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    if-nez v0, :cond_1

    .line 991
    new-instance v0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    invoke-direct {v0}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    .line 992
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    invoke-virtual {v0, v3}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->setHasStableIds(Z)V

    .line 993
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->select:Z

    if-nez v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    new-instance v1, Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllAdapter;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllAdapter;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    new-instance v1, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;I)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 997
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    new-instance v1, Lcom/vkcoffee/android/fragments/AudioListFragment$SectionHeaderAdapter;

    const v2, 0x7f080461

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/AudioListFragment$SectionHeaderAdapter;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 998
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    new-instance v1, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;

    invoke-direct {v1, p0, v3}, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;I)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 1000
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    return-object v0
.end method

.method public hasNavigationDrawer()Z
    .locals 1

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->isInContextOfAttachActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    const/4 v0, 0x0

    .line 795
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->hasNavigationDrawer()Z

    move-result v0

    goto :goto_0
.end method

.method lambda$showDeleteDialog$311(Lcom/vkcoffee/android/AudioFile;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "audioFile"    # Lcom/vkcoffee/android/AudioFile;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .prologue
    .line 965
    new-instance v0, Lcom/vkcoffee/android/api/audio/AudioDelete;

    iget v1, p1, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget v2, p1, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/audio/AudioDelete;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/fragments/AudioListFragment$12;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/vkcoffee/android/fragments/AudioListFragment$12;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Landroid/content/Context;Lcom/vkcoffee/android/AudioFile;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/audio/AudioDelete;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 970
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 971
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 9
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x1

    .line 566
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    .line 567
    sget-boolean v2, Lcom/vkcoffee/android/Global;->isTablet:Z

    .line 568
    .local v2, "z":Z
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->isTablet:Z

    .line 569
    if-eqz v2, :cond_0

    .line 570
    const v3, 0x7f03004a

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setLayout(I)V

    .line 572
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "select"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->select:Z

    .line 573
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "uid"

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->uid:I

    .line 574
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "audio"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/ActivityUtils;->setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 575
    const v3, 0x7f0802db

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setEmptyText(I)V

    .line 576
    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->isTablet:Z

    if-eqz v3, :cond_4

    .line 578
    iget v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->uid:I

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v3, v4, :cond_3

    .line 579
    const v3, 0x7f0802b8

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, "string":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 587
    .end local v1    # "string":Ljava/lang/CharSequence;
    :goto_1
    invoke-static {p1}, Lcom/vkcoffee/android/cache/AudioCache;->fillIDs(Landroid/content/Context;)V

    .line 588
    new-instance v3, Lcom/vkcoffee/android/ui/SearchViewWrapper;

    new-instance v4, Lcom/vkcoffee/android/fragments/AudioListFragment$3;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$3;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V

    .line 607
    const/16 v5, 0x190

    invoke-direct {v3, p1, v4, v5}, Lcom/vkcoffee/android/ui/SearchViewWrapper;-><init>(Landroid/app/Activity;Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;I)V

    .line 588
    iput-object v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .line 608
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "search"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 609
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "search"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "q":Ljava/lang/String;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v3, v8}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->setExpanded(Z)V

    .line 611
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v3, v0}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->setText(Ljava/lang/String;)V

    .line 612
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->clearFocus()V

    .line 613
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->loadSearch(Ljava/lang/String;)V

    .line 617
    .end local v0    # "q":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->isInContextOfAttachActivity()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 618
    const v3, 0x7f030172

    iput v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->spinnerViewResourceId:I

    .line 620
    :cond_2
    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setHasOptionsMenu(Z)V

    .line 621
    return-void

    .line 581
    :cond_3
    const v3, 0x7f080580

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "username"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "string":Ljava/lang/CharSequence;
    goto :goto_0

    .line 585
    .end local v1    # "string":Ljava/lang/CharSequence;
    :cond_4
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 614
    :cond_5
    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected()Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->uid:I

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v3, v4, :cond_1

    .line 615
    :cond_6
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->loadData()V

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 1134
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1135
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->updateBottomBarButtons()V

    .line 1136
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 1083
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1084
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1085
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkcoffee.android.UPDATE_AUDIO_LISTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1086
    const-string v1, "com.vkcoffee.android.SERVICE_STOPPING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1087
    const-string v1, "com.vkcoffee.android.ALBUM_ART_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1088
    const-string v1, "com.vkcoffee.android.AUDIO_FILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1089
    const-string v1, "com.vkcoffee.android.AUDIO_FILE_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1090
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1091
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1014
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalidate menu, removing="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->isRemoving()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 1017
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1019
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    .line 671
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 672
    .local v2, "view":Landroid/view/View;
    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->isTablet:Z

    if-eqz v5, :cond_0

    .line 673
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->contentView:Landroid/view/ViewGroup;

    new-instance v6, Lcom/vkcoffee/android/fragments/AudioListFragment$4;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$4;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 715
    const v5, 0x7f10016f

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lme/grishka/appkit/views/UsableRecyclerView;

    iput-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    .line 716
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v6, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Lme/grishka/appkit/views/UsableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 717
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v6, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsAdapter;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsAdapter;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V

    invoke-virtual {v5, v6}, Lme/grishka/appkit/views/UsableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 719
    :cond_0
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/high16 v6, 0x2000000

    invoke-virtual {v5, v6}, Lme/grishka/appkit/views/UsableRecyclerView;->setScrollBarStyle(I)V

    .line 720
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lme/grishka/appkit/views/UsableRecyclerView;->setClipToPadding(Z)V

    .line 721
    const v5, 0x7f030048

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    .line 722
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v6, 0x7f100166

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->panelProgress:Landroid/widget/ProgressBar;

    .line 723
    new-instance v0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;-><init>(Landroid/content/Context;)V

    .line 724
    .local v0, "pd":Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->setUseIntrinsicPadding(Z)V

    .line 725
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->setShowTrack(Z)V

    .line 726
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->panelProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 727
    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setVisibilityForPlayerBar(I)V

    .line 728
    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->isTablet:Z

    if-eqz v5, :cond_2

    .line 729
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->contentView:Landroid/view/ViewGroup;

    const v6, 0x7f10016b

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 733
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    :goto_0
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 734
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v6, 0x7f100164

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkcoffee/android/fragments/AudioListFragment$5;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$5;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 741
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v6, 0x7f100163

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkcoffee/android/fragments/AudioListFragment$6;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$6;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v6, 0x7f100165

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkcoffee/android/fragments/AudioListFragment$7;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$7;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v6, 0x7f10015f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkcoffee/android/fragments/AudioListFragment$8;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$8;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    sget-object v5, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v5, :cond_1

    .line 762
    sget-object v5, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v5}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkcoffee/android/AudioFile;

    .line 763
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkcoffee/android/AudioFile;

    if-eqz v5, :cond_1

    .line 764
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setVisibilityForPlayerBar(I)V

    .line 765
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v6, 0x7f10015f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ViewFlipper;

    .line 766
    .local v4, "vs":Landroid/widget/ViewFlipper;
    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 767
    .local v1, "v":Landroid/view/View;
    const v5, 0x7f100162

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkcoffee/android/AudioFile;

    iget-object v6, v6, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    const v5, 0x7f100161

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkcoffee/android/AudioFile;

    iget-object v6, v6, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    const v5, 0x7f100162

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 770
    const v5, 0x7f100161

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 771
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkcoffee/android/AudioFile;

    iget v6, v5, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkcoffee/android/AudioFile;

    iget v7, v5, Lcom/vkcoffee/android/AudioFile;->aid:I

    const v5, 0x7f100160

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-direct {p0, v6, v7, v5}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getAndShowCover(IILandroid/widget/ImageView;)V

    .line 772
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v6, 0x7f100164

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    sget-object v6, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f0201b7

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 773
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->panelProgress:Landroid/widget/ProgressBar;

    sget-object v6, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    iget-boolean v6, v6, Lcom/vkcoffee/android/AudioPlayerService;->initing:Z

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 774
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v6}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v7}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingTop()I

    move-result v7

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v8}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingRight()I

    move-result v8

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getBottomBarHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 775
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    if-eqz v5, :cond_1

    .line 776
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v6}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v7}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingTop()I

    move-result v7

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v8}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingRight()I

    move-result v8

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getBottomBarHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 780
    .end local v1    # "v":Landroid/view/View;
    .end local v4    # "vs":Landroid/widget/ViewFlipper;
    :cond_1
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->updateBottomBarButtons()V

    .line 781
    return-object v2

    .line 731
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->errorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .restart local v3    # "viewGroup":Landroid/view/ViewGroup;
    goto/16 :goto_0

    .line 772
    .restart local v1    # "v":Landroid/view/View;
    .restart local v4    # "vs":Landroid/widget/ViewFlipper;
    :cond_3
    const v6, 0x7f0201c2

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1094
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onDestroy()V

    .line 1096
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    invoke-virtual {v0}, Lme/grishka/appkit/api/APIRequest;->cancel()V

    .line 1102
    :cond_0
    return-void

    .line 1097
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 1004
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onDestroyView()V

    .line 1005
    invoke-static {}, Lcom/vkcoffee/android/fragments/AudioListFragment;->offSimMode()V

    .line 1006
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    .line 1007
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 1010
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onDetach()V

    .line 1011
    return-void
.end method

.method public onErrorRetryClick()V
    .locals 2

    .prologue
    .line 982
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->errorRequest:Lme/grishka/appkit/api/APIRequest;

    if-eqz v0, :cond_0

    .line 983
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onErrorRetryClick()V

    .line 984
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->errorRequest:Lme/grishka/appkit/api/APIRequest;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 985
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->errorRequest:Lme/grishka/appkit/api/APIRequest;

    check-cast v0, Lcom/vkcoffee/android/api/VKAPIRequest;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 987
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1124
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onPause()V

    .line 1125
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 1126
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1127
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v0, :cond_0

    .line 1128
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->enableVisualizer(Z)V

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->audioProgressCallback:Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerService;->removeProgressCallback(Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;)V

    .line 1131
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/high16 v5, 0x41000000    # 8.0f

    .line 1105
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onResume()V

    .line 1107
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 1108
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1109
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 1110
    invoke-direct {p0, v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setVisibilityForPlayerBar(I)V

    .line 1111
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v2}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingRight()I

    move-result v3

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 1112
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v2}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingRight()I

    move-result v3

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyDataSetChanged()V

    .line 1117
    :cond_1
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v0, :cond_2

    .line 1118
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->enableVisualizer(Z)V

    .line 1120
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->audioProgressCallback:Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerService;->addProgressCallback(Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;)V

    .line 1121
    return-void
.end method

.method protected onSpinnerItemSelected(I)Z
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 645
    move v0, p1

    .line 646
    .local v0, "initialPos":I
    if-nez p1, :cond_0

    .line 647
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setCurrentPlaylist(I)V

    .line 666
    :goto_0
    return v2

    .line 648
    :cond_0
    iget v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->uid:I

    if-lez v1, :cond_1

    if-eq p1, v2, :cond_5

    .line 649
    :cond_1
    iget v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->uid:I

    if-gez v1, :cond_2

    if-le p1, v2, :cond_2

    .line 650
    add-int/lit8 p1, p1, 0x1

    .line 652
    :cond_2
    add-int/lit8 p1, p1, -0x3

    .line 653
    if-gt p1, v3, :cond_3

    .line 654
    const/4 v1, -0x2

    iput v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentPlaylist:I

    .line 655
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->loadSaved()V

    goto :goto_0

    .line 657
    :cond_3
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->isTablet:Z

    if-eqz v1, :cond_4

    .line 658
    move p1, v0

    .line 660
    :cond_4
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->playlists:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/AudioPlaylist;

    iget v1, v1, Lcom/vkcoffee/android/AudioPlaylist;->id:I

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setCurrentPlaylist(I)V

    goto :goto_0

    .line 663
    :cond_5
    iput v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->currentPlaylist:I

    .line 664
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->loadRecommendations()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 624
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 625
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->updateNavItems()V

    .line 627
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->uid:I

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    :try_start_0
    iget v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->uid:I

    if-lez v0, :cond_2

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setSelectedNavigationItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->tabletPlaylistsView:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->notifyDataSetChanged()V

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 637
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->isInContextOfAttachActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 639
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 640
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->setRefreshEnabled(Z)V

    .line 642
    :cond_1
    return-void

    .line 629
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 630
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public provideToolbar(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1492
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    return-object v0
.end method

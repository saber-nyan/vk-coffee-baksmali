.class Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;
.super Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;
.source "GameCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/GameCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Adapter"
.end annotation


# static fields
.field public static final TYPE_APP_INFO:I = 0x7f10001e

.field public static final TYPE_BG:I = 0x7f10001f

.field public static final TYPE_BUTTON_SHOW_ALL:I = 0x7f100020

.field public static final TYPE_FEED_ENTRY_WITHOUT_DATE:I = 0x7f100022

.field public static final TYPE_FEED_ENTRY_WITH_DATE:I = 0x7f100021

.field public static final TYPE_INVITE:I = 0x7f100024

.field public static final TYPE_LEADER_BOARD_ITEM:I = 0x7f100025

.field public static final TYPE_LOADER:I = 0x7f100026

.field public static final TYPE_NEWS_TITLE:I = 0x7f100027

.field public static final TYPE_REQUEST:I = 0x7f100028

.field public static final TYPE_SETTING_BUTTON:I = 0x7f100029

.field public static final TYPE_SHARE_BUTTON:I = 0x7f10002a

.field public static final TYPE_TITLE:I = 0x7f100023


# instance fields
.field apiApplication:Lcom/vkcoffee/android/data/ApiApplication;

.field blockActivity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
            ">;"
        }
    .end annotation
.end field

.field blockAppInfo:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

.field blockAppInfoRef:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;

.field blockLeaderboard:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
            ">;"
        }
    .end annotation
.end field

.field blockLoader:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

.field blockNews:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

.field blockPaddingBottom:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

.field blockRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
            ">;"
        }
    .end annotation
.end field

.field blockSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
            ">;"
        }
    .end annotation
.end field

.field fragment:Lcom/vkcoffee/android/fragments/GameCardFragment;

.field final onClickListener:Landroid/view/View$OnClickListener;

.field res:Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

.field showAllRequest:Z

.field showNews:Z


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;Lcom/vkcoffee/android/fragments/GameCardFragment;)V
    .locals 2
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p2, "fragment"    # Lcom/vkcoffee/android/fragments/GameCardFragment;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 591
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;-><init>()V

    .line 571
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockAppInfo:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 572
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockPaddingBottom:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 573
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    .line 574
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockActivity:Ljava/util/ArrayList;

    .line 575
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockSettings:Ljava/util/ArrayList;

    .line 576
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockLeaderboard:Ljava/util/ArrayList;

    .line 577
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockNews:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 578
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockLoader:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 580
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockAppInfoRef:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;

    .line 582
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    .line 584
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->showNews:Z

    .line 585
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->showAllRequest:Z

    .line 592
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->onClickListener:Landroid/view/View$OnClickListener;

    .line 593
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->fragment:Lcom/vkcoffee/android/fragments/GameCardFragment;

    .line 594
    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->fillRequests()V

    return-void
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;
    .param p2, "x2"    # Landroid/app/Activity;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 509
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->fillGamePage(Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private fillGamePage(Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 11
    .param p1, "res"    # Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v10, 0x7f100023

    const v9, 0x7f0200ed

    const v8, 0x7f10001f

    .line 699
    iget-object v4, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->application:Lcom/vkcoffee/android/data/ApiApplication;

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->apiApplication:Lcom/vkcoffee/android/data/ApiApplication;

    .line 700
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    .line 703
    iget-object v4, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->application:Lcom/vkcoffee/android/data/ApiApplication;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->application:Lcom/vkcoffee/android/data/ApiApplication;

    iget-boolean v4, v4, Lcom/vkcoffee/android/data/ApiApplication;->installed:Z

    if-nez v4, :cond_0

    .line 704
    const v4, 0x7f10001e

    new-instance v5, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;

    iget-object v6, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->application:Lcom/vkcoffee/android/data/ApiApplication;

    iget-object v7, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->userPlayed:Ljava/util/ArrayList;

    invoke-direct {v5, v6, v7}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;-><init>(Lcom/vkcoffee/android/data/ApiApplication;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockAppInfoRef:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;

    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->topBottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockAppInfo:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 707
    :cond_0
    const v4, 0x7f02004e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->bottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockPaddingBottom:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 709
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->fillRequests()V

    .line 712
    iget-object v4, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->application:Lcom/vkcoffee/android/data/ApiApplication;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->application:Lcom/vkcoffee/android/data/ApiApplication;

    iget-boolean v4, v4, Lcom/vkcoffee/android/data/ApiApplication;->installed:Z

    if-eqz v4, :cond_1

    .line 713
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockSettings:Ljava/util/ArrayList;

    .line 714
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockSettings:Ljava/util/ArrayList;

    const v5, 0x7f100029

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->fragment:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-static {v5, v6}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockSettings:Ljava/util/ArrayList;

    const v5, 0x7f0200ee

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockSettings:Ljava/util/ArrayList;

    const v5, 0x7f10002a

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->fragment:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-static {v5, v6}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->bottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    :cond_1
    iget-object v4, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->gameLeaderboards:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 720
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockLeaderboard:Ljava/util/ArrayList;

    .line 721
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockLeaderboard:Ljava/util/ArrayList;

    const v5, 0x7f0801c8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->gameLeaderboards:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    const/4 v4, 0x5

    if-ge v2, v4, :cond_2

    .line 723
    new-instance v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;

    iget-object v4, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->gameLeaderboards:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/data/GameLeaderboard;

    add-int/lit8 v5, v2, 0x1

    invoke-direct {v0, v4, v5}, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;-><init>(Lcom/vkcoffee/android/data/GameLeaderboard;I)V

    .line 724
    .local v0, "data":Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockLeaderboard:Ljava/util/ArrayList;

    const v5, 0x7f100025

    invoke-static {v5, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 726
    .end local v0    # "data":Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockLeaderboard:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockPaddingBottom:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    .end local v2    # "i":I
    :cond_3
    iget-object v4, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->feed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 729
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockActivity:Ljava/util/ArrayList;

    .line 730
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0801bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 731
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockActivity:Ljava/util/ArrayList;

    invoke-static {v10, v3}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v4, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->feed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 733
    iget-object v4, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->feed:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/data/GameFeedEntry;

    .line 734
    .local v1, "gameFeedEntry":Lcom/vkcoffee/android/data/GameFeedEntry;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockActivity:Ljava/util/ArrayList;

    const v5, 0x7f100021

    invoke-static {v5, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    iget-object v4, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->feed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_4

    .line 736
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockActivity:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 739
    .end local v1    # "gameFeedEntry":Lcom/vkcoffee/android/data/GameFeedEntry;
    :cond_5
    iget-object v4, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->feed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_7

    .line 740
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockActivity:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockActivity:Ljava/util/ArrayList;

    const v5, 0x7f100020

    new-instance v6, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll$Ref;

    const v7, 0x7f0804e4

    invoke-static {p0, p3, p2}, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View$OnClickListener;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll$Ref;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-static {v5, v6}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->bottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    .end local v2    # "i":I
    .end local v3    # "title":Ljava/lang/String;
    :cond_6
    :goto_2
    new-instance v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->apiApplication:Lcom/vkcoffee/android/data/ApiApplication;

    iget v4, v4, Lcom/vkcoffee/android/data/ApiApplication;->author_group:I

    iget-boolean v5, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->isMember:Z

    invoke-direct {v0, v4, v5}, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;-><init>(IZ)V

    .line 749
    .local v0, "data":Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;
    const v4, 0x7f100027

    invoke-static {v4, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->none(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockNews:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 750
    const v4, 0x7f100026

    invoke-static {v4, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->none(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockLoader:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 751
    return-void

    .line 744
    .end local v0    # "data":Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;
    .restart local v2    # "i":I
    .restart local v3    # "title":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockActivity:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockPaddingBottom:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private fillRequests()V
    .locals 10

    .prologue
    const v9, 0x7f100028

    const v8, 0x7f100023

    const v7, 0x7f0801db

    const v6, 0x7f10001f

    const v5, 0x7f0200ed

    .line 639
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, "allCount":I
    const/4 v2, 0x0

    .line 642
    .local v2, "showedCount":I
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    iget-object v3, v3, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->requestsServer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 643
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    iget-object v3, v3, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->requestsServer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 644
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    .line 645
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    iget-object v3, v3, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->requestsServer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 647
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    iget-object v4, v4, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->requestsServer:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    add-int/lit8 v2, v2, 0x1

    .line 649
    if-eqz v1, :cond_0

    .line 650
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 654
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    iget-object v3, v3, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->requestsDb:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 655
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    iget-object v3, v3, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->requestsDb:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 656
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 657
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    .line 658
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    iget-object v3, v3, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->requestsDb:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    iget-object v3, v3, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->requestsDb:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    if-gt v1, v3, :cond_3

    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->showAllRequest:Z

    if-eqz v3, :cond_5

    :cond_3
    if-ltz v1, :cond_5

    .line 661
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 662
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    :cond_4
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    iget-object v4, v4, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->requestsDb:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    add-int/lit8 v2, v2, 0x1

    .line 660
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 667
    :cond_5
    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->showAllRequest:Z

    if-nez v3, :cond_7

    if-ge v2, v0, :cond_7

    .line 668
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    const v4, 0x7f100020

    new-instance v5, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll$Ref;

    const v6, 0x7f0801e2

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v5, v6, v7}, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll$Ref;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->bottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    .end local v1    # "i":I
    :cond_6
    :goto_2
    return-void

    .line 671
    .restart local v1    # "i":I
    :cond_7
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockPaddingBottom:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 673
    .end local v1    # "i":I
    :cond_8
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    .line 674
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockPaddingBottom:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public build()V
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->showNews:Z

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->build(Z)V

    .line 608
    return-void
.end method

.method public build(Z)V
    .locals 2
    .param p1, "showNews"    # Z

    .prologue
    .line 611
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->showNews:Z

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;>;"
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockAppInfo:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    if-eqz v1, :cond_0

    .line 615
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockAppInfo:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 619
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 621
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockActivity:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockActivity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 622
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 624
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockLeaderboard:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockLeaderboard:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 625
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockLeaderboard:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 627
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockSettings:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockSettings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 628
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockSettings:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 630
    :cond_4
    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockNews:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    if-eqz v1, :cond_6

    .line 631
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockNews:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_5
    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->setData(Ljava/util/List;)V

    .line 636
    return-void

    .line 632
    :cond_6
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->fragment:Lcom/vkcoffee/android/fragments/GameCardFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/GameCardFragment;->items:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->fragment:Lcom/vkcoffee/android/fragments/GameCardFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/GameCardFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 633
    :cond_7
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockLoader:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getImageCountForItem(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 680
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->type:I

    const v2, 0x7f10001e

    if-ne v0, v2, :cond_1

    .line 681
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockAppInfoRef:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;

    if-nez v0, :cond_0

    move v0, v1

    .line 683
    :goto_0
    return v0

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockAppInfoRef:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->getUsersCount()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 683
    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    const/4 v1, 0x0

    .line 689
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->type:I

    const v2, 0x7f10001e

    if-ne v0, v2, :cond_1

    .line 690
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockAppInfoRef:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 692
    :goto_0
    return-object v0

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->blockAppInfoRef:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;

    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->getProfilePhoto(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 692
    goto :goto_0
.end method

.method synthetic lambda$fillGamePage$370(Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 742
    const-class v0, Lcom/vkcoffee/android/fragments/GamesFeedFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->apiApplication:Lcom/vkcoffee/android/data/ApiApplication;

    iget v1, v1, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    invoke-static {p1, v1}, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->createArgs(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 509
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .locals 9
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 527
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 528
    .local v1, "ctx":Landroid/content/Context;
    packed-switch p2, :pswitch_data_0

    .line 565
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 530
    :pswitch_0
    new-instance v2, Lcom/vkcoffee/android/ui/holder/commons/LoaderHolder;

    invoke-direct {v2, p1}, Lcom/vkcoffee/android/ui/holder/commons/LoaderHolder;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 532
    :pswitch_1
    new-instance v2, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;

    invoke-direct {v2, v1, p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;-><init>(Landroid/content/Context;Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    goto :goto_0

    .line 534
    :pswitch_2
    new-instance v2, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;

    invoke-direct {v2, p1, v4}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;-><init>(Landroid/view/ViewGroup;Z)V

    .line 535
    .local v2, "holder":Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->fragment:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "visitSource"

    const-string/jumbo v6, "direct"

    invoke-static {v4, v5, v6}, Lcom/vkcoffee/android/utils/Utils;->readString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->fragment:Lcom/vkcoffee/android/fragments/GameCardFragment;

    .line 536
    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "clickSource"

    const-string/jumbo v7, "catalog"

    invoke-static {v5, v6, v7}, Lcom/vkcoffee/android/utils/Utils;->readString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 535
    invoke-virtual {v2, v8, v4, v5}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->setClickInfo(ZLjava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;

    goto :goto_0

    .line 539
    .end local v2    # "holder":Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;
    :pswitch_3
    new-instance v2, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;

    invoke-direct {v2, p1, v8}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;-><init>(Landroid/view/ViewGroup;Z)V

    .line 540
    .restart local v2    # "holder":Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->fragment:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "visitSource"

    const-string/jumbo v6, "direct"

    invoke-static {v4, v5, v6}, Lcom/vkcoffee/android/utils/Utils;->readString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->fragment:Lcom/vkcoffee/android/fragments/GameCardFragment;

    .line 541
    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "clickSource"

    const-string/jumbo v7, "catalog"

    invoke-static {v5, v6, v7}, Lcom/vkcoffee/android/utils/Utils;->readString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 540
    invoke-virtual {v2, v8, v4, v5}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->setClickInfo(ZLjava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;

    goto :goto_0

    .line 544
    .end local v2    # "holder":Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;
    :pswitch_4
    new-instance v2, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll;

    invoke-direct {v2, v1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 546
    :pswitch_5
    invoke-static {p1}, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;->darkGrayTitle(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;

    move-result-object v2

    goto :goto_0

    .line 548
    :pswitch_6
    new-instance v2, Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;

    invoke-direct {v2, p1}, Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 550
    :pswitch_7
    new-instance v2, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;

    invoke-direct {v2, v1, v4}, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    .line 552
    :pswitch_8
    new-instance v2, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;

    invoke-direct {v2, v1, v8}, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    .line 554
    :pswitch_9
    new-instance v2, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;

    invoke-direct {v2, v1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 556
    :pswitch_a
    new-instance v2, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;

    invoke-direct {v2, v1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 558
    :pswitch_b
    new-instance v3, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->fragment:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "visitSource"

    const-string/jumbo v6, "direct"

    invoke-static {v4, v5, v6}, Lcom/vkcoffee/android/utils/Utils;->readString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;

    invoke-direct {v5}, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;-><init>()V

    invoke-direct {v3, v1, v4, v5}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;)V

    .line 559
    .local v3, "inviteHolder":Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;
    iget-object v0, v3, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->drawable:Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;

    .line 560
    .local v0, "bgDrawable":Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->fragment:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/GameCardFragment;->access$1900(Lcom/vkcoffee/android/fragments/GameCardFragment;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    .line 561
    goto/16 :goto_0

    .line 563
    .end local v0    # "bgDrawable":Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;
    .end local v3    # "inviteHolder":Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;
    :pswitch_c
    new-instance v2, Lcom/vkcoffee/android/ui/holder/gamepage/GameRequestHolder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->fragment:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "visitSource"

    const-string/jumbo v6, "direct"

    invoke-static {v4, v5, v6}, Lcom/vkcoffee/android/utils/Utils;->readString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;

    invoke-direct {v5}, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;-><init>()V

    const v6, 0x7f030030

    invoke-direct {v2, v1, v4, v5, v6}, Lcom/vkcoffee/android/ui/holder/gamepage/GameRequestHolder;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;I)V

    goto/16 :goto_0

    .line 528
    :pswitch_data_0
    .packed-switch 0x7f10001e
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_b
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public removeRequests(Lcom/vkcoffee/android/data/GameRequest;Landroid/app/Activity;)V
    .locals 1
    .param p1, "request"    # Lcom/vkcoffee/android/data/GameRequest;
    .param p2, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 597
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    iget-object v0, v0, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->requestsServer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 599
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    iget-object v0, v0, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->requestsServerReal:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 600
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    iget-object v0, v0, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->requestsDb:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 601
    invoke-static {p2}, Lcom/vkcoffee/android/data/db/Database;->getInst(Landroid/content/Context;)Lcom/vkcoffee/android/data/db/Database;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/data/db/Database;->removeRequest(Lcom/vkcoffee/android/data/GameRequest;)V

    .line 602
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->fillRequests()V

    .line 604
    :cond_0
    return-void
.end method

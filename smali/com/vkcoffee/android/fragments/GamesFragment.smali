.class public Lcom/vkcoffee/android/fragments/GamesFragment;
.super Lcom/vkcoffee/android/fragments/CardRecyclerFragment;
.source "GamesFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$OnNeedLoadNextPage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/CardRecyclerFragment",
        "<",
        "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
        ">;",
        "Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$OnNeedLoadNextPage;"
    }
.end annotation


# static fields
.field static final INDEX_MY_CATALOG:I = 0x0

.field static final INDEX_NEW_CATALOG:I = 0x1


# instance fields
.field private adapter:Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;

.field private catalogLoaderMy:Lcom/vkcoffee/android/api/apps/CatalogLoader;

.field private catalogLoaderNew:Lcom/vkcoffee/android/api/apps/CatalogLoader;

.field private gameBannersHolder:Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;

.field private receiver1:Landroid/content/BroadcastReceiver;

.field private receiver2:Landroid/content/BroadcastReceiver;

.field private receiverHideRequest:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;-><init>(I)V

    .line 52
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->gameBannersHolder:Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;

    .line 57
    new-instance v0, Lcom/vkcoffee/android/fragments/GamesFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/GamesFragment$1;-><init>(Lcom/vkcoffee/android/fragments/GamesFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->receiver1:Landroid/content/BroadcastReceiver;

    .line 66
    new-instance v0, Lcom/vkcoffee/android/fragments/GamesFragment$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/GamesFragment$2;-><init>(Lcom/vkcoffee/android/fragments/GamesFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->receiver2:Landroid/content/BroadcastReceiver;

    .line 75
    new-instance v0, Lcom/vkcoffee/android/fragments/GamesFragment$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/GamesFragment$3;-><init>(Lcom/vkcoffee/android/fragments/GamesFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->receiverHideRequest:Landroid/content/BroadcastReceiver;

    .line 89
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->adapter:Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;

    .line 91
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->catalogLoaderMy:Lcom/vkcoffee/android/api/apps/CatalogLoader;

    .line 92
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->catalogLoaderNew:Lcom/vkcoffee/android/api/apps/CatalogLoader;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/GamesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GamesFragment;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesFragment;->refresh()V

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/GamesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GamesFragment;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesFragment;->refresh()V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/GamesFragment;)Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GamesFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->adapter:Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/vkcoffee/android/fragments/GamesFragment;Lcom/vkcoffee/android/api/apps/CatalogLoader;)Lcom/vkcoffee/android/api/apps/CatalogLoader;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GamesFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/apps/CatalogLoader;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->catalogLoaderMy:Lcom/vkcoffee/android/api/apps/CatalogLoader;

    return-object p1
.end method

.method static synthetic access$602(Lcom/vkcoffee/android/fragments/GamesFragment;Lcom/vkcoffee/android/api/apps/CatalogLoader;)Lcom/vkcoffee/android/api/apps/CatalogLoader;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GamesFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/apps/CatalogLoader;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->catalogLoaderNew:Lcom/vkcoffee/android/api/apps/CatalogLoader;

    return-object p1
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/GamesFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GamesFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/GamesFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/GamesFragment;)Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GamesFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->gameBannersHolder:Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;

    return-object v0
.end method

.method static synthetic access$802(Lcom/vkcoffee/android/fragments/GamesFragment;Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;)Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GamesFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->gameBannersHolder:Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;

    return-object p1
.end method

.method public static createArgs(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "vs"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "visitSource"

    invoke-static {v0, v1, p0}, Lcom/vkcoffee/android/utils/Utils;->writeString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doLoadData()V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;-><init>()V

    new-instance v1, Lcom/vkcoffee/android/fragments/GamesFragment$4;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/GamesFragment$4;-><init>(Lcom/vkcoffee/android/fragments/GamesFragment;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 200
    return-void
.end method

.method protected doLoadData(II)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 166
    return-void
.end method

.method protected bridge synthetic getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesFragment;->getAdapter()Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->adapter:Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/GamesFragment;Lcom/vkcoffee/android/fragments/GamesFragment$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->adapter:Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->adapter:Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    .line 144
    const v0, 0x7f0801b6

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/GamesFragment;->setTitle(I)V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/GamesFragment;->setHasOptionsMenu(Z)V

    .line 146
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->receiverHideRequest:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.vkcoffee.android.games.HIDE_REQUEST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 124
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->receiver1:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.vkcoffee.android.games.RELOAD_REQUESTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 125
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->receiver2:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.vkcoffee.android.games.RELOAD_INSTALLED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 126
    const-string/jumbo v0, "games_visit"

    invoke-static {v0}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string/jumbo v1, "visit_source"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "visitSource"

    const-string/jumbo v4, "direct"

    invoke-static {v2, v3, v4}, Lcom/vkcoffee/android/utils/Utils;->readString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 127
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->receiverHideRequest:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->receiver1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->receiver2:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onDestroy()V

    .line 139
    return-void

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onNeedLoadNextPage(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 408
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->catalogLoaderNew:Lcom/vkcoffee/android/api/apps/CatalogLoader;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->catalogLoaderNew:Lcom/vkcoffee/android/api/apps/CatalogLoader;

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/apps/CatalogLoader;->forceLoadNextPage()Z

    .line 411
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->catalogLoaderMy:Lcom/vkcoffee/android/api/apps/CatalogLoader;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->catalogLoaderMy:Lcom/vkcoffee/android/api/apps/CatalogLoader;

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/apps/CatalogLoader;->forceLoadNextPage()Z

    .line 414
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->gameBannersHolder:Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->gameBannersHolder:Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;->getInfiniteViewPager()Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->onPause()V

    .line 117
    :cond_0
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onPause()V

    .line 118
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onResume()V

    .line 107
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->gameBannersHolder:Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment;->gameBannersHolder:Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;->getInfiniteViewPager()Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->onResume()V

    .line 110
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesFragment;->loadData()V

    .line 152
    return-void
.end method

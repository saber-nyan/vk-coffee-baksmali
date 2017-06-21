.class public Lcom/vkcoffee/android/fragments/GamesRequestFragment;
.super Lcom/vkcoffee/android/fragments/VKRecyclerFragment;
.source "GamesRequestFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/GamesRequestFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/VKRecyclerFragment",
        "<",
        "Lcom/vkcoffee/android/data/GameRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_REQUESTS:Ljava/lang/String; = "requests"


# instance fields
.field private adapter:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

.field private receiverHideRequest:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;-><init>(I)V

    .line 37
    new-instance v0, Lcom/vkcoffee/android/fragments/GamesRequestFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment$1;-><init>(Lcom/vkcoffee/android/fragments/GamesRequestFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->receiverHideRequest:Landroid/content/BroadcastReceiver;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/GamesRequestFragment;)Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GamesRequestFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->adapter:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/GamesRequestFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GamesRequestFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/GamesRequestFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GamesRequestFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/GamesRequestFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GamesRequestFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/GamesRequestFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GamesRequestFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/GamesRequestFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GamesRequestFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/GamesRequestFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GamesRequestFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static createBundle(Ljava/util/ArrayList;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/GameRequest;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/GameRequest;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 86
    const-string/jumbo v1, "requests"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 88
    :cond_0
    const-string/jumbo v1, "visitSource"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-object v0
.end method

.method private getDataFromArg()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/GameRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "requests"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "requests"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 95
    .local v2, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .local v3, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/GameRequest;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .local v1, "parcelable":Landroid/os/Parcelable;
    move-object v0, v1

    .line 97
    check-cast v0, Lcom/vkcoffee/android/data/GameRequest;

    .line 98
    .local v0, "gameRequest":Lcom/vkcoffee/android/data/GameRequest;
    iget v5, v0, Lcom/vkcoffee/android/data/GameRequest;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 99
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    .end local v0    # "gameRequest":Lcom/vkcoffee/android/data/GameRequest;
    .end local v1    # "parcelable":Landroid/os/Parcelable;
    .end local v2    # "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v3    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/GameRequest;>;"
    :cond_1
    const/4 v3, 0x0

    :cond_2
    return-object v3
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 112
    new-instance v0, Lcom/vkcoffee/android/api/apps/AppsGetRequests;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/apps/AppsGetRequests;-><init>()V

    new-instance v1, Lcom/vkcoffee/android/fragments/GamesRequestFragment$2;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment$2;-><init>(Lcom/vkcoffee/android/fragments/GamesRequestFragment;Landroid/app/Fragment;)V

    .line 113
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/apps/AppsGetRequests;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 120
    return-void
.end method

.method protected bridge synthetic getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->adapter:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/vkcoffee/android/fragments/GamesRequestFragment$Adapter;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/GamesRequestFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->adapter:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->adapter:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    return-object v0
.end method

.method synthetic lambda$onCreateContentView$376(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    .line 72
    const v1, 0x7f0801c7

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->setTitle(I)V

    .line 73
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->getDataFromArg()Ljava/util/ArrayList;

    move-result-object v0

    .line 74
    .local v0, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/GameRequest;>;"
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->onDataLoaded(Ljava/util/List;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->loadData()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->receiverHideRequest:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.vkcoffee.android.games.HIDE_REQUEST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 61
    return-void
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x41000000    # 8.0f

    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 125
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-virtual {v2, v5, v3, v5, v4}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 126
    new-instance v0, Lme/grishka/appkit/views/DividerItemDecoration;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ed

    .line 127
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lme/grishka/appkit/views/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 128
    .local v0, "dividers":Lme/grishka/appkit/views/DividerItemDecoration;
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/GamesRequestFragment;)Lme/grishka/appkit/views/DividerItemDecoration$Provider;

    move-result-object v2

    invoke-virtual {v0, v2}, Lme/grishka/appkit/views/DividerItemDecoration;->setProvider(Lme/grishka/appkit/views/DividerItemDecoration$Provider;)Lme/grishka/appkit/views/DividerItemDecoration;

    .line 129
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v2, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 130
    return-object v1
.end method

.method protected onDataLoaded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/GameRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "d":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/data/GameRequest;>;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onDataLoaded(Ljava/util/List;)V

    .line 144
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "requests"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->receiverHideRequest:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onDestroy()V

    .line 67
    return-void
.end method

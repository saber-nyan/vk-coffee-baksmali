.class public Lcom/vkcoffee/android/fragments/GamesFeedFragment;
.super Lcom/vkcoffee/android/fragments/VKRecyclerFragment;
.source "GamesFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/GamesFeedFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/VKRecyclerFragment",
        "<",
        "Lcom/vkcoffee/android/data/GameFeedEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_APP_ID:Ljava/lang/String; = "app_id"


# instance fields
.field private adapter:Lcom/vkcoffee/android/fragments/GamesFeedFragment$Adapter;

.field private from:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;-><init>(I)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/GamesFeedFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GamesFeedFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/GamesFeedFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GamesFeedFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/GamesFeedFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GamesFeedFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/GamesFeedFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GamesFeedFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static createArgs(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "visitSource"

    invoke-static {v0, v1, p0}, Lcom/vkcoffee/android/utils/Utils;->writeString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static createArgs(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .param p0, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "appId"    # I

    .prologue
    .line 33
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->createArgs(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 34
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    return-object v0
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 5
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 65
    new-instance v0, Lcom/vkcoffee/android/fragments/GamesFeedFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/vkcoffee/android/fragments/GamesFeedFragment$1;-><init>(Lcom/vkcoffee/android/fragments/GamesFeedFragment;Landroid/app/Fragment;)V

    .line 71
    .local v0, "simpleCallback":Lcom/vkcoffee/android/api/SimpleCallback;, "Lcom/vkcoffee/android/api/SimpleCallback<Lcom/vkcoffee/android/data/VKFromList<Lcom/vkcoffee/android/data/GameFeedEntry;>;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "app_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    new-instance v2, Lcom/vkcoffee/android/api/apps/AppsGetActivity;

    if-nez p1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "app_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v1, p2, v3}, Lcom/vkcoffee/android/api/apps/AppsGetActivity;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/api/apps/AppsGetActivity;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 76
    :goto_1
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->from:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_1
    new-instance v2, Lcom/vkcoffee/android/api/apps/AppsGetActivity;

    if-nez p1, :cond_2

    const-string/jumbo v1, ""

    :goto_2
    invoke-direct {v2, v1, p2}, Lcom/vkcoffee/android/api/apps/AppsGetActivity;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/api/apps/AppsGetActivity;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->from:Ljava/lang/String;

    goto :goto_2
.end method

.method protected bridge synthetic getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->adapter:Lcom/vkcoffee/android/fragments/GamesFeedFragment$Adapter;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/vkcoffee/android/fragments/GamesFeedFragment$Adapter;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/GamesFeedFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/GamesFeedFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->adapter:Lcom/vkcoffee/android/fragments/GamesFeedFragment$Adapter;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->adapter:Lcom/vkcoffee/android/fragments/GamesFeedFragment$Adapter;

    return-object v0
.end method

.method synthetic lambda$onCreateContentView$371(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->data:Ljava/util/ArrayList;

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
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    .line 48
    const v0, 0x7f0801bc

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->setTitle(I)V

    .line 49
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->loadData()V

    .line 50
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

    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-virtual {v2, v5, v3, v5, v4}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 56
    new-instance v0, Lme/grishka/appkit/views/DividerItemDecoration;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ed

    .line 57
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lme/grishka/appkit/views/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 58
    .local v0, "dividers":Lme/grishka/appkit/views/DividerItemDecoration;
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/GamesFeedFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/GamesFeedFragment;)Lme/grishka/appkit/views/DividerItemDecoration$Provider;

    move-result-object v2

    invoke-virtual {v0, v2}, Lme/grishka/appkit/views/DividerItemDecoration;->setProvider(Lme/grishka/appkit/views/DividerItemDecoration$Provider;)Lme/grishka/appkit/views/DividerItemDecoration;

    .line 59
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v2, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 60
    return-object v1
.end method

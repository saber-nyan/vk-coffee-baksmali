.class Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;
.super Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;
.source "GamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/GamesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# static fields
.field public static final TYPE_APPS:I = 0x7

.field public static final TYPE_BANNERS:I = 0x6

.field public static final TYPE_BG:I = 0x0

.field public static final TYPE_BUTTON_SHOW_ALL:I = 0x3

.field public static final TYPE_FEED:I = 0x5

.field public static final TYPE_HORIZONTAL_BLOCK:I = 0x4

.field public static final TYPE_REQUEST:I = 0x2

.field public static final TYPE_TITLE:I = 0x1


# instance fields
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

.field blockApps:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

.field blockBanners:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

.field blockMyCatalog:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

.field blockNewCatalog:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

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

.field res:Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/GamesFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/GamesFragment;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 202
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-direct {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;-><init>()V

    .line 271
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    .line 272
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockMyCatalog:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 273
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockNewCatalog:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 274
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockActivity:Ljava/util/ArrayList;

    .line 275
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockBanners:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 276
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockApps:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 277
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockPaddingBottom:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 279
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/GamesFragment;Lcom/vkcoffee/android/fragments/GamesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/GamesFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/GamesFragment$1;

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/GamesFragment;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;
    .param p2, "x2"    # Landroid/app/Activity;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->fillGamePage(Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private fillGamePage(Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 12
    .param p1, "res"    # Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;
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
    .line 351
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;

    .line 353
    const/4 v1, 0x0

    const v2, 0x7f02004e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->bottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockPaddingBottom:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 356
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->fillGameRequest(Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;Landroid/app/Activity;Ljava/lang/String;)V

    .line 359
    iget-object v1, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->myCatalog:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    new-instance v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;

    const v1, 0x7f080271

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    iget-object v4, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->myCatalog:Ljava/util/ArrayList;

    new-instance v5, Lcom/vkcoffee/android/data/CatalogInfo;

    const v6, 0x7f080271

    sget-object v7, Lcom/vkcoffee/android/data/CatalogInfo$FilterType;->installed:Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    invoke-direct {v5, v6, v7}, Lcom/vkcoffee/android/data/CatalogInfo;-><init>(ILcom/vkcoffee/android/data/CatalogInfo$FilterType;)V

    const/4 v7, 0x1

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;-><init>(IILcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$OnNeedLoadNextPage;Ljava/util/ArrayList;Lcom/vkcoffee/android/data/CatalogInfo;Ljava/lang/String;Z)V

    .line 363
    .local v0, "data":Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;
    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockMyCatalog:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 367
    .end local v0    # "data":Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;
    :cond_0
    iget-object v1, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->newCatalog:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 368
    new-instance v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;

    const v1, 0x7f0802bf

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    iget-object v4, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->newCatalog:Ljava/util/ArrayList;

    new-instance v5, Lcom/vkcoffee/android/data/CatalogInfo;

    const v6, 0x7f0802bf

    sget-object v7, Lcom/vkcoffee/android/data/CatalogInfo$FilterType;->filterNew:Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    invoke-direct {v5, v6, v7}, Lcom/vkcoffee/android/data/CatalogInfo;-><init>(ILcom/vkcoffee/android/data/CatalogInfo$FilterType;)V

    const/4 v7, 0x0

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;-><init>(IILcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$OnNeedLoadNextPage;Ljava/util/ArrayList;Lcom/vkcoffee/android/data/CatalogInfo;Ljava/lang/String;Z)V

    .line 371
    .restart local v0    # "data":Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;
    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockNewCatalog:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 375
    .end local v0    # "data":Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockActivity:Ljava/util/ArrayList;

    .line 376
    iget-object v1, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->feed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 377
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockActivity:Ljava/util/ArrayList;

    const/4 v2, 0x1

    const v3, 0x7f0801bc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget-object v1, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->feed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_2

    .line 379
    iget-object v1, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->feed:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/data/GameFeedEntry;

    .line 380
    .local v8, "gameFeedEntry":Lcom/vkcoffee/android/data/GameFeedEntry;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockActivity:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-static {v2, v8}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockActivity:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const v3, 0x7f0200ed

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 383
    .end local v8    # "gameFeedEntry":Lcom/vkcoffee/android/data/GameFeedEntry;
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockActivity:Ljava/util/ArrayList;

    const/4 v2, 0x3

    new-instance v3, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll$Ref;

    const v4, 0x7f0804e4

    invoke-static {p3, p2}, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter$$Lambda$2;->lambdaFactory$(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll$Ref;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->bottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    .end local v11    # "i":I
    :cond_3
    iget-object v1, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->featuredCatalog:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 389
    const/4 v1, 0x6

    iget-object v2, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->featuredCatalog:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockBanners:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 393
    :cond_4
    iget-object v1, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->genres:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 394
    new-instance v10, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;

    invoke-direct {v10}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;-><init>()V

    .line 395
    .local v10, "genresData":Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;, "Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex<Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;>;"
    new-instance v1, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->catalog:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;-><init>(Lcom/vkcoffee/android/data/GameGenre;Ljava/util/ArrayList;)V

    invoke-virtual {v10, v1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v1, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->genres:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/data/GameGenre;

    .line 397
    .local v9, "genre":Lcom/vkcoffee/android/data/GameGenre;
    new-instance v2, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v9, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;-><init>(Lcom/vkcoffee/android/data/GameGenre;Ljava/util/ArrayList;)V

    invoke-virtual {v10, v2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 399
    .end local v9    # "genre":Lcom/vkcoffee/android/data/GameGenre;
    :cond_5
    const/4 v1, 0x7

    invoke-static {v1, v10}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->bottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockApps:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 401
    .end local v10    # "genresData":Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;, "Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex<Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;>;"
    :cond_6
    return-void
.end method

.method private fillGameRequest(Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 9
    .param p1, "res"    # Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;
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
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    .line 334
    iget-object v0, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->invites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0012

    iget-object v3, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->invites:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->invites:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->invites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_1

    .line 337
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->invites:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    const v1, 0x7f0200ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-instance v2, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll$Ref;

    const v3, 0x7f0801e1

    invoke-static {p1, p3, p2}, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll$Ref;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->bottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->invites:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockPaddingBottom:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic lambda$fillGamePage$374(Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 384
    const-class v0, Lcom/vkcoffee/android/fragments/GamesFeedFragment;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/GamesFeedFragment;->createArgs(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$fillGameRequest$373(Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 340
    const-class v0, Lcom/vkcoffee/android/fragments/GamesRequestFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->invites:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->createBundle(Ljava/util/ArrayList;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public build()V
    .locals 3

    .prologue
    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;>;"
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockMyCatalog:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockMyCatalog:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockNewCatalog:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    if-eqz v1, :cond_2

    .line 315
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockNewCatalog:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockActivity:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockActivity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 318
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 320
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockBanners:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    if-eqz v1, :cond_4

    .line 321
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockBanners:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_4
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockApps:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    if-eqz v1, :cond_5

    .line 324
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockApps:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->object:Ljava/lang/Object;

    check-cast v1, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;->index:I

    .line 325
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockApps:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_5
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->setData(Ljava/util/List;)V

    .line 328
    return-void
.end method

.method public clearNotificationOnApp(I)V
    .locals 1
    .param p1, "appId"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockMyCatalog:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockMyCatalog:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->object:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockMyCatalog:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->object:Ljava/lang/Object;

    check-cast v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;->clearNotificationOnApp(I)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockNewCatalog:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockNewCatalog:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->object:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockNewCatalog:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->object:Ljava/lang/Object;

    check-cast v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;->clearNotificationOnApp(I)V

    .line 296
    :cond_1
    return-void
.end method

.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->type:I

    packed-switch v0, :pswitch_data_0

    .line 255
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 253
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->type:I

    packed-switch v0, :pswitch_data_0

    .line 267
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 263
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->object:Ljava/lang/Object;

    check-cast v0, Lcom/vkcoffee/android/data/GameFeedEntry;

    invoke-static {p2, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->getImageUrl(ILcom/vkcoffee/android/data/GameFeedEntry;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 265
    :pswitch_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->object:Ljava/lang/Object;

    check-cast v0, Lcom/vkcoffee/android/data/GameRequest;

    invoke-static {p2, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;->getImageUrl(ILcom/vkcoffee/android/data/GameRequest;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .locals 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 216
    .local v0, "ctx":Landroid/content/Context;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/GamesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "visitSource"

    const-string/jumbo v6, "direct"

    invoke-static {v4, v5, v6}, Lcom/vkcoffee/android/utils/Utils;->readString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "visitSource":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 244
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 219
    :pswitch_0
    new-instance v1, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;

    const/4 v4, 0x0

    invoke-direct {v1, p1, v4}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;-><init>(Landroid/view/ViewGroup;Z)V

    .line 220
    .local v1, "holder":Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/GamesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "visitSource"

    const-string/jumbo v7, "direct"

    invoke-static {v5, v6, v7}, Lcom/vkcoffee/android/utils/Utils;->readString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "activity"

    invoke-virtual {v1, v4, v5, v6}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->setClickInfo(ZLjava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;

    goto :goto_0

    .line 223
    .end local v1    # "holder":Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;
    :pswitch_1
    new-instance v1, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll;

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 225
    :pswitch_2
    invoke-static {p1}, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;->darkGrayTitle(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;

    move-result-object v1

    goto :goto_0

    .line 227
    :pswitch_3
    new-instance v1, Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;

    invoke-direct {v1, p1}, Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 229
    :pswitch_4
    new-instance v1, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;

    new-instance v4, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;

    invoke-direct {v4}, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;-><init>()V

    invoke-direct {v1, v0, v3, v4}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;)V

    goto :goto_0

    .line 231
    :pswitch_5
    new-instance v1, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;

    invoke-direct {v1, v0, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :pswitch_6
    new-instance v1, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder;

    invoke-direct {v1, p1, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :pswitch_7
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    new-instance v5, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;

    invoke-direct {v5, v0, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/vkcoffee/android/fragments/GamesFragment;->access$802(Lcom/vkcoffee/android/fragments/GamesFragment;Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;)Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;

    .line 236
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/GamesFragment;->access$800(Lcom/vkcoffee/android/fragments/GamesFragment;)Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;->getInfiniteViewPager()Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    move-result-object v2

    .line 237
    .local v2, "pager":Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/GamesFragment;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->onResume()V

    .line 242
    :goto_1
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/GamesFragment;->access$800(Lcom/vkcoffee/android/fragments/GamesFragment;)Lcom/vkcoffee/android/ui/holder/gamepage/GameBannersHolder;

    move-result-object v1

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->onPause()V

    goto :goto_1

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public removeInvites(Lcom/vkcoffee/android/data/GameRequest;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "request"    # Lcom/vkcoffee/android/data/GameRequest;
    .param p2, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 299
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;

    iget-object v0, v0, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->invites:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->res:Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;

    invoke-direct {p0, v0, p2, p3}, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->fillGameRequest(Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;Landroid/app/Activity;Ljava/lang/String;)V

    .line 303
    :cond_0
    return-void
.end method

.method public setHorData(Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "data"    # Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p2, "apiApplications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->object:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->object:Ljava/lang/Object;

    check-cast v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;->appAdapter:Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;

    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->setApiApplications(Ljava/util/ArrayList;)V

    .line 287
    :cond_0
    return-void
.end method

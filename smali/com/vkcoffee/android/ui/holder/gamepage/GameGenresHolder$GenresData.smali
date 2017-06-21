.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;
.super Ljava/lang/Object;
.source "GameGenresHolder.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$OnNeedLoadNextPage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenresData"
.end annotation


# instance fields
.field public apiApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;"
        }
    .end annotation
.end field

.field public appsAdapter:Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;

.field private catalogLoaderFeatured:Lcom/vkcoffee/android/api/apps/CatalogLoader;

.field public final gameGenre:Lcom/vkcoffee/android/data/GameGenre;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/data/GameGenre;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "gameGenre"    # Lcom/vkcoffee/android/data/GameGenre;
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
            "Lcom/vkcoffee/android/data/GameGenre;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "apiApplications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;->catalogLoaderFeatured:Lcom/vkcoffee/android/api/apps/CatalogLoader;

    .line 39
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;->gameGenre:Lcom/vkcoffee/android/data/GameGenre;

    .line 40
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;->apiApplications:Ljava/util/ArrayList;

    .line 41
    return-void
.end method


# virtual methods
.method public getAppsAdapter(Landroid/content/Context;Ljava/lang/String;)Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;->appsAdapter:Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;->gameGenre:Lcom/vkcoffee/android/data/GameGenre;

    if-nez v0, :cond_1

    const v0, 0x7f0801d7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "title":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;->apiApplications:Ljava/util/ArrayList;

    const/4 v4, 0x1

    move-object v3, p1

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;ZLcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$OnNeedLoadNextPage;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;->appsAdapter:Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;

    .line 49
    new-instance v1, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData$1;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;->apiApplications:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;->gameGenre:Lcom/vkcoffee/android/data/GameGenre;

    if-nez v0, :cond_2

    new-instance v0, Lcom/vkcoffee/android/data/CatalogInfo;

    invoke-direct {v0, v2}, Lcom/vkcoffee/android/data/CatalogInfo;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v1, p0, v3, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData$1;-><init>(Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;Ljava/util/ArrayList;Lcom/vkcoffee/android/data/CatalogInfo;)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;->catalogLoaderFeatured:Lcom/vkcoffee/android/api/apps/CatalogLoader;

    .line 56
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;->appsAdapter:Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;

    return-object v0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;->gameGenre:Lcom/vkcoffee/android/data/GameGenre;

    iget-object v2, v0, Lcom/vkcoffee/android/data/GameGenre;->name:Ljava/lang/String;

    goto :goto_0

    .line 49
    .restart local v2    # "title":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/vkcoffee/android/data/CatalogInfo;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;->gameGenre:Lcom/vkcoffee/android/data/GameGenre;

    invoke-direct {v0, v4}, Lcom/vkcoffee/android/data/CatalogInfo;-><init>(Lcom/vkcoffee/android/data/GameGenre;)V

    goto :goto_1
.end method

.method public onNeedLoadNextPage(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;->catalogLoaderFeatured:Lcom/vkcoffee/android/api/apps/CatalogLoader;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$GenresData;->catalogLoaderFeatured:Lcom/vkcoffee/android/api/apps/CatalogLoader;

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/apps/CatalogLoader;->forceLoadNextPage()Z

    .line 66
    :cond_0
    return-void
.end method

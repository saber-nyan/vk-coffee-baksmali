.class Lcom/vkcoffee/android/fragments/GamesFragment$4$1;
.super Lcom/vkcoffee/android/api/apps/CatalogLoader;
.source "GamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/GamesFragment$4;->success(Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/GamesFragment$4;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/GamesFragment$4;ILjava/util/ArrayList;Lcom/vkcoffee/android/data/CatalogInfo$FilterType;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/GamesFragment$4;
    .param p2, "titleRes"    # I
    .param p4, "filterType"    # Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    .prologue
    .line 176
    .local p3, "application":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/GamesFragment$4;

    invoke-direct {p0, p2, p3, p4}, Lcom/vkcoffee/android/api/apps/CatalogLoader;-><init>(ILjava/util/ArrayList;Lcom/vkcoffee/android/data/CatalogInfo$FilterType;)V

    return-void
.end method


# virtual methods
.method public onLoadedNextPage(Ljava/util/ArrayList;Z)V
    .locals 2
    .param p2, "canLoadMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "allData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/GamesFragment$4;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/GamesFragment$4;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/GamesFragment;->access$200(Lcom/vkcoffee/android/fragments/GamesFragment;)Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/GamesFragment$4;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/GamesFragment$4;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/GamesFragment;->access$200(Lcom/vkcoffee/android/fragments/GamesFragment;)Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->blockMyCatalog:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->setHorData(Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;Ljava/util/ArrayList;)V

    .line 180
    return-void
.end method

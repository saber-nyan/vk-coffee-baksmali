.class Lcom/vkcoffee/android/fragments/GamesFragment$4;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "GamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/GamesFragment;->doLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/GamesFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/GamesFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/GamesFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$4;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 198
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;)V
    .locals 6
    .param p1, "res"    # Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$4;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/GamesFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$4;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/GamesFragment;->access$200(Lcom/vkcoffee/android/fragments/GamesFragment;)Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/GamesFragment$4;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/GamesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GamesFragment$4;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/GamesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "visitSource"

    const-string/jumbo v5, "direct"

    invoke-static {v3, v4, v5}, Lcom/vkcoffee/android/utils/Utils;->readString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3}, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->access$400(Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;Landroid/app/Activity;Ljava/lang/String;)V

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$4;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    new-instance v2, Lcom/vkcoffee/android/fragments/GamesFragment$4$1;

    const v3, 0x7f080271

    iget-object v4, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->myCatalog:Ljava/util/ArrayList;

    sget-object v5, Lcom/vkcoffee/android/data/CatalogInfo$FilterType;->installed:Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/vkcoffee/android/fragments/GamesFragment$4$1;-><init>(Lcom/vkcoffee/android/fragments/GamesFragment$4;ILjava/util/ArrayList;Lcom/vkcoffee/android/data/CatalogInfo$FilterType;)V

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/GamesFragment;->access$502(Lcom/vkcoffee/android/fragments/GamesFragment;Lcom/vkcoffee/android/api/apps/CatalogLoader;)Lcom/vkcoffee/android/api/apps/CatalogLoader;

    .line 182
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$4;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    new-instance v2, Lcom/vkcoffee/android/fragments/GamesFragment$4$2;

    const v3, 0x7f0802bf

    iget-object v4, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->newCatalog:Ljava/util/ArrayList;

    sget-object v5, Lcom/vkcoffee/android/data/CatalogInfo$FilterType;->filterNew:Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/vkcoffee/android/fragments/GamesFragment$4$2;-><init>(Lcom/vkcoffee/android/fragments/GamesFragment$4;ILjava/util/ArrayList;Lcom/vkcoffee/android/data/CatalogInfo$FilterType;)V

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/GamesFragment;->access$602(Lcom/vkcoffee/android/fragments/GamesFragment;Lcom/vkcoffee/android/api/apps/CatalogLoader;)Lcom/vkcoffee/android/api/apps/CatalogLoader;

    .line 188
    iget-object v1, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;->featuredCatalog:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/ApiApplication;

    .line 189
    .local v0, "app":Lcom/vkcoffee/android/data/ApiApplication;
    new-instance v2, Lcom/vkcoffee/android/data/CatalogInfo;

    const v3, 0x7f0801ba

    sget-object v4, Lcom/vkcoffee/android/data/CatalogInfo$FilterType;->featured:Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    invoke-direct {v2, v3, v4}, Lcom/vkcoffee/android/data/CatalogInfo;-><init>(ILcom/vkcoffee/android/data/CatalogInfo$FilterType;)V

    iput-object v2, v0, Lcom/vkcoffee/android/data/ApiApplication;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    goto :goto_0

    .line 191
    .end local v0    # "app":Lcom/vkcoffee/android/data/ApiApplication;
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$4;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/GamesFragment;->access$200(Lcom/vkcoffee/android/fragments/GamesFragment;)Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->build()V

    .line 192
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$4;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/GamesFragment$4;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/GamesFragment;->access$200(Lcom/vkcoffee/android/fragments/GamesFragment;)Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;

    move-result-object v2

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->data:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/fragments/GamesFragment;->access$700(Lcom/vkcoffee/android/fragments/GamesFragment;Ljava/util/List;Z)V

    .line 193
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 170
    check-cast p1, Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/GamesFragment$4;->success(Lcom/vkcoffee/android/api/apps/AppsGetGamesPage$Result;)V

    return-void
.end method

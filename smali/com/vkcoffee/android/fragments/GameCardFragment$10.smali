.class Lcom/vkcoffee/android/fragments/GameCardFragment$10;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "GameCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/GameCardFragment;->loadWall(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/wall/WallGet$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/GameCardFragment;Landroid/app/Fragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$10;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    iput p3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$10;->val$count:I

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "err"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$10;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/GameCardFragment;->access$1802(Lcom/vkcoffee/android/fragments/GameCardFragment;Lme/grishka/appkit/api/APIRequest;)Lme/grishka/appkit/api/APIRequest;

    .line 483
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/wall/WallGet$Result;)V
    .locals 8
    .param p1, "res"    # Lcom/vkcoffee/android/api/wall/WallGet$Result;

    .prologue
    const/16 v7, 0x400

    const/4 v4, 0x0

    .line 452
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$10;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 478
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$10;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/GameCardFragment;->access$1200(Lcom/vkcoffee/android/fragments/GameCardFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v3}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/data/VKList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v3, v7}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 456
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$10;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    iget-object v3, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/data/VKList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-static {v5, v3}, Lcom/vkcoffee/android/fragments/GameCardFragment;->access$1302(Lcom/vkcoffee/android/fragments/GameCardFragment;I)I

    .line 459
    :cond_1
    iget-object v3, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v3}, Lcom/vkcoffee/android/data/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/NewsEntry;

    .line 460
    .local v2, "p":Lcom/vkcoffee/android/NewsEntry;
    iget v5, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$10;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/GameCardFragment;->access$1300(Lcom/vkcoffee/android/fragments/GameCardFragment;)I

    move-result v6

    if-ne v5, v6, :cond_2

    invoke-virtual {v2, v7}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 461
    iget-object v3, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v3, v2}, Lcom/vkcoffee/android/data/VKList;->remove(Ljava/lang/Object;)Z

    .line 465
    .end local v2    # "p":Lcom/vkcoffee/android/NewsEntry;
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$10;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    iget v5, v3, Lcom/vkcoffee/android/fragments/GameCardFragment;->offset:I

    iget v6, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$10;->val$count:I

    add-int/2addr v5, v6

    iput v5, v3, Lcom/vkcoffee/android/fragments/GameCardFragment;->offset:I

    .line 467
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$10;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/GameCardFragment;->access$1400(Lcom/vkcoffee/android/fragments/GameCardFragment;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 468
    iget-object v3, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v3}, Lcom/vkcoffee/android/data/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 469
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/NewsEntry;>;"
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 470
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/NewsEntry;

    .line 471
    .local v0, "e":Lcom/vkcoffee/android/NewsEntry;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$10;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/GameCardFragment;->access$1500(Lcom/vkcoffee/android/fragments/GameCardFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/vkcoffee/android/fragments/GameCardFragment;->access$1600(Ljava/util/Iterator;Lcom/vkcoffee/android/NewsEntry;Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 472
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$10;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/GameCardFragment;->access$1700(Lcom/vkcoffee/android/fragments/GameCardFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/vkcoffee/android/fragments/GameCardFragment;->access$1600(Ljava/util/Iterator;Lcom/vkcoffee/android/NewsEntry;Ljava/util/Collection;)Z

    goto :goto_1

    .line 477
    .end local v0    # "e":Lcom/vkcoffee/android/NewsEntry;
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/NewsEntry;>;"
    :cond_5
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$10;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    iget-object v6, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    iget-object v3, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v3}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v3

    if-lez v3, :cond_6

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v5, v6, v3}, Lcom/vkcoffee/android/fragments/GameCardFragment;->onDataLoaded(Ljava/util/List;Z)V

    goto/16 :goto_0

    :cond_6
    move v3, v4

    goto :goto_2
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 448
    check-cast p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/GameCardFragment$10;->success(Lcom/vkcoffee/android/api/wall/WallGet$Result;)V

    return-void
.end method

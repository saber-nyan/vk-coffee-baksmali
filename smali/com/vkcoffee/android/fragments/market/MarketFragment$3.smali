.class Lcom/vkcoffee/android/fragments/market/MarketFragment$3;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "MarketFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/market/MarketFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

.field final synthetic val$count:I

.field final synthetic val$isVertical:Z

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/market/MarketFragment;Landroid/app/Fragment;IZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/market/MarketFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    iput p3, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->val$offset:I

    iput-boolean p4, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->val$isVertical:Z

    iput p5, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->val$count:I

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;)V
    .locals 6
    .param p1, "result"    # Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    iget-boolean v0, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->hasMarket:Z

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    iget-wide v4, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->minPrice:J

    invoke-static {v0, v4, v5}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->access$302(Lcom/vkcoffee/android/fragments/market/MarketFragment;J)J

    .line 269
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    iget-wide v4, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->maxPrice:J

    invoke-static {v0, v4, v5}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->access$402(Lcom/vkcoffee/android/fragments/market/MarketFragment;J)J

    .line 270
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    iget-object v3, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->currency:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->access$502(Lcom/vkcoffee/android/fragments/market/MarketFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->val$offset:I

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->dataVertical:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 275
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->dataHorizontal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 277
    :cond_1
    iget-object v0, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->albumTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    iget-object v3, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->albumTitle:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->access$600(Lcom/vkcoffee/android/fragments/market/MarketFragment;Ljava/lang/CharSequence;)V

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->dataVertical:Ljava/util/List;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    iget v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->val$offset:I

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, p1, v0, v1}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->createData(Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;ZZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 281
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->dataHorizontal:Ljava/util/List;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    iget v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->val$offset:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, p1, v0, v2}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->createData(Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;ZZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 282
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->access$700(Lcom/vkcoffee/android/fragments/market/MarketFragment;)Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;

    move-result-object v3

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->val$isVertical:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->dataVertical:Ljava/util/List;

    :goto_2
    invoke-virtual {v3, v0}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;->setData(Ljava/util/List;)V

    .line 283
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->access$800(Lcom/vkcoffee/android/fragments/market/MarketFragment;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    .line 284
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    iget-object v0, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->albums:Lcom/vkcoffee/android/data/VKList;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    iget-object v4, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->albums:Lcom/vkcoffee/android/data/VKList;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->albums:Lcom/vkcoffee/android/data/VKList;

    .line 285
    invoke-virtual {v4}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v4

    iget v5, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->val$count:I

    if-lt v4, v5, :cond_7

    .line 284
    :goto_4
    invoke-static {v3, v0, v1}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->access$900(Lcom/vkcoffee/android/fragments/market/MarketFragment;Ljava/util/List;Z)V

    .line 289
    :goto_5
    return-void

    :cond_3
    move v0, v2

    .line 280
    goto :goto_0

    :cond_4
    move v0, v2

    .line 281
    goto :goto_1

    .line 282
    :cond_5
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/market/MarketFragment;->dataHorizontal:Ljava/util/List;

    goto :goto_2

    .line 284
    :cond_6
    iget-object v0, p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->albums:Lcom/vkcoffee/android/data/VKList;

    goto :goto_3

    :cond_7
    move v1, v2

    .line 285
    goto :goto_4

    .line 287
    :cond_8
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;->size()I

    move-result v3

    iget v4, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->val$count:I

    if-lt v3, v4, :cond_9

    :goto_6
    invoke-static {v0, p1, v1}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->access$1000(Lcom/vkcoffee/android/fragments/market/MarketFragment;Ljava/util/List;Z)V

    goto :goto_5

    :cond_9
    move v1, v2

    goto :goto_6
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 264
    check-cast p1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/market/MarketFragment$3;->success(Lcom/vkcoffee/android/api/market/MarketGetMarketPage$Response;)V

    return-void
.end method

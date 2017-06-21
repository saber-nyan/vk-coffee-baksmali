.class Lcom/vkcoffee/android/fragments/market/GoodFragment$7;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "GoodFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/market/GoodFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

.field final synthetic val$good:Lcom/vkcoffee/android/data/Good;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;Landroid/app/Fragment;ILcom/vkcoffee/android/data/Good;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 751
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    iput p3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->val$offset:I

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->val$good:Lcom/vkcoffee/android/data/Good;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;)V
    .locals 14
    .param p1, "result"    # Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;

    .prologue
    .line 754
    iget v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->val$offset:I

    if-nez v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$500(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 757
    :cond_0
    iget-object v0, p1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->comments:Lcom/vkcoffee/android/data/VKList;

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$500(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->comments:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 760
    :cond_1
    iget-object v0, p1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->good:Lcom/vkcoffee/android/data/Good;

    if-eqz v0, :cond_2

    .line 761
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "can_write"

    iget-object v2, p1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->good:Lcom/vkcoffee/android/data/Good;

    iget-boolean v2, v2, Lcom/vkcoffee/android/data/Good;->can_comment:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 762
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$1300(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/ui/WriteBar;

    move-result-object v0

    iget-object v1, p1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->good:Lcom/vkcoffee/android/data/Good;

    iget-boolean v1, v1, Lcom/vkcoffee/android/data/Good;->can_comment:Z

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setEnabled(Landroid/view/View;Z)V

    .line 763
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$2300(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->good:Lcom/vkcoffee/android/data/Good;

    iget v0, v0, Lcom/vkcoffee/android/data/Good;->availability:I

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/vkcoffee/android/ViewUtils;->setEnabled(Landroid/view/View;Z)V

    .line 765
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->val$good:Lcom/vkcoffee/android/data/Good;

    if-eqz v0, :cond_6

    const/4 v9, 0x1

    .line 766
    .local v9, "goodDataEvaluable":Z
    :goto_1
    if-nez v9, :cond_3

    iget-object v0, p1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->good:Lcom/vkcoffee/android/data/Good;

    if-eqz v0, :cond_3

    .line 767
    iget-object v13, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    iget-object v1, p1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->good:Lcom/vkcoffee/android/data/Good;

    iget-object v2, p1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->owner_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->owner_photo_100:Ljava/lang/String;

    iget-object v4, p1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->wiki_view_url:Ljava/lang/String;

    iget-object v5, p1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->wiki_title:Ljava/lang/String;

    iget v6, p1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->contact_id:I

    iget-object v7, p1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->contact_name:Ljava/lang/String;

    iget-object v8, p1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->contact_photo_100:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$2400(Lcom/vkcoffee/android/fragments/market/GoodFragment;Lcom/vkcoffee/android/data/Good;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$702(Lcom/vkcoffee/android/fragments/market/GoodFragment;Ljava/util/List;)Ljava/util/List;

    .line 771
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$500(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, p1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->comments:Lcom/vkcoffee/android/data/VKList;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :goto_2
    invoke-static {v1, v2, v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$900(Lcom/vkcoffee/android/fragments/market/GoodFragment;Ljava/util/ArrayList;I)Ljava/util/List;

    move-result-object v11

    .line 773
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 774
    .local v12, "rangeSize":I
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$700(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v0, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 775
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    iget-object v0, p1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->comments:Lcom/vkcoffee/android/data/VKList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$500(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->comments:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v2

    if-ge v0, v2, :cond_8

    const/4 v0, 0x1

    :goto_3
    invoke-static {v1, v11, v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$2500(Lcom/vkcoffee/android/fragments/market/GoodFragment;Ljava/util/List;Z)V

    .line 776
    if-eqz v9, :cond_9

    .line 777
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$600(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$700(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v11, v1, v12}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->setData(Ljava/util/List;II)V

    .line 781
    :goto_4
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$2600(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 782
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$2600(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->object:Ljava/lang/Object;

    check-cast v0, Lcom/vkcoffee/android/data/Good;

    iget-object v1, p1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->likesPhotos:[Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/data/Good;->likesPhoto:[Ljava/lang/String;

    .line 783
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$2700(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$2600(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 784
    .local v10, "index":I
    if-ltz v10, :cond_4

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$600(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->getItemCount()I

    move-result v0

    if-ge v10, v0, :cond_4

    .line 785
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$600(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->notifyItemChanged(I)V

    .line 788
    .end local v10    # "index":I
    :cond_4
    return-void

    .line 763
    .end local v9    # "goodDataEvaluable":Z
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;>;"
    .end local v12    # "rangeSize":I
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 765
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 771
    .restart local v9    # "goodDataEvaluable":Z
    :cond_7
    iget-object v0, p1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->comments:Lcom/vkcoffee/android/data/VKList;

    .line 772
    invoke-virtual {v0}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v0

    goto/16 :goto_2

    .line 775
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;>;"
    .restart local v12    # "rangeSize":I
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 779
    :cond_9
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$600(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->setData(Ljava/util/List;)V

    goto :goto_4
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 751
    check-cast p1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;->success(Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;)V

    return-void
.end method

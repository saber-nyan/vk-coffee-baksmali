.class Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "MultiColumnListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/MultiColumnListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiColumnAdapterWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

.field wrapped:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ui/MultiColumnListView;Landroid/widget/ListAdapter;)V
    .locals 1
    .param p2, "la"    # Landroid/widget/ListAdapter;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 391
    iput-object p2, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;->wrapped:Landroid/widget/ListAdapter;

    .line 392
    invoke-static {p1}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$1000(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/database/DataSetObserver;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 393
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$800(Lcom/vkcoffee/android/ui/MultiColumnListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 406
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 412
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 418
    iget-object v7, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v7}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$800(Lcom/vkcoffee/android/ui/MultiColumnListView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;

    .line 419
    .local v4, "row":Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;
    if-eqz p2, :cond_0

    instance-of v7, p2, Landroid/widget/LinearLayout;

    if-nez v7, :cond_2

    .line 420
    :cond_0
    new-instance v6, Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;

    iget-object v7, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-direct {v6, v7}, Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;-><init>(Lcom/vkcoffee/android/ui/MultiColumnListView;)V

    .line 425
    .local v6, "view":Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;
    :goto_0
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 426
    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;

    .line 427
    .local v2, "old":Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v7, v2, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->count:I

    if-ge v0, v7, :cond_3

    .line 428
    iget-object v7, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;->wrapped:Landroid/widget/ListAdapter;

    iget v8, v2, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->start:I

    add-int/2addr v8, v0

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 429
    .local v5, "type":I
    iget-object v7, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v7}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$1100(Lcom/vkcoffee/android/ui/MultiColumnListView;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 430
    iget-object v7, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v7}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$1100(Lcom/vkcoffee/android/ui/MultiColumnListView;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :cond_1
    iget-object v7, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v7}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$1100(Lcom/vkcoffee/android/ui/MultiColumnListView;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v2    # "old":Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;
    .end local v5    # "type":I
    .end local v6    # "view":Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;
    :cond_2
    move-object v6, p2

    .line 422
    check-cast v6, Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;

    .restart local v6    # "view":Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;
    goto :goto_0

    .line 435
    :cond_3
    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;->removeAllViews()V

    .line 436
    invoke-virtual {v6, v4}, Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;->setTag(Ljava/lang/Object;)V

    .line 437
    iget v7, v4, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->size:I

    iput v7, v6, Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;->cols:I

    .line 438
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v7, v4, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->count:I

    if-ge v0, v7, :cond_6

    .line 439
    iget-object v7, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;->wrapped:Landroid/widget/ListAdapter;

    iget v8, v4, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->start:I

    add-int/2addr v8, v0

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 440
    .restart local v5    # "type":I
    const/4 v3, 0x0

    .line 441
    .local v3, "reuse":Landroid/view/View;
    iget-object v7, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v7}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$1100(Lcom/vkcoffee/android/ui/MultiColumnListView;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v7}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$1100(Lcom/vkcoffee/android/ui/MultiColumnListView;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 442
    iget-object v7, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v7}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$1100(Lcom/vkcoffee/android/ui/MultiColumnListView;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "reuse":Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .line 444
    .restart local v3    # "reuse":Landroid/view/View;
    :cond_4
    iget-object v7, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;->wrapped:Landroid/widget/ListAdapter;

    iget v8, v4, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->start:I

    add-int/2addr v8, v0

    iget-object v9, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-interface {v7, v8, v3, v9}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 445
    .local v1, "item":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 446
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 448
    :cond_5
    invoke-virtual {v6, v1}, Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;->addView(Landroid/view/View;)V

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 451
    .end local v1    # "item":Landroid/view/View;
    .end local v3    # "reuse":Landroid/view/View;
    .end local v5    # "type":I
    :cond_6
    return-object v6
.end method

.method getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;->wrapped:Landroid/widget/ListAdapter;

    return-object v0
.end method

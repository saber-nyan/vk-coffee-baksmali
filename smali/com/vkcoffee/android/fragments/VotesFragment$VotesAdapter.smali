.class Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;
.super Landroid/widget/BaseAdapter;
.source "VotesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/VotesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VotesAdapter"
.end annotation


# static fields
.field private static final TYPE_HEADER:I = 0x1

.field private static final TYPE_ITEM:I


# instance fields
.field private mMaxPrice:Ljava/lang/String;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/VotesFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/VotesFragment;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/VotesFragment;Lcom/vkcoffee/android/fragments/VotesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/VotesFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/VotesFragment$1;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;-><init>(Lcom/vkcoffee/android/fragments/VotesFragment;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/VotesFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;
    .locals 1
    .param p1, "position"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/VotesFragment;->data:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;

    .line 213
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->getItem(I)Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->getItem(I)Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;

    move-result-object v0

    .line 219
    .local v0, "product":Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;->id:I

    int-to-long v2, v1

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 239
    if-lez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 249
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 259
    :goto_0
    return-object v0

    .line 251
    :pswitch_0
    if-nez p2, :cond_0

    new-instance v1, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;-><init>(Lcom/vkcoffee/android/fragments/VotesFragment$1;)V

    invoke-virtual {v1, p3}, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;->inflate(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/VotesFragment;->access$000(Lcom/vkcoffee/android/fragments/VotesFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/VotesFragment;->access$500(Lcom/vkcoffee/android/fragments/VotesFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;->setData(II)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;

    goto :goto_1

    .line 254
    :pswitch_1
    if-nez p2, :cond_1

    new-instance v1, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    invoke-direct {v1, v2, v0}, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;-><init>(Lcom/vkcoffee/android/fragments/VotesFragment;Lcom/vkcoffee/android/fragments/VotesFragment$1;)V

    invoke-virtual {v1, p3}, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->inflate(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->getItem(I)Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->mMaxPrice:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->setData(Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 255
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/VotesFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_2

    const v0, 0x7f020085

    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    move-object v0, p2

    .line 256
    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;

    goto :goto_2

    .line 255
    :cond_2
    if-ne p1, v3, :cond_3

    const v0, 0x7f020088

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_4

    const v0, 0x7f020086

    goto :goto_3

    :cond_4
    const v0, 0x7f020087

    goto :goto_3

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x2

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/VotesFragment;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/VotesFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 234
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->getItemViewType(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .prologue
    .line 193
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 194
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->mMaxPrice:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/VotesFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;

    .line 196
    .local v0, "product":Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;
    iget-object v2, v0, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->mMaxPrice:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 197
    iget-object v2, v0, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;->description:Ljava/lang/String;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;->mMaxPrice:Ljava/lang/String;

    goto :goto_0

    .line 200
    .end local v0    # "product":Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;
    :cond_1
    return-void
.end method

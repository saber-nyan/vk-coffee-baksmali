.class Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$3;
.super Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
.source "GiftCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->createAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/GridFragment",
        "<",
        "Lcom/vkcoffee/android/api/models/CatalogedGift;",
        ">.GridAdapter<",
        "Lcom/vkcoffee/android/fragments/gifts/GiftHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;Lcom/vkcoffee/android/fragments/base/GridFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$3;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    .line 139
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;-><init>(Lcom/vkcoffee/android/fragments/base/GridFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$3;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->access$8(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v0, v0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$3;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->access$9(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/models/Gift;->getImage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/fragments/gifts/GiftHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/vkcoffee/android/fragments/gifts/GiftHolder;
    .param p2, "position"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$3;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->access$7(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->setSize(I)Lcom/vkcoffee/android/fragments/gifts/GiftHolder;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->onBindViewHolder(Lcom/vkcoffee/android/ui/holder/RecyclerHolder;I)V

    .line 146
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/vkcoffee/android/ui/holder/RecyclerHolder;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$3;->onBindViewHolder(Lcom/vkcoffee/android/fragments/gifts/GiftHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$3;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/gifts/GiftHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/gifts/GiftHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 141
    new-instance v0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;-><init>(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$3;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->access$6(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->onClick(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/fragments/gifts/GiftHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$3;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->access$7(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->setSize(I)Lcom/vkcoffee/android/fragments/gifts/GiftHolder;

    move-result-object v0

    return-object v0
.end method

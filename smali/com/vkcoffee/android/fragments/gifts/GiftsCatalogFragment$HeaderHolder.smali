.class Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$HeaderHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GiftsCatalogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/api/models/GiftCategory;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final mAction:Landroid/widget/TextView;

.field private mData:Lcom/vkcoffee/android/api/models/GiftCategory;

.field private final mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;Landroid/view/ViewGroup;)V
    .locals 1
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$HeaderHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;

    .line 341
    const v0, 0x7f03009e

    invoke-direct {p0, v0, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 342
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$HeaderHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$HeaderHolder;->mTitle:Landroid/widget/TextView;

    .line 343
    const v0, 0x7f10021e

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$HeaderHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$HeaderHolder;->mAction:Landroid/widget/TextView;

    .line 344
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$HeaderHolder;->mAction:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/api/models/GiftCategory;)V
    .locals 2
    .param p1, "item"    # Lcom/vkcoffee/android/api/models/GiftCategory;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$HeaderHolder;->mData:Lcom/vkcoffee/android/api/models/GiftCategory;

    .line 350
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$HeaderHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/api/models/GiftCategory;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 334
    check-cast p1, Lcom/vkcoffee/android/api/models/GiftCategory;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$HeaderHolder;->bind(Lcom/vkcoffee/android/api/models/GiftCategory;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$HeaderHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$HeaderHolder;->mData:Lcom/vkcoffee/android/api/models/GiftCategory;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->showCategory(Lcom/vkcoffee/android/api/models/GiftCategory;)V

    .line 356
    return-void
.end method

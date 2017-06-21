.class Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$1;
.super Ljava/lang/Object;
.source "StoreTabFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$1;->this$0:Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$613(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 51
    invoke-static {p1}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$1$$Lambda$1;->lambdaFactory$(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 54
    .local v0, "item":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    iget-boolean v1, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->purchased:Z

    if-nez v1, :cond_0

    .line 55
    const-string/jumbo v1, "store"

    iput-object v1, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->referrer:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$1;->this$0:Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->access$000(Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;)Lcom/vkcoffee/android/data/PurchasesManager;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$1;->this$0:Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$1$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;)Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/vkcoffee/android/data/PurchasesManager;->purchase(Lcom/vkcoffee/android/data/orm/Product;Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$1;->this$0:Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->downloadPack(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V

    goto :goto_0
.end method

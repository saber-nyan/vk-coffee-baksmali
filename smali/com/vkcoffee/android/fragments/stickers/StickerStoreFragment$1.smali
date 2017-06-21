.class Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$1;
.super Ljava/lang/Object;
.source "StickerStoreFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$1;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 86
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 72
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$1;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->access$100(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;)Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$1;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->access$100(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;)Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

    move-result-object v2

    iget-object v2, v2, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;->sections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    if-le v2, v3, :cond_0

    .line 73
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$1;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->access$200(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->getHeaderScrollOffset()I

    move-result v0

    .line 74
    .local v0, "from":I
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$1;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->access$200(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;)Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->getHeaderScrollOffset()I

    move-result v1

    .line 75
    .local v1, "to":I
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$1;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    const/4 v3, 0x0

    int-to-float v4, v0

    sub-int v5, v1, v0

    int-to-float v5, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->moveHeader(Landroid/app/Fragment;I)V

    .line 77
    .end local v0    # "from":I
    .end local v1    # "to":I
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 81
    return-void
.end method

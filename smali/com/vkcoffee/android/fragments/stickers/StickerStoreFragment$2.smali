.class Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$2;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "StickerStoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->doLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$2;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

    .prologue
    .line 153
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$2;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    invoke-static {v1, p1}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->access$102(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;)Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

    .line 154
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/stickers/Stickers;->getNumNewStockItems()I

    move-result v1

    if-lez v1, :cond_0

    .line 155
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/stickers/Stickers;->setNumNewItems(I)V

    .line 157
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$2;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->access$100(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;)Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;->sections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 158
    const-string/jumbo v2, "new"

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$2;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->access$100(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;)Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;->sections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Section;

    iget-object v1, v1, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Section;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$2;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->access$302(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;I)I

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$2;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->dataLoaded()V

    .line 164
    return-void

    .line 157
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 149
    check-cast p1, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$2;->success(Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;)V

    return-void
.end method

.class Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$2;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "StickerManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->setActiveState(Lcom/vkcoffee/android/data/orm/StickerStockItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

.field private final synthetic val$activate:Z

.field private final synthetic val$item:Lcom/vkcoffee/android/data/orm/StickerStockItem;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;Landroid/app/Fragment;Lcom/vkcoffee/android/data/orm/StickerStockItem;Z)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$2;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$2;->val$item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iput-boolean p4, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$2;->val$activate:Z

    .line 396
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 398
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$2;->val$item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$2;->val$activate:Z

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/stickers/Stickers;->setActive(Lcom/vkcoffee/android/data/orm/StickerStockItem;Z)V

    .line 399
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$2;->val$activate:Z

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$2;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mInactive:Ljava/util/List;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$2;->val$item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 401
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$2;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mActive:Ljava/util/List;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$2;->val$item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$2;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$2;->val$item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/StickerDownloaderService;->download(Landroid/content/Context;Lcom/vkcoffee/android/data/orm/StickerStockItem;Z)V

    .line 408
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$2;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->updateList()V

    .line 409
    return-void

    .line 404
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$2;->val$item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/stickers/Stickers;->deleteDownloadedPack(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V

    .line 405
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$2;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mActive:Ljava/util/List;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$2;->val$item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 406
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$2;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mInactive:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$2;->val$item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

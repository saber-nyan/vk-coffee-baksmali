.class Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$PagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "StickerStoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapter"
.end annotation


# instance fields
.field private final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$PagerAdapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    .line 211
    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 212
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$PagerAdapter;->mFragments:Ljava/util/List;

    .line 213
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$PagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$PagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$PagerAdapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->access$100(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;)Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Section;

    iget-object v0, v0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Section;->title:Ljava/lang/String;

    return-object v0
.end method

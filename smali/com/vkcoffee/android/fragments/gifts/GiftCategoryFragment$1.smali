.class Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "GiftCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    const-string v4, "gift"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/api/models/CatalogedGift;

    .line 44
    .local v1, "gift":Lcom/vkcoffee/android/api/models/CatalogedGift;
    const-string v4, "user_ids"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    .line 45
    .local v3, "user_ids":[I
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->access$0(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)Lcom/vkcoffee/android/api/models/GiftCategory;

    move-result-object v4

    iget-object v4, v4, Lcom/vkcoffee/android/api/models/GiftCategory;->cache:Landroid/util/SparseArray;

    if-eqz v4, :cond_3

    .line 46
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->access$0(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)Lcom/vkcoffee/android/api/models/GiftCategory;

    move-result-object v4

    iget-object v4, v4, Lcom/vkcoffee/android/api/models/GiftCategory;->cache:Landroid/util/SparseArray;

    iget-object v5, v1, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    iget v5, v5, Lcom/vkcoffee/android/api/models/Gift;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/models/CatalogedGift;

    .line 47
    .local v0, "catalogedGift":Lcom/vkcoffee/android/api/models/CatalogedGift;
    if-eqz v0, :cond_3

    .line 48
    const/4 v2, 0x0

    .line 49
    .local v2, "notifyAdapter":Z
    iget-object v4, v0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    iget-object v4, v4, Lcom/vkcoffee/android/api/models/Gift;->stickers_product_id:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->access$1(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)Lcom/vkcoffee/android/UserProfile;

    move-result-object v4

    iget v4, v4, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v3, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 50
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/vkcoffee/android/api/models/CatalogedGift;->disabled:Z

    .line 51
    const/4 v2, 0x1

    .line 53
    :cond_0
    iget-object v4, v0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 54
    iget-object v4, v0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    array-length v5, v3

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    .line 55
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/models/CatalogedGift;->isLimitExpired()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->access$0(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)Lcom/vkcoffee/android/api/models/GiftCategory;

    move-result-object v4

    iget-object v4, v4, Lcom/vkcoffee/android/api/models/GiftCategory;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 58
    :cond_1
    const/4 v2, 0x1

    .line 60
    :cond_2
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->access$2(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 61
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->access$2(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->notifyDataSetChanged()V

    .line 65
    .end local v0    # "catalogedGift":Lcom/vkcoffee/android/api/models/CatalogedGift;
    .end local v2    # "notifyAdapter":Z
    :cond_3
    return-void
.end method

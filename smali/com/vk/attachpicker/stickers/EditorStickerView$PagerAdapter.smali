.class Lcom/vk/attachpicker/stickers/EditorStickerView$PagerAdapter;
.super Lcom/vk/attachpicker/widget/ViewPagerAdapter;
.source "EditorStickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/stickers/EditorStickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/stickers/EditorStickerView;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$PagerAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-direct {p0}, Lcom/vk/attachpicker/widget/ViewPagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vk/attachpicker/stickers/EditorStickerView;Lcom/vk/attachpicker/stickers/EditorStickerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vk/attachpicker/stickers/EditorStickerView;
    .param p2, "x1"    # Lcom/vk/attachpicker/stickers/EditorStickerView$1;

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/stickers/EditorStickerView$PagerAdapter;-><init>(Lcom/vk/attachpicker/stickers/EditorStickerView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 491
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$PagerAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    .line 492
    invoke-static {v0}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$1100(Lcom/vk/attachpicker/stickers/EditorStickerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$PagerAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    .line 493
    invoke-static {v3}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$1300(Lcom/vk/attachpicker/stickers/EditorStickerView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$PagerAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    .line 494
    invoke-static {v1}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$1400(Lcom/vk/attachpicker/stickers/EditorStickerView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    .line 492
    goto :goto_0

    :cond_1
    move v1, v2

    .line 493
    goto :goto_1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 499
    const/4 v0, -0x2

    return v0
.end method

.method public getView(ILandroid/support/v4/view/ViewPager;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 461
    iget-object v2, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$PagerAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-static {v2, p1}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$600(Lcom/vk/attachpicker/stickers/EditorStickerView;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    iget-object v2, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$PagerAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-static {v2}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$700(Lcom/vk/attachpicker/stickers/EditorStickerView;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 485
    :goto_0
    return-object v1

    .line 465
    :cond_0
    new-instance v1, Lcom/vk/attachpicker/stickers/StickersRecyclerView;

    invoke-virtual {p2}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vk/attachpicker/stickers/StickersRecyclerView;-><init>(Landroid/content/Context;)V

    .line 466
    .local v1, "stickersRecyclerView":Lcom/vk/attachpicker/stickers/StickersRecyclerView;
    invoke-virtual {v1, v3}, Lcom/vk/attachpicker/stickers/StickersRecyclerView;->setHasFixedSize(Z)V

    .line 467
    invoke-virtual {v1, v3}, Lcom/vk/attachpicker/stickers/StickersRecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 468
    invoke-virtual {v1, v4}, Lcom/vk/attachpicker/stickers/StickersRecyclerView;->setClipToPadding(Z)V

    .line 469
    iget-object v2, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$PagerAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-static {v2}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$800(Lcom/vk/attachpicker/stickers/EditorStickerView;)I

    move-result v2

    iget-object v5, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$PagerAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-static {v5}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$900(Lcom/vk/attachpicker/stickers/EditorStickerView;)I

    move-result v5

    iget-object v6, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$PagerAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-static {v6}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$800(Lcom/vk/attachpicker/stickers/EditorStickerView;)I

    move-result v6

    invoke-virtual {v1, v2, v5, v6, v4}, Lcom/vk/attachpicker/stickers/StickersRecyclerView;->setPadding(IIII)V

    .line 471
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p2}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x3

    invoke-direct {v0, v2, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 472
    .local v0, "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    invoke-virtual {v1, v0}, Lcom/vk/attachpicker/stickers/StickersRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 474
    iget-object v2, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$PagerAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-static {v2, p1}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$1000(Lcom/vk/attachpicker/stickers/EditorStickerView;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 475
    new-instance v2, Lcom/vk/attachpicker/stickers/EditorStickerView$RecentAdapter;

    iget-object v3, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$PagerAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    iget-object v4, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$PagerAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-static {v4}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$1100(Lcom/vk/attachpicker/stickers/EditorStickerView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/vk/attachpicker/stickers/EditorStickerView$RecentAdapter;-><init>(Lcom/vk/attachpicker/stickers/EditorStickerView;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/stickers/StickersRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 476
    :cond_1
    iget-object v2, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$PagerAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-static {v2, p1}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$1200(Lcom/vk/attachpicker/stickers/EditorStickerView;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 477
    new-instance v2, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskAdapter;

    iget-object v3, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$PagerAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    iget-object v4, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$PagerAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-static {v4}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$1300(Lcom/vk/attachpicker/stickers/EditorStickerView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskAdapter;-><init>(Lcom/vk/attachpicker/stickers/EditorStickerView;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/stickers/StickersRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 479
    :cond_2
    new-instance v5, Lcom/vk/attachpicker/stickers/EditorStickerView$Adapter;

    iget-object v6, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$PagerAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$PagerAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-static {v2}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$1400(Lcom/vk/attachpicker/stickers/EditorStickerView;)Ljava/util/ArrayList;

    move-result-object v7

    add-int/lit8 v8, p1, -0x1

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$PagerAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    .line 480
    invoke-static {v2}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$1100(Lcom/vk/attachpicker/stickers/EditorStickerView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v3

    :goto_1
    sub-int v2, v8, v2

    iget-object v8, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$PagerAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    .line 481
    invoke-static {v8}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$1300(Lcom/vk/attachpicker/stickers/EditorStickerView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    :goto_2
    sub-int/2addr v2, v3

    .line 479
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-direct {v5, v6, v2}, Lcom/vk/attachpicker/stickers/EditorStickerView$Adapter;-><init>(Lcom/vk/attachpicker/stickers/EditorStickerView;Lcom/vkcoffee/android/data/orm/StickerStockItem;)V

    invoke-virtual {v1, v5}, Lcom/vk/attachpicker/stickers/StickersRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 480
    goto :goto_1

    :cond_4
    move v3, v4

    .line 481
    goto :goto_2
.end method

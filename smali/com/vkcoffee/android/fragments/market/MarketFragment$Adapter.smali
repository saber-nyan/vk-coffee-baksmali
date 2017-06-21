.class Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;
.super Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;
.source "MarketFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/market/MarketFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# static fields
.field static final TYPE_ALBUM_ITEMS_HORIZONTAL:I = 0x3

.field static final TYPE_ALBUM_ITEMS_VERTICAL:I = 0x2

.field static final TYPE_GOOD_ITEMS_HORIZONTAL:I = 0x1

.field static final TYPE_GOOD_ITEMS_VERTICAL:I = 0x0

.field static final TYPE_SHOW_ALL_ALBUMS:I = 0x4

.field static final TYPE_TITLE:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/market/MarketFragment;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    invoke-direct {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/market/MarketFragment;Lcom/vkcoffee/android/fragments/market/MarketFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/market/MarketFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/market/MarketFragment$1;

    .prologue
    .line 507
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/market/MarketFragment;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 507
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 518
    packed-switch p2, :pswitch_data_0

    .line 552
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 520
    :pswitch_0
    new-instance v0, Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 522
    :pswitch_1
    new-instance v2, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter$1;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->access$1100(Lcom/vkcoffee/android/fragments/market/MarketFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    invoke-direct {v2, p0, p1, v0, p1}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter$1;-><init>(Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;Landroid/view/ViewGroup;ILandroid/view/ViewGroup;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 529
    :pswitch_2
    new-instance v2, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter$2;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->access$1200(Lcom/vkcoffee/android/fragments/market/MarketFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_2
    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, p0, p1, v0, p1}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter$2;-><init>(Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;Landroid/view/ViewGroup;ILandroid/view/ViewGroup;)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 536
    :pswitch_3
    new-instance v0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter$3;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->access$1300(Lcom/vkcoffee/android/fragments/market/MarketFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    invoke-direct {v0, p0, p1, v1, p1}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter$3;-><init>(Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;Landroid/view/ViewGroup;ILandroid/view/ViewGroup;)V

    goto :goto_0

    .line 543
    :pswitch_4
    new-instance v0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter$4;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->access$1400(Lcom/vkcoffee/android/fragments/market/MarketFragment;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    mul-int/lit8 v1, v2, 0x2

    invoke-direct {v0, p0, p1, v1, p1}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter$4;-><init>(Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;Landroid/view/ViewGroup;ILandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_3

    .line 550
    :pswitch_5
    invoke-static {p1}, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;->blackTitle(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;

    move-result-object v0

    goto :goto_0

    .line 518
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

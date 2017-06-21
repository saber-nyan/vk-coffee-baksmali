.class public Lcom/vkcoffee/android/ui/adapters/CardMergeAdapter;
.super Lme/grishka/appkit/utils/MergeRecyclerAdapter;
.source "CardMergeAdapter.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;


# direct methods
.method public varargs constructor <init>([Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V
    .locals 3
    .param p1, "adapters"    # [Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    .prologue
    .line 13
    invoke-direct {p0}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;-><init>()V

    .line 14
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 15
    .local v0, "adapter":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/adapters/CardMergeAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 14
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    .end local v0    # "adapter":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    :cond_0
    return-void
.end method


# virtual methods
.method public getBlockType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/adapters/CardMergeAdapter;->getAdapterForPosition(I)Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    .line 22
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    instance-of v1, v0, Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;

    if-eqz v1, :cond_0

    .line 23
    check-cast v0, Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;

    .end local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/adapters/CardMergeAdapter;->getAdapterPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;->getBlockType(I)I

    move-result v1

    .line 25
    :goto_0
    return v1

    .restart local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

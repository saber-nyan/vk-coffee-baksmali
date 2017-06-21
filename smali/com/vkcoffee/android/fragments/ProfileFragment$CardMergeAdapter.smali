.class Lcom/vkcoffee/android/fragments/ProfileFragment$CardMergeAdapter;
.super Lme/grishka/appkit/utils/MergeRecyclerAdapter;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CardMergeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$CardMergeAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-direct {p0}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;-><init>()V

    .line 679
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Lcom/vkcoffee/android/fragments/ProfileFragment$CardMergeAdapter;)V
    .locals 0

    .prologue
    .line 678
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$CardMergeAdapter;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    return-void
.end method


# virtual methods
.method public getBlockType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 682
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$CardMergeAdapter;->getAdapterForPosition(I)Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    .line 683
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    instance-of v1, v0, Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;

    if-nez v1, :cond_0

    .line 684
    const/4 v1, 0x0

    .line 689
    .end local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    :goto_0
    return v1

    .line 686
    .restart local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$CardMergeAdapter;->getAdapterCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$CardMergeAdapter;->getAdapterAt(I)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$CardMergeAdapter;->getAdapterPosition(I)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$CardMergeAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 687
    const/4 v1, 0x1

    goto :goto_0

    .line 689
    :cond_1
    check-cast v0, Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;

    .end local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$CardMergeAdapter;->getAdapterPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;->getBlockType(I)I

    move-result v1

    goto :goto_0
.end method

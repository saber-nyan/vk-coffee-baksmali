.class Lcom/vkcoffee/android/fragments/ProfileFragment$5;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$5;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 1470
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x41000000    # 8.0f

    .line 1472
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    .line 1473
    .local v0, "pos":I
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$5;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$25(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileInfoAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileInfoAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 1474
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$5;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$21(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$5;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;

    if-eqz v1, :cond_1

    if-eq v0, v4, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1475
    :cond_0
    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 1477
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$5;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$21(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$5;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v1

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$5;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;

    if-eqz v1, :cond_2

    if-ne v0, v4, :cond_2

    .line 1478
    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 1480
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f100398

    if-eq v1, v2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f100060

    if-eq v1, v2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f10005f

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$5;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->ban:Lcom/vkcoffee/android/api/ExtendedUserProfile$BanInfo;

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$5;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;

    iget v1, v1, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;->backgroundType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$5;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicInfoItem;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$5;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;

    if-eqz v1, :cond_6

    .line 1481
    :cond_5
    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 1484
    :cond_6
    return-void
.end method

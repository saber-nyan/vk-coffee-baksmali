.class Lcom/vkcoffee/android/fragments/ProfileFragment$6;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$6;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 1541
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x2

    .line 1543
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$6;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    move v2, v3

    .line 1557
    :goto_0
    return v2

    .line 1546
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$6;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$6;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;

    if-eqz v2, :cond_3

    .line 1547
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$6;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;

    iget-object v1, v2, Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;->view:Landroid/view/View;

    .line 1548
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const v4, 0x7f100398

    if-eq v2, v4, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const v4, 0x7f100060

    if-eq v2, v4, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const v4, 0x7f10005f

    if-eq v2, v4, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const v4, 0x7f100385

    if-ne v2, v4, :cond_3

    :cond_2
    move v2, v3

    .line 1549
    goto :goto_0

    .line 1552
    .end local v1    # "view":Landroid/view/View;
    :cond_3
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-le v0, p1, :cond_4

    .line 1557
    const/4 v2, 0x1

    goto :goto_0

    .line 1553
    :cond_4
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$6;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;

    iget v2, v2, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;->backgroundType:I

    and-int/lit8 v2, v2, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_5

    move v2, v3

    .line 1554
    goto :goto_0

    .line 1552
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

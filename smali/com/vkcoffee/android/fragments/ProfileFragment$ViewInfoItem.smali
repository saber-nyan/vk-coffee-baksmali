.class Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;
.super Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewInfoItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/view/View;)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 394
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;)V

    .line 395
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;->view:Landroid/view/View;

    .line 396
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    :cond_0
    return-void
.end method


# virtual methods
.method public createViewHolder()Lcom/vkcoffee/android/BindableViewHolder;
    .locals 3

    .prologue
    .line 406
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ViewViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;->view:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment$ViewViewHolder;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/view/View;)V

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    return v0
.end method

.class abstract Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "ProfileFragment.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PhotoFeedViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Lcom/vkcoffee/android/Photo;",
        ">;",
        "Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# instance fields
.field final HEIGHT:I

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 2

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 1107
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/view/View;)V

    .line 1104
    const/high16 v0, 0x42e00000    # 112.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;->HEIGHT:I

    .line 1108
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1109
    return-void
.end method


# virtual methods
.method public clearImage(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1122
    return-void
.end method

.method public onBind(Lcom/vkcoffee/android/Photo;)V
    .locals 6
    .param p1, "item"    # Lcom/vkcoffee/android/Photo;

    .prologue
    .line 1112
    const/16 v1, 0x6d

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v0

    .line 1113
    .local v0, "img":Lcom/vkcoffee/android/Photo$Image;
    iget v1, v0, Lcom/vkcoffee/android/Photo$Image;->width:I

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/vkcoffee/android/Photo$Image;->height:I

    if-nez v1, :cond_1

    .line 1114
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;->HEIGHT:I

    int-to-float v3, v3

    const/high16 v4, 0x3fa00000    # 1.25f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;->HEIGHT:I

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1118
    :goto_0
    return-void

    .line 1116
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;->HEIGHT:I

    int-to-float v3, v3

    iget v4, v0, Lcom/vkcoffee/android/Photo$Image;->width:I

    int-to-float v4, v4

    iget v5, v0, Lcom/vkcoffee/android/Photo$Image;->height:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;->HEIGHT:I

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/Photo;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;->onBind(Lcom/vkcoffee/android/Photo;)V

    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1126
    return-void
.end method

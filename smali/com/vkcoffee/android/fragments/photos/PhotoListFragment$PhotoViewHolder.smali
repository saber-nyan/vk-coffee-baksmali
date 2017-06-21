.class Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "PhotoListFragment.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Lcom/vkcoffee/android/Photo;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V
    .locals 4

    .prologue
    .line 250
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    .line 251
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/view/View;)V

    .line 252
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x43340000    # 180.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 254
    return-void
.end method


# virtual methods
.method public bindLayout(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;)V
    .locals 2
    .param p1, "l"    # Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p1, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 261
    return-void
.end method

.method public clearImage(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xd0d0e

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    return-void
.end method

.method public onBind(Lcom/vkcoffee/android/Photo;)V
    .locals 0
    .param p1, "item"    # Lcom/vkcoffee/android/Photo;

    .prologue
    .line 257
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/Photo;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;->onBind(Lcom/vkcoffee/android/Photo;)V

    return-void
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->viewer:Lcom/vkcoffee/android/PhotoViewer;

    if-nez v0, :cond_0

    .line 273
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;->item:Ljava/lang/Object;

    check-cast v0, Lcom/vkcoffee/android/Photo;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->openPhoto(Lcom/vkcoffee/android/Photo;)V

    .line 275
    :cond_0
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 269
    return-void
.end method

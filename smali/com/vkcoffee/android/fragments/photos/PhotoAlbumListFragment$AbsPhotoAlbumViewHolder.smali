.class abstract Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "PhotoAlbumListFragment.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbsPhotoAlbumViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Lcom/vkcoffee/android/api/PhotoAlbum;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# instance fields
.field private menuBtn:Landroid/widget/ImageView;

.field private photo:Landroid/widget/ImageView;

.field private quantity:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;I)V
    .locals 5
    .param p1    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "layout"    # I

    .prologue
    .line 425
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .line 426
    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/content/Context;I)V

    .line 427
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1002d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->title:Landroid/widget/TextView;

    .line 428
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1002d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->quantity:Landroid/widget/TextView;

    .line 429
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1002d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->photo:Landroid/widget/ImageView;

    .line 430
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1002d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->menuBtn:Landroid/widget/ImageView;

    .line 431
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    invoke-static {p1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$2300(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->menuBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder$1;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    return-void
.end method

.method static synthetic access$2400(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->item:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->item:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->item:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->item:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public clearImage(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 479
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->photo:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xd0d0e

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 480
    return-void
.end method

.method public onBind(Lcom/vkcoffee/android/api/PhotoAlbum;)V
    .locals 3
    .param p1, "item"    # Lcom/vkcoffee/android/api/PhotoAlbum;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$2300(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 467
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->quantity:Landroid/widget/TextView;

    iget v1, p1, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->menuBtn:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$3000(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$3100(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    return-void

    .line 469
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 420
    check-cast p1, Lcom/vkcoffee/android/api/PhotoAlbum;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->onBind(Lcom/vkcoffee/android/api/PhotoAlbum;)V

    return-void
.end method

.method public onClick()V
    .locals 5

    .prologue
    .line 484
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "select_album"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 486
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "album"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->item:Ljava/lang/Object;

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 487
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 488
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 498
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 491
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 492
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "album"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->item:Ljava/lang/Object;

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 493
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "select"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 494
    new-instance v3, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->item:Ljava/lang/Object;

    check-cast v2, Lcom/vkcoffee/android/api/PhotoAlbum;

    invoke-direct {v3, v2}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;-><init>(Lcom/vkcoffee/android/api/PhotoAlbum;)V

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0

    .line 496
    :cond_1
    new-instance v3, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->item:Ljava/lang/Object;

    check-cast v2, Lcom/vkcoffee/android/api/PhotoAlbum;

    invoke-direct {v3, v2}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;-><init>(Lcom/vkcoffee/android/api/PhotoAlbum;)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;->setSelect(Z)Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    const/16 v4, 0x2066

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 475
    return-void
.end method

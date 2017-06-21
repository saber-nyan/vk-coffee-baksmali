.class public Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;
.super Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
.source "PostViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostDisplayItemViewHolder"
.end annotation


# instance fields
.field private item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/view/View;)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    .line 371
    invoke-direct {p0, p2}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 372
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/ui/posts/PostDisplayItem;)V
    .locals 0
    .param p1, "item"    # Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    .line 376
    return-void
.end method

.method public clearImage(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 383
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V

    .line 384
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;->itemView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;->bindingImages:Z

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V

    .line 380
    return-void
.end method

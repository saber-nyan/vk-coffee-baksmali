.class Lcom/vkcoffee/android/fragments/PostViewFragment$DummyViewHolder;
.super Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
.source "PostViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DummyViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/view/View;)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$DummyViewHolder;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    .line 286
    invoke-direct {p0, p2}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 287
    return-void
.end method


# virtual methods
.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$DummyViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$DummyViewHolder;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$9(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$DummyViewHolder;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$9(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100366

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/PhotoStripView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setBitmap(ILandroid/graphics/Bitmap;)V

    .line 299
    :cond_0
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$DummyViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$DummyViewHolder;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$9(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$DummyViewHolder;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$9(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100366

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/PhotoStripView;->setBitmap(ILandroid/graphics/Bitmap;)V

    .line 293
    :cond_0
    return-void
.end method

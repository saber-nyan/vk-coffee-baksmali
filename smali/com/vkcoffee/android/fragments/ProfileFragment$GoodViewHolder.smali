.class Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "ProfileFragment.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;
.implements Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView$ItemWidthFixable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoodViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Lcom/vkcoffee/android/data/Good;",
        ">;",
        "Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;",
        "Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView$ItemWidthFixable;"
    }
.end annotation


# instance fields
.field final imageView:Landroid/widget/ImageView;

.field itemWidth:I

.field lastItem:Lcom/vkcoffee/android/data/Good;

.field final text1:Landroid/widget/TextView;

.field final text2:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/view/ViewGroup;)V
    .locals 3
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 838
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 839
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/view/View;)V

    .line 832
    const v0, 0x7f1000d9

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->imageView:Landroid/widget/ImageView;

    .line 835
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->text1:Landroid/widget/TextView;

    .line 836
    const v0, 0x1020015

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->text2:Landroid/widget/TextView;

    .line 840
    iget v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->itemWidth:I

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->setItemWidth(I)V

    .line 841
    return-void
.end method


# virtual methods
.method public clearImage(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 865
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->imageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 866
    return-void
.end method

.method public onBind(Lcom/vkcoffee/android/data/Good;)V
    .locals 2
    .param p1, "item"    # Lcom/vkcoffee/android/data/Good;

    .prologue
    .line 855
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->lastItem:Lcom/vkcoffee/android/data/Good;

    .line 856
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->text1:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/data/Good;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 857
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->text2:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/data/Good;->price_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/data/Good;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->onBind(Lcom/vkcoffee/android/data/Good;)V

    return-void
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 861
    new-instance v0, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;

    sget-object v1, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;->group_module:Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->lastItem:Lcom/vkcoffee/android/data/Good;

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;-><init>(Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;Lcom/vkcoffee/android/data/Good;)V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;->go(Landroid/content/Context;)V

    .line 862
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 869
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 870
    return-void
.end method

.method public setItemWidth(I)V
    .locals 1
    .param p1, "itemWidth"    # I

    .prologue
    .line 844
    iget v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->itemWidth:I

    if-eq v0, p1, :cond_0

    .line 845
    iput p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->itemWidth:I

    .line 846
    if-lez p1, :cond_0

    .line 847
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 848
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 849
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 852
    :cond_0
    return-void
.end method

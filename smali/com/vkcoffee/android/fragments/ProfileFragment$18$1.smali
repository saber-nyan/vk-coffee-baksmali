.class Lcom/vkcoffee/android/fragments/ProfileFragment$18$1;
.super Lcom/vkcoffee/android/fragments/ProfileFragment$ViewViewHolder;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment$18;->createViewHolder()Lcom/vkcoffee/android/BindableViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$18;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment$18;Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/view/View;)V
    .locals 0
    .param p3, "$anonymous0"    # Landroid/view/View;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$18$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$18;

    .line 4194
    invoke-direct {p0, p2, p3}, Lcom/vkcoffee/android/fragments/ProfileFragment$ViewViewHolder;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public clearImage(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 4196
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$ViewViewHolder;->clearImage(I)V

    .line 4197
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 4200
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$18$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$18;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$18;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$18;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$24(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100387

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4201
    return-void
.end method

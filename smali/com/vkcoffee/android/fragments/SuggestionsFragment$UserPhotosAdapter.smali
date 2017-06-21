.class public Lcom/vkcoffee/android/fragments/SuggestionsFragment$UserPhotosAdapter;
.super Ljava/lang/Object;
.source "SuggestionsFragment.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/SuggestionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UserPhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;


# direct methods
.method protected constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UserPhotosAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UserPhotosAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UserPhotosAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 281
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UserPhotosAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    if-nez v2, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UserPhotosAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr p1, v2

    .line 285
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UserPhotosAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-lt p1, v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UserPhotosAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UserPhotosAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UserPhotosAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 290
    const v2, 0x7f100105

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 291
    .local v1, "vv":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 292
    check-cast v1, Landroid/widget/ImageView;

    .end local v1    # "vv":Landroid/view/View;
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.class Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;
.super Ljava/lang/Object;
.source "DocumentAttachment.java"

# interfaces
.implements Lcom/vkcoffee/android/gifs/GifViewer$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

.field final synthetic val$list:Landroid/view/View;

.field final synthetic val$locationInWindow:[I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;Landroid/view/View;[ILandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iput-object p2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$locationInWindow:[I

    iput-object p4, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$list:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClipTopBottom()[I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 316
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$list:Landroid/view/View;

    invoke-static {v1, v3}, Lme/grishka/appkit/utils/V;->getViewOffset(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 317
    .local v0, "offset":Landroid/graphics/Point;
    const/4 v1, 0x2

    new-array v3, v1, [I

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-gez v1, :cond_1

    iget v1, v0, Landroid/graphics/Point;->y:I

    neg-int v1, v1

    :goto_0
    aput v1, v3, v2

    const/4 v1, 0x1

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$view:Landroid/view/View;

    .line 319
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$list:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_0

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$list:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    :cond_0
    aput v2, v3, v1

    return-object v3

    :cond_1
    move v1, v2

    .line 317
    goto :goto_0
.end method

.method public getPreview()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 325
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iget-object v1, v1, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iget-object v1, v1, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->getRenderingBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 332
    :goto_0
    return-object v1

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iget-object v1, v1, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 329
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 330
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 332
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getViewLocation()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 300
    iget-object v2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$locationInWindow:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 301
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$locationInWindow:[I

    aget v2, v2, v7

    iget-object v3, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$locationInWindow:[I

    aget v3, v3, v6

    iget-object v4, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$locationInWindow:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$view:Landroid/view/View;

    .line 304
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$locationInWindow:[I

    aget v5, v5, v6

    iget-object v6, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$view:Landroid/view/View;

    .line 305
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 307
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iget-object v2, v2, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mAttachment:Lcom/vkcoffee/android/attachments/DocumentAttachment;

    iget v2, v2, Lcom/vkcoffee/android/attachments/DocumentAttachment;->height:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iget-object v3, v3, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mAttachment:Lcom/vkcoffee/android/attachments/DocumentAttachment;

    iget v3, v3, Lcom/vkcoffee/android/attachments/DocumentAttachment;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3faa9fbe    # 1.333f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iget-object v3, v3, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mAttachment:Lcom/vkcoffee/android/attachments/DocumentAttachment;

    iget v3, v3, Lcom/vkcoffee/android/attachments/DocumentAttachment;->width:I

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iget-object v3, v3, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mAttachment:Lcom/vkcoffee/android/attachments/DocumentAttachment;

    iget v3, v3, Lcom/vkcoffee/android/attachments/DocumentAttachment;->height:I

    div-int v0, v2, v3

    .line 309
    .local v0, "displayedWidth":I
    iget-object v2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Rect;->inset(II)V

    .line 311
    .end local v0    # "displayedWidth":I
    :cond_0
    return-object v1
.end method

.method public hasPreviewLocationData()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 294
    iget-object v2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$locationInWindow:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 295
    iget-object v2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iget-boolean v2, v2, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->attached:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$locationInWindow:[I

    aget v2, v2, v1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->val$locationInWindow:[I

    aget v2, v2, v0

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$2;->getPreview()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

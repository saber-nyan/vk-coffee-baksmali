.class public Lcom/vkcoffee/android/ui/posts/PaddingPostDisplayItem;
.super Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
.source "PaddingPostDisplayItem.java"


# instance fields
.field private padding:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "_postID"    # I
    .param p2, "_postOwnerID"    # I
    .param p3, "_padding"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 18
    iput p3, p0, Lcom/vkcoffee/android/ui/posts/PaddingPostDisplayItem;->padding:I

    .line 19
    return-void
.end method

.method public static createView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 33
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/vkcoffee/android/ui/posts/PaddingPostDisplayItem;->padding:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    return-void
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x10

    return v0
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 44
    return-void
.end method

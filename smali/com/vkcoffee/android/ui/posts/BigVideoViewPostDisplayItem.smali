.class public Lcom/vkcoffee/android/ui/posts/BigVideoViewPostDisplayItem;
.super Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
.source "BigVideoViewPostDisplayItem.java"


# instance fields
.field public video:Lcom/vkcoffee/android/attachments/VideoAttachment;


# direct methods
.method public constructor <init>(IILcom/vkcoffee/android/attachments/VideoAttachment;)V
    .locals 0
    .param p1, "_postID"    # I
    .param p2, "_postOwnerID"    # I
    .param p3, "_video"    # Lcom/vkcoffee/android/attachments/VideoAttachment;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 15
    iput-object p3, p0, Lcom/vkcoffee/android/ui/posts/BigVideoViewPostDisplayItem;->video:Lcom/vkcoffee/android/attachments/VideoAttachment;

    .line 16
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 35
    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/BigVideoViewPostDisplayItem;->video:Lcom/vkcoffee/android/attachments/VideoAttachment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/vkcoffee/android/attachments/VideoAttachment;->getView(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/BigVideoViewPostDisplayItem;->video:Lcom/vkcoffee/android/attachments/VideoAttachment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/attachments/VideoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0xb

    return v0
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/BigVideoViewPostDisplayItem;->video:Lcom/vkcoffee/android/attachments/VideoAttachment;

    invoke-virtual {v0, p2, p3, p4}, Lcom/vkcoffee/android/attachments/VideoAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    .line 45
    return-void
.end method

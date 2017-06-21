.class public Lcom/vkcoffee/android/ui/posts/CommonAttachmentPostDisplayItem;
.super Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
.source "CommonAttachmentPostDisplayItem.java"


# instance fields
.field public att:Lcom/vkcoffee/android/attachments/Attachment;


# direct methods
.method public constructor <init>(IILcom/vkcoffee/android/attachments/Attachment;)V
    .locals 0
    .param p1, "_postID"    # I
    .param p2, "_postOwnerID"    # I
    .param p3, "_att"    # Lcom/vkcoffee/android/attachments/Attachment;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 21
    iput-object p3, p0, Lcom/vkcoffee/android/ui/posts/CommonAttachmentPostDisplayItem;->att:Lcom/vkcoffee/android/attachments/Attachment;

    .line 22
    return-void
.end method

.method public static createView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 40
    const/4 v0, 0x0

    .local v0, "attachView":Landroid/view/View;
    move-object v3, p1

    .line 41
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    move-object v3, p1

    .line 42
    check-cast v3, Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 44
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 45
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 46
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/CommonAttachmentPostDisplayItem;->att:Lcom/vkcoffee/android/attachments/Attachment;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/vkcoffee/android/attachments/Attachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, "av":Landroid/view/View;
    if-nez v0, :cond_1

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 51
    :cond_1
    return-void
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/CommonAttachmentPostDisplayItem;->att:Lcom/vkcoffee/android/attachments/Attachment;

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/CommonAttachmentPostDisplayItem;->att:Lcom/vkcoffee/android/attachments/Attachment;

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/CommonAttachmentPostDisplayItem;->att:Lcom/vkcoffee/android/attachments/Attachment;

    check-cast v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    invoke-interface {v0}, Lcom/vkcoffee/android/attachments/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x7

    return v0
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/CommonAttachmentPostDisplayItem;->att:Lcom/vkcoffee/android/attachments/Attachment;

    instance-of v1, v1, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v1, :cond_0

    .line 62
    if-nez p3, :cond_1

    .line 63
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/CommonAttachmentPostDisplayItem;->att:Lcom/vkcoffee/android/attachments/Attachment;

    check-cast v1, Lcom/vkcoffee/android/attachments/ImageAttachment;

    invoke-interface {v1, p2}, Lcom/vkcoffee/android/attachments/ImageAttachment;->clearImage(Landroid/view/View;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/CommonAttachmentPostDisplayItem;->att:Lcom/vkcoffee/android/attachments/Attachment;

    check-cast v1, Lcom/vkcoffee/android/attachments/ImageAttachment;

    invoke-interface {v1, p2, p3, p4}, Lcom/vkcoffee/android/attachments/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method

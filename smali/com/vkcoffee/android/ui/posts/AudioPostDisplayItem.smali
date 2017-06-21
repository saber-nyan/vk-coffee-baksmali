.class public Lcom/vkcoffee/android/ui/posts/AudioPostDisplayItem;
.super Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
.source "AudioPostDisplayItem.java"


# instance fields
.field public att:Lcom/vkcoffee/android/attachments/AudioAttachment;


# direct methods
.method public constructor <init>(IILcom/vkcoffee/android/attachments/AudioAttachment;)V
    .locals 0
    .param p1, "_postID"    # I
    .param p2, "_postOwnerID"    # I
    .param p3, "_att"    # Lcom/vkcoffee/android/attachments/AudioAttachment;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 20
    iput-object p3, p0, Lcom/vkcoffee/android/ui/posts/AudioPostDisplayItem;->att:Lcom/vkcoffee/android/attachments/AudioAttachment;

    .line 21
    return-void
.end method

.method public static createView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 41
    const/4 v0, 0x0

    .local v0, "attachView":Landroid/view/View;
    move-object v3, p1

    .line 42
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    move-object v3, p1

    .line 43
    check-cast v3, Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 45
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 46
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 47
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/AudioPostDisplayItem;->att:Lcom/vkcoffee/android/attachments/AudioAttachment;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/vkcoffee/android/attachments/AudioAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .local v1, "av":Landroid/view/View;
    move-object v3, v1

    .line 48
    check-cast v3, Lcom/vkcoffee/android/AudioAttachView;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/posts/AudioPostDisplayItem;->att:Lcom/vkcoffee/android/attachments/AudioAttachment;

    iget-object v4, v4, Lcom/vkcoffee/android/attachments/AudioAttachment;->playlist:Ljava/util/ArrayList;

    iput-object v4, v3, Lcom/vkcoffee/android/AudioAttachView;->playlist:Ljava/util/ArrayList;

    move-object v3, v1

    .line 49
    check-cast v3, Lcom/vkcoffee/android/AudioAttachView;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/posts/AudioPostDisplayItem;->att:Lcom/vkcoffee/android/attachments/AudioAttachment;

    iget v4, v4, Lcom/vkcoffee/android/attachments/AudioAttachment;->playlistPos:I

    iput v4, v3, Lcom/vkcoffee/android/AudioAttachView;->playlistPos:I

    move-object v3, v1

    .line 50
    check-cast v3, Lcom/vkcoffee/android/AudioAttachView;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/posts/AudioPostDisplayItem;->att:Lcom/vkcoffee/android/attachments/AudioAttachment;

    iget-object v4, v4, Lcom/vkcoffee/android/attachments/AudioAttachment;->referer:Ljava/lang/String;

    iput-object v4, v3, Lcom/vkcoffee/android/AudioAttachView;->referer:Ljava/lang/String;

    .line 51
    if-nez v0, :cond_1

    .line 52
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 55
    :cond_1
    return-void
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x6

    return v0
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 65
    return-void
.end method

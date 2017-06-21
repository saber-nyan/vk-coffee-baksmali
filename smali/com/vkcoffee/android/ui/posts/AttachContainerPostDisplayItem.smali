.class public Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;
.super Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
.source "AttachContainerPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;
    }
.end annotation


# instance fields
.field public atts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private fromList:Z

.field private sidePadding:Z


# direct methods
.method public constructor <init>(IILjava/util/ArrayList;ZZ)V
    .locals 1
    .param p1, "_postID"    # I
    .param p2, "_postOwnerID"    # I
    .param p4, "list"    # Z
    .param p5, "sidePadding"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "_atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    .line 25
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    iput-boolean p4, p0, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;->fromList:Z

    .line 28
    iput-boolean p5, p0, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;->sidePadding:Z

    .line 29
    return-void
.end method

.method public static createView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    .local v2, "view":Landroid/view/View;
    new-instance v0, Lcom/vkcoffee/android/ui/FlowLayout;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/FlowLayout;-><init>(Landroid/content/Context;)V

    .local v0, "fl":Lcom/vkcoffee/android/ui/FlowLayout;
    move-object v3, v2

    .line 51
    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 52
    new-instance v1, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;-><init>(Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem$1;)V

    .line 53
    .local v1, "holder":Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;
    iput-object v0, v1, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkcoffee/android/ui/FlowLayout;

    .line 54
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    return-object v2
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v9, 0x7f0a0027

    const/4 v6, 0x0

    const/high16 v8, 0x41000000    # 8.0f

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;

    .line 61
    .local v2, "holder":Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, v2, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkcoffee/android/ui/FlowLayout;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/FlowLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 62
    iget-object v5, v2, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkcoffee/android/ui/FlowLayout;

    invoke-virtual {v5, v3}, Lcom/vkcoffee/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 63
    .local v1, "att":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/vkcoffee/android/attachments/Attachment;->reuseView(Landroid/view/View;Ljava/lang/String;)V

    .line 61
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "att":Landroid/view/View;
    :cond_1
    iget-object v5, v2, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkcoffee/android/ui/FlowLayout;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/FlowLayout;->removeAllViews()V

    .line 68
    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;->sidePadding:Z

    if-eqz v5, :cond_2

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-static {v8}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-static {v8}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v8

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 73
    :goto_1
    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 74
    iget-object v5, p0, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/Attachment;

    .line 75
    .local v1, "att":Lcom/vkcoffee/android/attachments/Attachment;
    invoke-virtual {v1}, Lcom/vkcoffee/android/attachments/Attachment;->overrideLayoutParams()Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;

    move-result-object v4

    .line 76
    .local v4, "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;->fromList:Z

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/vkcoffee/android/attachments/Attachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "addingView":Landroid/view/View;
    :goto_3
    if-eqz v4, :cond_4

    .line 78
    iget-object v5, v2, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkcoffee/android/ui/FlowLayout;

    invoke-virtual {v5, v0, v4}, Lcom/vkcoffee/android/ui/FlowLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 71
    .end local v0    # "addingView":Landroid/view/View;
    .end local v1    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v4    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    :cond_2
    invoke-static {v8}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    invoke-virtual {p1, v6, v5, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 76
    .restart local v1    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .restart local v4    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/vkcoffee/android/attachments/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_3

    .line 80
    .restart local v0    # "addingView":Landroid/view/View;
    :cond_4
    iget-object v5, v2, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkcoffee/android/ui/FlowLayout;

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/ui/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 83
    .end local v0    # "addingView":Landroid/view/View;
    .end local v1    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v4    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    :cond_5
    return-void
.end method

.method public getImageCount()I
    .locals 4

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, "count":I
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 40
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v3, v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v3, :cond_0

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_1
    return v1
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 4
    .param p1, "image"    # I

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 89
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 90
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v3, v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v3, :cond_1

    .line 91
    if-ne v1, p1, :cond_0

    .line 92
    check-cast v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    invoke-interface {v0}, Lcom/vkcoffee/android/attachments/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v3

    .line 97
    :goto_1
    return-object v3

    .line 94
    .restart local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 88
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x9

    return v0
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 7
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 102
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;

    .line 103
    .local v2, "holder":Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .line 104
    .local v4, "j":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_0
    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 105
    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 106
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v6, v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v6, :cond_1

    .line 107
    if-ne v3, p1, :cond_0

    .line 108
    iget-object v6, v2, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkcoffee/android/ui/FlowLayout;

    invoke-virtual {v6, v4}, Lcom/vkcoffee/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 109
    .local v1, "av":Landroid/view/View;
    if-nez p3, :cond_2

    .line 110
    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/attachments/ImageAttachment;

    invoke-interface {v6, v1}, Lcom/vkcoffee/android/attachments/ImageAttachment;->clearImage(Landroid/view/View;)V

    .line 115
    .end local v1    # "av":Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 117
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 104
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 112
    .restart local v1    # "av":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/attachments/ImageAttachment;

    invoke-interface {v6, v1, p3, p4}, Lcom/vkcoffee/android/attachments/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    goto :goto_1

    .line 119
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v1    # "av":Landroid/view/View;
    :cond_3
    return-void
.end method

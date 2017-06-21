.class public Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;
.super Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
.source "ThumbsBlockPostDisplayItem.java"

# interfaces
.implements Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;
    }
.end annotation


# instance fields
.field public all:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/ThumbAttachment;",
            ">;"
        }
    .end annotation
.end field

.field public atts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/attachments/ThumbAttachment;",
            ">;"
        }
    .end annotation
.end field

.field public listReferer:Ljava/lang/String;

.field private photoViewer:Lcom/vkcoffee/android/PhotoViewer;

.field private photoViewerParent:Landroid/view/ViewGroup;

.field public photosMode:Z

.field public post:Lcom/vkcoffee/android/NewsEntry;

.field public referer:Ljava/lang/String;

.field public useBigVideoView:Z


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/NewsEntry;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "_post"    # Lcom/vkcoffee/android/NewsEntry;
    .param p3, "_photosMode"    # Z
    .param p4, "_referer"    # Ljava/lang/String;
    .param p5, "_listReferer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/NewsEntry;",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/ThumbAttachment;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/ThumbAttachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "_atts":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/ThumbAttachment;>;"
    .local p6, "_all":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/ThumbAttachment;>;"
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget v1, p1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->useBigVideoView:Z

    .line 49
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 50
    iput-boolean p3, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->photosMode:Z

    .line 51
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    .line 52
    iput-object p4, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->referer:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->listReferer:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->all:Ljava/util/List;

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;)Lcom/vkcoffee/android/PhotoViewer;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->photoViewer:Lcom/vkcoffee/android/PhotoViewer;

    return-object v0
.end method

.method public static createView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    new-instance v1, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$1;-><init>(Landroid/content/Context;)V

    .line 74
    .local v1, "fl":Landroid/widget/FrameLayout;
    new-instance v0, Lcom/vkcoffee/android/ui/FlowLayout;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/FlowLayout;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, "f":Lcom/vkcoffee/android/ui/FlowLayout;
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 76
    new-instance v2, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;-><init>(Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$1;)V

    .line 77
    .local v2, "holder":Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;
    iput-object v0, v2, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkcoffee/android/ui/FlowLayout;

    .line 78
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 79
    return-object v1
.end method

.method private openPhotoList(ILandroid/view/View;Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsEntry;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p4, "e"    # Lcom/vkcoffee/android/NewsEntry;
    .param p5, "attachContainer"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/Photo;",
            ">;",
            "Lcom/vkcoffee/android/NewsEntry;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 200
    .local p3, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Photo;>;"
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->photoViewer:Lcom/vkcoffee/android/PhotoViewer;

    if-eqz v1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 203
    :cond_0
    const-string/jumbo v1, "post_interaction"

    invoke-static {v1}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string/jumbo v2, "post_id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->postOwnerID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->postID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string/jumbo v2, "action"

    const-string/jumbo v3, "open_photo"

    .line 205
    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string/jumbo v2, "ref"

    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->listReferer:Ljava/lang/String;

    .line 206
    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 208
    iput-object p5, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->photoViewerParent:Landroid/view/ViewGroup;

    .line 209
    new-instance v2, Lcom/vkcoffee/android/PhotoViewer;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v2, v1, p3, p1, p0}, Lcom/vkcoffee/android/PhotoViewer;-><init>(Landroid/app/Activity;Ljava/util/List;ILcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->photoViewer:Lcom/vkcoffee/android/PhotoViewer;

    .line 210
    if-eqz p4, :cond_2

    iget v1, p4, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    iget v1, p4, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    iget v1, p4, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    :cond_1
    iget v1, p4, Lcom/vkcoffee/android/NewsEntry;->postID:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_2

    .line 211
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->photoViewer:Lcom/vkcoffee/android/PhotoViewer;

    iget v2, p4, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/PhotoViewer;->setDisplayTotal(I)V

    .line 212
    move-object v0, p3

    .line 213
    .local v0, "_photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Photo;>;"
    new-instance v1, Lcom/vkcoffee/android/api/photos/GetFullPhotoList;

    invoke-direct {v1, p4}, Lcom/vkcoffee/android/api/photos/GetFullPhotoList;-><init>(Lcom/vkcoffee/android/NewsEntry;)V

    new-instance v2, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$2;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$2;-><init>(Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/photos/GetFullPhotoList;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 237
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 239
    .end local v0    # "_photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Photo;>;"
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->photoViewer:Lcom/vkcoffee/android/PhotoViewer;

    invoke-virtual {v1}, Lcom/vkcoffee/android/PhotoViewer;->show()V

    goto/16 :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;

    .line 85
    .local v3, "holder":Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v9, v3, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkcoffee/android/ui/FlowLayout;

    invoke-virtual {v9}, Lcom/vkcoffee/android/ui/FlowLayout;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 86
    iget-object v9, v3, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkcoffee/android/ui/FlowLayout;

    invoke-virtual {v9, v4}, Lcom/vkcoffee/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "att":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/vkcoffee/android/attachments/Attachment;->reuseView(Landroid/view/View;Ljava/lang/String;)V

    .line 85
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "att":Landroid/view/View;
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v8, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Photo;>;"
    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->all:Ljava/util/List;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->all:Ljava/util/List;

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    .line 94
    .local v0, "att":Lcom/vkcoffee/android/attachments/ThumbAttachment;
    instance-of v10, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    if-eqz v10, :cond_2

    instance-of v10, v0, Lcom/vkcoffee/android/attachments/AlbumAttachment;

    if-nez v10, :cond_2

    .line 95
    new-instance v10, Lcom/vkcoffee/android/Photo;

    check-cast v0, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    .end local v0    # "att":Lcom/vkcoffee/android/attachments/ThumbAttachment;
    invoke-direct {v10, v0}, Lcom/vkcoffee/android/Photo;-><init>(Lcom/vkcoffee/android/attachments/PhotoAttachment;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 93
    :cond_3
    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    goto :goto_1

    .line 99
    :cond_4
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/16 v11, 0x11

    invoke-direct {v7, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 100
    .local v7, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-boolean v9, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->useBigVideoView:Z

    if-nez v9, :cond_5

    .line 101
    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 103
    :cond_5
    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v10, v10, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_9

    .line 104
    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v9, v9, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v10, v10, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/attachments/Attachment;

    .line 105
    .local v6, "last":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v9, v6, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    if-eqz v9, :cond_8

    const/4 v9, 0x0

    :goto_3
    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 109
    .end local v6    # "last":Lcom/vkcoffee/android/attachments/Attachment;
    :goto_4
    iget-object v9, v3, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkcoffee/android/ui/FlowLayout;

    invoke-virtual {v9, v7}, Lcom/vkcoffee/android/ui/FlowLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v9, v3, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkcoffee/android/ui/FlowLayout;

    invoke-virtual {v9}, Lcom/vkcoffee/android/ui/FlowLayout;->removeAllViews()V

    .line 112
    const/4 v4, 0x0

    .line 113
    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    .restart local v0    # "att":Lcom/vkcoffee/android/attachments/ThumbAttachment;
    move-object v9, v0

    .line 115
    check-cast v9, Lcom/vkcoffee/android/attachments/Attachment;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Lcom/vkcoffee/android/attachments/Attachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, "av":Landroid/view/View;
    instance-of v9, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    if-eqz v9, :cond_6

    instance-of v9, v0, Lcom/vkcoffee/android/attachments/AlbumAttachment;

    if-nez v9, :cond_6

    .line 117
    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->all:Ljava/util/List;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->all:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 118
    .local v5, "index":I
    :goto_6
    iget-object v2, v3, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkcoffee/android/ui/FlowLayout;

    .line 119
    .local v2, "container":Landroid/view/View;
    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v9, v9, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v11, 0xb

    if-eq v9, v11, :cond_b

    .line 120
    invoke-static {p0, v5, v8, v2}, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;ILjava/util/ArrayList;Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .end local v2    # "container":Landroid/view/View;
    .end local v5    # "index":I
    :cond_6
    :goto_7
    instance-of v9, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;

    if-eqz v9, :cond_7

    .line 127
    check-cast v0, Lcom/vkcoffee/android/attachments/VideoAttachment;

    .end local v0    # "att":Lcom/vkcoffee/android/attachments/ThumbAttachment;
    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->referer:Ljava/lang/String;

    iput-object v9, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->referer:Ljava/lang/String;

    .line 129
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 130
    iget-object v9, v3, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkcoffee/android/ui/FlowLayout;

    invoke-virtual {v9, v1}, Lcom/vkcoffee/android/ui/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 105
    .end local v1    # "av":Landroid/view/View;
    .restart local v6    # "last":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_8
    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    goto :goto_3

    .line 107
    .end local v6    # "last":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_9
    const/4 v9, 0x0

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_4

    .restart local v0    # "att":Lcom/vkcoffee/android/attachments/ThumbAttachment;
    .restart local v1    # "av":Landroid/view/View;
    :cond_a
    move v5, v4

    .line 117
    goto :goto_6

    .line 122
    .restart local v2    # "container":Landroid/view/View;
    .restart local v5    # "index":I
    :cond_b
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/view/View;->setClickable(Z)V

    goto :goto_7

    .line 132
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/ThumbAttachment;
    .end local v1    # "av":Landroid/view/View;
    .end local v2    # "container":Landroid/view/View;
    .end local v5    # "index":I
    :cond_c
    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v9, v9, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v10, 0x6

    if-eq v9, v10, :cond_d

    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v9, v9, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v10, 0x7

    if-eq v9, v10, :cond_d

    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v9, v9, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v10, 0x9

    if-ne v9, v10, :cond_e

    .line 133
    :cond_d
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x40800000    # 4.0f

    invoke-static {v12}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v12

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 137
    :goto_8
    return-void

    .line 135
    :cond_e
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_8
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    invoke-interface {v0}, Lcom/vkcoffee/android/attachments/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .param p3, "outClip"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 159
    iget-object v4, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->photoViewerParent:Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 160
    .local v3, "v":Landroid/view/View;
    :goto_0
    if-nez v3, :cond_2

    .line 177
    :cond_0
    :goto_1
    return-void

    .line 159
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->photoViewerParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 163
    .restart local v3    # "v":Landroid/view/View;
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f1001bf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, "list":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 167
    const/4 v4, 0x2

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 168
    .local v1, "loc":[I
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 169
    aget v4, v1, v6

    aget v5, v1, v8

    aget v6, v1, v6

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v1, v8

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 170
    invoke-static {v3, v0}, Lme/grishka/appkit/utils/V;->getViewOffset(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    .line 171
    .local v2, "offset":Landroid/graphics/Point;
    iget v4, v2, Landroid/graphics/Point;->y:I

    if-gez v4, :cond_3

    .line 172
    iget v4, v2, Landroid/graphics/Point;->y:I

    neg-int v4, v4

    iput v4, p3, Landroid/graphics/Rect;->top:I

    .line 174
    :cond_3
    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 175
    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 167
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x5

    return v0
.end method

.method public isMoreAvailable()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$bindView$719(ILjava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p4, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v4, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    move-object v5, p3

    check-cast v5, Landroid/view/ViewGroup;

    move-object v0, p0

    move v1, p1

    move-object v2, p4

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->openPhotoList(ILandroid/view/View;Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsEntry;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public loadMore()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public onDismissed()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->photoViewer:Lcom/vkcoffee/android/PhotoViewer;

    .line 192
    iput-object v0, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->photoViewerParent:Landroid/view/ViewGroup;

    .line 193
    return-void
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 146
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;

    .line 147
    .local v1, "holder":Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;
    iget-object v2, v1, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkcoffee/android/ui/FlowLayout;

    invoke-virtual {v2, p1}, Lcom/vkcoffee/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 148
    .local v0, "av":Landroid/view/View;
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    if-ltz p1, :cond_0

    .line 149
    if-nez p3, :cond_1

    .line 150
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/attachments/ImageAttachment;

    invoke-interface {v2, v0}, Lcom/vkcoffee/android/attachments/ImageAttachment;->clearImage(Landroid/view/View;)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/attachments/ImageAttachment;

    invoke-interface {v2, v0, p3, p4}, Lcom/vkcoffee/android/attachments/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

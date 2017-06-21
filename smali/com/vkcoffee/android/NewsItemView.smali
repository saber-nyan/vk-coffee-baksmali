.class public Lcom/vkcoffee/android/NewsItemView;
.super Ljava/lang/Object;
.source "NewsItemView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(ILandroid/view/View;Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsEntry;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Lcom/vkcoffee/android/NewsEntry;
    .param p4, "x4"    # Landroid/view/View;
    .param p5, "x5"    # I

    .prologue
    .line 24
    invoke-static/range {p0 .. p5}, Lcom/vkcoffee/android/NewsItemView;->openPhotoList(ILandroid/view/View;Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsEntry;Landroid/view/View;I)V

    return-void
.end method

.method public static addAttachments(Landroid/view/View;Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsEntry;I)V
    .locals 24
    .param p0, "item"    # Landroid/view/View;
    .param p2, "e"    # Lcom/vkcoffee/android/NewsEntry;
    .param p3, "containerID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;",
            "Lcom/vkcoffee/android/NewsEntry;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 28
    .local v20, "t":J
    const/16 v18, 0x0

    .local v18, "pi":I
    const/4 v11, 0x0

    .line 29
    .local v11, "ai":I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v17, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Photo;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v13, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    const/4 v15, 0x0

    .line 32
    .local v15, "nPhotos":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkcoffee/android/attachments/Attachment;

    .line 33
    .local v12, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v2, v12, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    if-eqz v2, :cond_1

    instance-of v2, v12, Lcom/vkcoffee/android/attachments/AlbumAttachment;

    if-nez v2, :cond_1

    .line 34
    add-int/lit8 v15, v15, 0x1

    .line 35
    new-instance v4, Lcom/vkcoffee/android/Photo;

    move-object v2, v12

    check-cast v2, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    invoke-direct {v4, v2}, Lcom/vkcoffee/android/Photo;-><init>(Lcom/vkcoffee/android/attachments/PhotoAttachment;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_1
    instance-of v2, v12, Lcom/vkcoffee/android/attachments/AudioAttachment;

    if-eqz v2, :cond_0

    move-object v9, v12

    .line 38
    check-cast v9, Lcom/vkcoffee/android/attachments/AudioAttachment;

    .line 39
    .local v9, "aa":Lcom/vkcoffee/android/attachments/AudioAttachment;
    const-string/jumbo v2, "comments"

    iput-object v2, v9, Lcom/vkcoffee/android/attachments/AudioAttachment;->referer:Ljava/lang/String;

    .line 40
    new-instance v2, Lcom/vkcoffee/android/AudioFile;

    iget v3, v9, Lcom/vkcoffee/android/attachments/AudioAttachment;->aid:I

    iget v4, v9, Lcom/vkcoffee/android/attachments/AudioAttachment;->oid:I

    iget-object v5, v9, Lcom/vkcoffee/android/attachments/AudioAttachment;->artist:Ljava/lang/String;

    iget-object v6, v9, Lcom/vkcoffee/android/attachments/AudioAttachment;->title:Ljava/lang/String;

    iget v7, v9, Lcom/vkcoffee/android/attachments/AudioAttachment;->duration:I

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/vkcoffee/android/AudioFile;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    .end local v9    # "aa":Lcom/vkcoffee/android/attachments/AudioAttachment;
    .end local v12    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_2
    const/16 v19, 0x0

    .line 44
    .local v19, "thumb":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkcoffee/android/attachments/Attachment;

    .line 45
    .restart local v12    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    if-eqz v12, :cond_3

    .line 46
    if-eqz p2, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v4}, Lcom/vkcoffee/android/attachments/Attachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v22

    .line 47
    .local v22, "v":Landroid/view/View;
    :goto_2
    if-lez v15, :cond_4

    instance-of v2, v12, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    if-eqz v2, :cond_4

    instance-of v2, v12, Lcom/vkcoffee/android/attachments/AlbumAttachment;

    if-nez v2, :cond_4

    .line 48
    new-instance v16, Lcom/vkcoffee/android/Photo;

    move-object v2, v12

    check-cast v2, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/vkcoffee/android/Photo;-><init>(Lcom/vkcoffee/android/attachments/PhotoAttachment;)V

    .line 49
    .local v16, "photo":Lcom/vkcoffee/android/Photo;
    move/from16 v3, v18

    .line 50
    .local v3, "idx":I
    new-instance v2, Lcom/vkcoffee/android/NewsItemView$1;

    move-object/from16 v4, v17

    move-object/from16 v5, p2

    move-object/from16 v6, p0

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/vkcoffee/android/NewsItemView$1;-><init>(ILjava/util/ArrayList;Lcom/vkcoffee/android/NewsEntry;Landroid/view/View;I)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    add-int/lit8 v18, v18, 0x1

    .line 63
    const/4 v2, 0x1

    if-ne v15, v2, :cond_4

    move-object/from16 v2, v22

    .line 64
    check-cast v2, Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 67
    .end local v3    # "idx":I
    .end local v16    # "photo":Lcom/vkcoffee/android/Photo;
    :cond_4
    instance-of v2, v12, Lcom/vkcoffee/android/attachments/AudioAttachment;

    if-eqz v2, :cond_5

    move-object/from16 v10, v22

    .line 68
    check-cast v10, Lcom/vkcoffee/android/AudioAttachView;

    .line 69
    .local v10, "aav":Lcom/vkcoffee/android/AudioAttachView;
    iput-object v13, v10, Lcom/vkcoffee/android/AudioAttachView;->playlist:Ljava/util/ArrayList;

    .line 70
    iput v11, v10, Lcom/vkcoffee/android/AudioAttachView;->playlistPos:I

    .line 71
    add-int/lit8 v11, v11, 0x1

    .line 73
    .end local v10    # "aav":Lcom/vkcoffee/android/AudioAttachView;
    :cond_5
    instance-of v2, v12, Lcom/vkcoffee/android/attachments/VideoAttachment;

    if-eqz v2, :cond_6

    move-object v2, v12

    .line 74
    check-cast v2, Lcom/vkcoffee/android/attachments/VideoAttachment;

    const-string/jumbo v4, "comments"

    iput-object v4, v2, Lcom/vkcoffee/android/attachments/VideoAttachment;->referer:Ljava/lang/String;

    .line 76
    :cond_6
    instance-of v2, v12, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    if-nez v2, :cond_7

    instance-of v2, v12, Lcom/vkcoffee/android/attachments/DocumentAttachment;

    if-eqz v2, :cond_9

    check-cast v12, Lcom/vkcoffee/android/attachments/DocumentAttachment;

    .end local v12    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    iget-object v2, v12, Lcom/vkcoffee/android/attachments/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 77
    :cond_7
    move-object/from16 v19, v22

    .line 83
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 46
    .end local v22    # "v":Landroid/view/View;
    .restart local v12    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/vkcoffee/android/attachments/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v22

    goto :goto_2

    .line 79
    .end local v12    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .restart local v22    # "v":Landroid/view/View;
    :cond_9
    new-instance v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;

    invoke-direct {v14}, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;-><init>()V

    .line 80
    .local v14, "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    const/4 v2, -0x1

    iput v2, v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->width:I

    .line 81
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 86
    .end local v14    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    .end local v22    # "v":Landroid/view/View;
    :cond_a
    if-eqz v19, :cond_b

    .line 87
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;

    .line 88
    .restart local v14    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    if-eqz v14, :cond_b

    .line 89
    const/4 v2, 0x1

    iput-boolean v2, v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 90
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .end local v14    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    :cond_b
    return-void
.end method

.method private static openPhotoList(ILandroid/view/View;Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsEntry;Landroid/view/View;I)V
    .locals 14
    .param p0, "index"    # I
    .param p1, "view"    # Landroid/view/View;
    .param p3, "e"    # Lcom/vkcoffee/android/NewsEntry;
    .param p4, "container"    # Landroid/view/View;
    .param p5, "vID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/Photo;",
            ">;",
            "Lcom/vkcoffee/android/NewsEntry;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Photo;>;"
    const v7, 0x7f10004f

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 137
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual/range {p4 .. p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 101
    .local v1, "attachContainer":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 102
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 103
    .local v6, "v":Landroid/view/View;
    const/4 v7, 0x2

    new-array v4, v7, [I

    fill-array-data v4, :array_0

    .line 104
    .local v4, "pos":[I
    invoke-virtual {v6, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 105
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/Photo;

    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    aget v9, v4, v9

    const/4 v10, 0x1

    aget v10, v4, v10

    const/4 v11, 0x0

    aget v11, v4, v11

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    const/4 v12, 0x1

    aget v12, v4, v12

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, v7, Lcom/vkcoffee/android/Photo;->viewBounds:Landroid/graphics/Rect;

    .line 106
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-static {v6, v7}, Lcom/vkcoffee/android/ViewUtils;->getViewOffset(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v7

    iget v5, v7, Landroid/graphics/Point;->y:I

    .line 107
    .local v5, "top":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/Photo;

    if-gez v5, :cond_1

    neg-int v8, v5

    :goto_2
    iput v8, v7, Lcom/vkcoffee/android/Photo;->viewClipTop:I

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 110
    .end local v4    # "pos":[I
    .end local v5    # "top":I
    .end local v6    # "v":Landroid/view/View;
    :cond_2
    new-instance v3, Lcom/vkcoffee/android/PhotoViewer;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    new-instance v8, Lcom/vkcoffee/android/NewsItemView$2;

    move-object/from16 v0, p4

    invoke-direct {v8, v0}, Lcom/vkcoffee/android/NewsItemView$2;-><init>(Landroid/view/View;)V

    move-object/from16 v0, p2

    invoke-direct {v3, v7, v0, p0, v8}, Lcom/vkcoffee/android/PhotoViewer;-><init>(Landroid/app/Activity;Ljava/util/List;ILcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;)V

    .line 135
    .local v3, "photoViewer":Lcom/vkcoffee/android/PhotoViewer;
    const v7, 0x7f10004f

    move-object/from16 v0, p4

    invoke-virtual {v0, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 136
    invoke-virtual {v3}, Lcom/vkcoffee/android/PhotoViewer;->show()V

    goto/16 :goto_0

    .line 103
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

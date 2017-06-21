.class public Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;
.super Lcom/vkcoffee/android/fragments/VKRecyclerFragment;
.source "PhotoListFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;,
        Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$HeaderAdapter;,
        Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$HeaderViewHolder;,
        Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;,
        Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;,
        Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/VKRecyclerFragment",
        "<",
        "Lcom/vkcoffee/android/Photo;",
        ">;",
        "Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;"
    }
.end annotation


# static fields
.field private static final ROW_HEIGHT:I = 0xb4

.field private static final UPLOAD_RESULT:I = 0xf32


# instance fields
.field protected adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

.field protected album:Lcom/vkcoffee/android/api/PhotoAlbum;

.field protected layout:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private listWidth:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field protected showAlbumHeader:Z

.field protected viewer:Lcom/vkcoffee/android/PhotoViewer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 279
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;-><init>(I)V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->layout:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 280
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "perPage"    # I

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;-><init>(I)V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->layout:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 284
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->layoutPhotos()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->listWidth:I

    return-void
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    return-object v0
.end method

.method private layoutPhotos()V
    .locals 23

    .prologue
    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->data:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->listWidth:I

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->layout:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 581
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->listWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 582
    .local v16, "scrW":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3fc00000    # 1.5f

    mul-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 583
    .local v11, "maxW":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .local v13, "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;>;"
    const/4 v14, 0x0

    .line 585
    .local v14, "rowW":I
    const/4 v9, 0x0

    .line 586
    .local v9, "j":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->data:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 587
    .local v7, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_1

    .line 638
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_0

    .line 639
    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 640
    .local v3, "f":F
    const/16 v17, 0x3e8

    .line 641
    .local v17, "spansLeft":I
    move/from16 v0, v16

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 642
    .local v18, "widthLeft":I
    const/4 v5, 0x0

    .line 643
    .local v5, "i":I
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 644
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_a

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->layout:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 656
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 659
    .end local v3    # "f":F
    .end local v5    # "i":I
    .end local v7    # "it":Ljava/util/Iterator;
    .end local v9    # "j":I
    .end local v11    # "maxW":I
    .end local v13    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;>;"
    .end local v14    # "rowW":I
    .end local v16    # "scrW":I
    .end local v17    # "spansLeft":I
    .end local v18    # "widthLeft":I
    :cond_0
    return-void

    .line 589
    .restart local v7    # "it":Ljava/util/Iterator;
    .restart local v9    # "j":I
    .restart local v11    # "maxW":I
    .restart local v13    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;>;"
    .restart local v14    # "rowW":I
    .restart local v16    # "scrW":I
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkcoffee/android/Photo;

    .line 590
    .local v12, "photo":Lcom/vkcoffee/android/Photo;
    const/16 v19, 0x78

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v6

    .line 591
    .local v6, "img":Lcom/vkcoffee/android/Photo$Image;
    iget v0, v6, Lcom/vkcoffee/android/Photo$Image;->width:I

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 592
    const/16 v15, 0xb4

    .line 596
    .local v15, "scaledW":I
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->needLineBreakAfter(I)Z

    move-result v4

    .line 597
    .local v4, "forceBreak":Z
    add-int v19, v14, v15

    move/from16 v0, v19

    if-gt v0, v11, :cond_2

    if-eqz v4, :cond_4

    .line 598
    :cond_2
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v14

    move/from16 v20, v0

    div-float v3, v19, v20

    .line 599
    .restart local v3    # "f":F
    const/16 v17, 0x3e8

    .line 600
    .restart local v17    # "spansLeft":I
    move/from16 v0, v16

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 601
    .restart local v18    # "widthLeft":I
    const/4 v5, 0x0

    .line 602
    .restart local v5    # "i":I
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 603
    .local v8, "it2":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_7

    .line 614
    if-nez v4, :cond_3

    if-lez v17, :cond_3

    .line 615
    const/4 v5, 0x0

    .line 616
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 617
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_9

    .line 625
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->layout:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 626
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 627
    const/4 v14, 0x0

    .line 629
    .end local v3    # "f":F
    .end local v5    # "i":I
    .end local v8    # "it2":Ljava/util/Iterator;
    .end local v17    # "spansLeft":I
    .end local v18    # "widthLeft":I
    :cond_4
    add-int v19, v14, v15

    move/from16 v0, v19

    if-gt v0, v11, :cond_5

    .line 630
    new-instance v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;)V

    .line 631
    .local v10, "li":Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;
    iput-object v12, v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;->photo:Lcom/vkcoffee/android/Photo;

    .line 632
    iput v15, v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;->scaledWidth:I

    .line 633
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    add-int/2addr v14, v15

    .line 636
    .end local v10    # "li":Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 594
    .end local v4    # "forceBreak":Z
    .end local v15    # "scaledW":I
    :cond_6
    const/high16 v19, 0x3fc00000    # 1.5f

    const/high16 v20, 0x3f000000    # 0.5f

    iget v0, v6, Lcom/vkcoffee/android/Photo$Image;->width:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v6, Lcom/vkcoffee/android/Photo$Image;->height:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    const/high16 v20, 0x43340000    # 180.0f

    mul-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v15

    .restart local v15    # "scaledW":I
    goto/16 :goto_2

    .line 604
    .restart local v3    # "f":F
    .restart local v4    # "forceBreak":Z
    .restart local v5    # "i":I
    .restart local v8    # "it2":Ljava/util/Iterator;
    .restart local v17    # "spansLeft":I
    .restart local v18    # "widthLeft":I
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;

    .line 605
    .restart local v10    # "li":Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;
    const/high16 v19, 0x43340000    # 180.0f

    invoke-static/range {v19 .. v19}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3f8ccccd    # 1.1f

    move/from16 v0, v20

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v20

    mul-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;->height:I

    .line 606
    iget v0, v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;->scaledWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;->spanSize:I

    .line 607
    iget v0, v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;->spanSize:I

    move/from16 v19, v0

    sub-int v17, v17, v19

    .line 608
    iget v0, v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;->scaledWidth:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    .line 609
    if-eqz v4, :cond_8

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_8

    const/16 v19, 0x64

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 610
    iget v0, v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;->spanSize:I

    move/from16 v19, v0

    add-int v19, v19, v17

    move/from16 v0, v19

    iput v0, v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;->spanSize:I

    .line 612
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 618
    .end local v10    # "li":Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;
    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;

    .line 619
    .restart local v10    # "li":Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v19

    sub-int v19, v19, v5

    div-int v2, v17, v19

    .line 620
    .local v2, "add":I
    iget v0, v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;->spanSize:I

    move/from16 v19, v0

    add-int v19, v19, v2

    move/from16 v0, v19

    iput v0, v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;->spanSize:I

    .line 621
    sub-int v17, v17, v2

    .line 622
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 645
    .end local v2    # "add":I
    .end local v4    # "forceBreak":Z
    .end local v6    # "img":Lcom/vkcoffee/android/Photo$Image;
    .end local v8    # "it2":Ljava/util/Iterator;
    .end local v10    # "li":Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;
    .end local v12    # "photo":Lcom/vkcoffee/android/Photo;
    .end local v15    # "scaledW":I
    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;

    .line 646
    .restart local v10    # "li":Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;
    const/high16 v19, 0x43340000    # 180.0f

    invoke-static/range {v19 .. v19}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v3

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;->height:I

    .line 647
    iget v0, v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;->scaledWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;->spanSize:I

    .line 648
    iget v0, v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;->spanSize:I

    move/from16 v19, v0

    sub-int v17, v17, v19

    .line 649
    iget v0, v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;->scaledWidth:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    .line 650
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_b

    const/16 v19, 0xa

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    .line 651
    iget v0, v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;->spanSize:I

    move/from16 v19, v0

    add-int v19, v19, v17

    move/from16 v0, v19

    iput v0, v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;->spanSize:I

    .line 653
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public disableRefresh()V
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->setRefreshEnabled(Z)V

    .line 571
    return-void
.end method

.method protected doLoadData(II)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v5, 0x1

    const/16 v1, -0x2328

    .line 452
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    if-nez v0, :cond_1

    .line 453
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "album"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/PhotoAlbum;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    .line 454
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v0, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    if-le v0, v1, :cond_2

    .line 458
    new-instance v0, Lcom/vkcoffee/android/api/photos/PhotosGet;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v2, v2, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/api/photos/PhotosGet;-><init>(IIIIZ)V

    new-instance v1, Lcom/vkcoffee/android/api/SimpleListCallback;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/api/SimpleListCallback;-><init>(Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosGet;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    goto :goto_0

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v0, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    if-ne v0, v1, :cond_3

    .line 460
    iput-boolean v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->dataLoading:Z

    .line 461
    new-instance v0, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotos;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    invoke-direct {v0, v1, p1, p2}, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotos;-><init>(III)V

    new-instance v1, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$6;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$6;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotos;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 466
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 461
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    goto :goto_0

    .line 467
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v0, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    const/16 v1, -0x2329

    if-ne v0, v1, :cond_4

    .line 468
    new-instance v0, Lcom/vkcoffee/android/api/fave/FaveGetPhotos;

    invoke-direct {v0, p1, p2}, Lcom/vkcoffee/android/api/fave/FaveGetPhotos;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$7;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$7;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/fave/FaveGetPhotos;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 473
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 468
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    goto :goto_0

    .line 474
    :cond_4
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v0, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    const/16 v1, -0x232a

    if-ne v0, v1, :cond_0

    .line 475
    new-instance v0, Lcom/vkcoffee/android/api/photos/PhotosGetAll;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    invoke-direct {v0, v1, p1, p2}, Lcom/vkcoffee/android/api/photos/PhotosGetAll;-><init>(III)V

    new-instance v1, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$8;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$8;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosGetAll;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 480
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 475
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    goto/16 :goto_0
.end method

.method protected getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 4

    .prologue
    .line 551
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    if-nez v0, :cond_1

    .line 552
    new-instance v0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    invoke-direct {v0}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    .line 553
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->showAlbumHeader:Z

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    new-instance v1, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$HeaderAdapter;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$HeaderAdapter;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    new-instance v1, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    invoke-direct {v1, p0, v2, v3}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;II)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    return-object v0
.end method

.method protected getItemOffsets(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;IILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "adapter"    # Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    .param p2, "positionInAdapter"    # I
    .param p3, "absPosition"    # I
    .param p4, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v3, 0x40400000    # 3.0f

    .line 666
    instance-of v1, p1, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;

    if-eqz v1, :cond_0

    .line 667
    check-cast p1, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;

    .end local p1    # "adapter":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    invoke-static {p1}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;->access$2(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;)I

    move-result v1

    add-int v0, p2, v1

    .line 668
    .local v0, "pos":I
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 669
    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    iput v1, p4, Landroid/graphics/Rect;->right:I

    .line 670
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/Photo;

    iget v1, v1, Lcom/vkcoffee/android/Photo;->id:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 671
    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    iput v1, p4, Landroid/graphics/Rect;->bottom:I

    .line 677
    .end local v0    # "pos":I
    :cond_0
    :goto_0
    return-void

    .line 672
    .restart local v0    # "pos":I
    :cond_1
    if-lez v0, :cond_0

    .line 673
    const/high16 v1, -0x3fc00000    # -3.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    iput v1, p4, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method public getPhotoBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "index"    # I
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .param p3, "outClip"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 695
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v5}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildCount()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 715
    :cond_0
    :goto_1
    return-void

    .line 696
    :cond_1
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v5, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 697
    .local v4, "v":Landroid/view/View;
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v5, v4}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildViewHolder(Landroid/view/View;)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v0

    .line 698
    .local v0, "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    instance-of v5, v0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;

    if-eqz v5, :cond_3

    .line 699
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->data:Ljava/util/ArrayList;

    check-cast v0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;

    .end local v0    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/Photo;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p1, :cond_3

    .line 700
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 701
    .local v2, "loc":[I
    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 702
    aget v5, v2, v7

    aget v6, v2, v9

    aget v7, v2, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v2, v9

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 703
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v4, v5}, Lme/grishka/appkit/utils/V;->getViewOffset(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v3

    .line 704
    .local v3, "offset":Landroid/graphics/Point;
    iget v5, v3, Landroid/graphics/Point;->y:I

    if-gez v5, :cond_2

    .line 705
    iget v5, v3, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    iput v5, p3, Landroid/graphics/Rect;->top:I

    .line 707
    :cond_2
    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v6}, Lme/grishka/appkit/views/UsableRecyclerView;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 708
    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v6}, Lme/grishka/appkit/views/UsableRecyclerView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 695
    .end local v2    # "loc":[I
    .end local v3    # "offset":Landroid/graphics/Point;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isMoreAvailable()Z
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/Preloader;->isMoreAvailable()Z

    move-result v0

    return v0
.end method

.method public loadMore()V
    .locals 0

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->onScrolledToLastItem()V

    .line 742
    return-void
.end method

.method protected needLineBreakAfter(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 662
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 718
    const/16 v1, 0xf32

    move/from16 v0, p1

    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 720
    const-string v1, "files"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 721
    const-string v1, "files"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 726
    .local v8, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/upload/UploadTask;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 728
    .local v9, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 731
    move-object v3, v10

    .line 732
    .local v3, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/upload/UploadTask;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    new-instance v1, Lcom/vkcoffee/android/upload/BatchUploadTask;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f08056e

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080352

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080353

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v7, v12, v13, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/vkcoffee/android/upload/BatchUploadTask;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    invoke-static {v11, v1}, Lcom/vkcoffee/android/upload/Upload;->start(Landroid/content/Context;Lcom/vkcoffee/android/upload/UploadTask;)V

    .line 734
    .end local v3    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/upload/UploadTask;>;"
    .end local v8    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "it":Ljava/util/Iterator;
    .end local v10    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/upload/UploadTask;>;"
    :cond_0
    return-void

    .line 723
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .restart local v8    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "file"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 729
    .restart local v9    # "it":Ljava/util/Iterator;
    .restart local v10    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/upload/UploadTask;>;"
    :cond_2
    new-instance v1, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v4, v4, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v5, v5, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    const-string v6, ""

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Z)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onAppendItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 562
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/Photo;>;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onAppendItems(Ljava/util/List;)V

    .line 563
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->viewer:Lcom/vkcoffee/android/PhotoViewer;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->viewer:Lcom/vkcoffee/android/PhotoViewer;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/PhotoViewer;->appendPhotos(Ljava/util/List;)V

    .line 566
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->layoutPhotos()V

    .line 567
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 287
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    .line 288
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "album"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/PhotoAlbum;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    .line 289
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "no_album_header"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->showAlbumHeader:Z

    .line 290
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget-object v0, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "__is_tab"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    const v0, 0x7f0c00da

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 293
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->setHasOptionsMenu(Z)V

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "__is_tab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "autoload"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->loadData()V

    .line 298
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "album"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v2, v2, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v2, v2, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ActivityUtils;->setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 299
    return-void

    :cond_3
    move v0, v1

    .line 289
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "s"    # Landroid/os/Bundle;

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 303
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 304
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkcoffee.android.PHOTO_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v1, "com.vkcoffee.android.PHOTO_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string v1, "com.vkcoffee.android.UPDATE_PHOTO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string v1, "com.vkcoffee.android.UPDATE_ALBUM_COVER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 309
    return-void
.end method

.method protected onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .prologue
    .line 434
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 435
    .local v0, "glm":Landroid/support/v7/widget/GridLayoutManager;
    new-instance v1, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$5;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$5;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 448
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "__is_tab"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 491
    const v8, 0x7f110009

    invoke-virtual {p2, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 492
    const v8, 0x7f1000a2

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    new-instance v9, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02011f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const v11, -0x878686

    invoke-direct {v9, v10, v11}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 493
    const v8, 0x7f1000a2

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 494
    .local v2, "findItem":Landroid/view/MenuItem;
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v8, v8, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget-boolean v8, v8, Lcom/vkcoffee/android/api/PhotoAlbum;->canUpload:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v8, v8, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    sget v9, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v8, v9, :cond_3

    :cond_0
    const/4 v7, 0x1

    .line 495
    .local v7, "z":Z
    :goto_0
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 496
    const v8, 0x7f10000e

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v8, v8, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    const/16 v10, -0x2328

    if-le v8, v10, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 498
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v8, v8, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    const/16 v9, -0x2328

    if-le v8, v9, :cond_1

    .line 499
    const/4 v8, 0x0

    const v9, 0x7f10045a

    const/4 v10, 0x0

    const-string v11, "\u041e\u0431\u0440\u0430\u0442\u043d\u0430\u044f \u0441\u043e\u0440\u0442\u0438\u0440\u043e\u0432\u043a\u0430"

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 500
    .local v1, "add2":Landroid/view/MenuItem;
    const/4 v8, 0x2

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 501
    new-instance v8, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02031a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const v10, -0x878686

    invoke-direct {v8, v9, v10}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 505
    .end local v1    # "add2":Landroid/view/MenuItem;
    :cond_1
    const v8, 0x7f1000a2

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 506
    .local v0, "add":Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 507
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v6

    .line 508
    .local v6, "subMenu":Landroid/view/SubMenu;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0012

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-static {v6, v8}, Lcom/vkcoffee/android/ViewUtils;->colorizeSubmenu(Landroid/view/SubMenu;I)V

    .line 509
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-interface {v6}, Landroid/view/SubMenu;->size()I

    move-result v8

    if-lt v3, v8, :cond_5

    .line 519
    .end local v0    # "add":Landroid/view/MenuItem;
    .end local v2    # "findItem":Landroid/view/MenuItem;
    .end local v3    # "i":I
    .end local v6    # "subMenu":Landroid/view/SubMenu;
    .end local v7    # "z":Z
    :cond_2
    return-void

    .line 494
    .restart local v2    # "findItem":Landroid/view/MenuItem;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 496
    .restart local v7    # "z":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 510
    .restart local v0    # "add":Landroid/view/MenuItem;
    .restart local v3    # "i":I
    .restart local v6    # "subMenu":Landroid/view/SubMenu;
    :cond_5
    invoke-interface {v6, v3}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 511
    .local v4, "item":Landroid/view/MenuItem;
    if-eqz v4, :cond_6

    .line 512
    new-instance v5, Landroid/text/SpannableString;

    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 513
    .local v5, "ss":Landroid/text/SpannableString;
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f0012

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 514
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 509
    .end local v5    # "ss":Landroid/text/SpannableString;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public onDataLoaded(Lme/grishka/appkit/api/PaginatedList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/grishka/appkit/api/PaginatedList",
            "<",
            "Lcom/vkcoffee/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p1, "d":Lme/grishka/appkit/api/PaginatedList;, "Lme/grishka/appkit/api/PaginatedList<Lcom/vkcoffee/android/Photo;>;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onDataLoaded(Lme/grishka/appkit/api/PaginatedList;)V

    .line 486
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    invoke-virtual {p1}, Lme/grishka/appkit/api/PaginatedList;->total()I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    .line 487
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 312
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onDestroy()V

    .line 313
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 314
    return-void
.end method

.method public onDismissed()V
    .locals 1

    .prologue
    .line 745
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->viewer:Lcom/vkcoffee/android/PhotoViewer;

    .line 746
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v6, 0xf32

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 522
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v5, 0x7f10045a

    if-ne v2, v5, :cond_1

    .line 523
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "photoRev"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 524
    .local v0, "currentVal":Z
    invoke-static {}, Lcom/vkcoffee/android/PhotoData;->positiveChangeRev()V

    .line 525
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 526
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 527
    const-string v6, "photoRev"

    if-eqz v0, :cond_0

    move v2, v3

    :goto_0
    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 528
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 529
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->refresh()V

    .line 547
    .end local v0    # "currentVal":Z
    :goto_1
    return v4

    .restart local v0    # "currentVal":Z
    :cond_0
    move v2, v4

    .line 527
    goto :goto_0

    .line 532
    .end local v0    # "currentVal":Z
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v5, 0x7f10000e

    if-ne v2, v5, :cond_2

    .line 533
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "clipboard"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://vk.com/album"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v6, v6, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v6, v6, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 534
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v5, 0x7f080290

    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 537
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v5, 0x7f100449

    if-ne v2, v5, :cond_3

    .line 538
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v5, Lcom/vkcoffee/android/ImagePickerActivity;

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 539
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "type"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    invoke-virtual {p0, v1, v6}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 542
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v5, 0x7f100448

    if-ne v2, v5, :cond_4

    .line 543
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v5, Lcom/vkcoffee/android/ImagePickerActivity;

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 544
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "type"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 545
    invoke-virtual {p0, v1, v6}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    move v4, v3

    .line 547
    goto/16 :goto_1
.end method

.method protected onPhotoRemoved()V
    .locals 0

    .prologue
    .line 749
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 317
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 318
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->setDrawSelectorOnTop(Z)V

    .line 319
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/high16 v2, -0x3fc00000    # -3.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 320
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const v2, 0x7f020101

    invoke-virtual {v1, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->setSelector(I)V

    .line 321
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->setScrollBarStyle(I)V

    .line 322
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v2, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$2;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$2;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V

    invoke-virtual {v1, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 328
    new-instance v1, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$3;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$3;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 339
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "__is_tab"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 340
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1001e7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 341
    .local v0, "drawer":Landroid/view/View;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x45bbbbbb

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 343
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 345
    :cond_0
    if-eqz v0, :cond_1

    .line 346
    instance-of v1, v0, Landroid/support/v4/widget/DrawerLayout;

    if-eqz v1, :cond_3

    .line 347
    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .end local v0    # "drawer":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/support/v4/widget/DrawerLayout;->setStatusBarBackgroundColor(I)V

    .line 349
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    const v3, 0x7f020318

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, -0x878686

    invoke-direct {v2, v3, v4}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 355
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "no_album_header"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 356
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 431
    :cond_2
    return-void

    .line 351
    .restart local v0    # "drawer":Landroid/view/View;
    :cond_3
    instance-of v1, v0, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;

    if-eqz v1, :cond_1

    .line 352
    check-cast v0, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;

    .end local v0    # "drawer":Landroid/view/View;
    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->setStatusBarColor(I)V

    goto :goto_0
.end method

.method protected openPhoto(Lcom/vkcoffee/android/Photo;)V
    .locals 5
    .param p1, "photo"    # Lcom/vkcoffee/android/Photo;

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "select"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 682
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "photo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 683
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 684
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 692
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 687
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/PhotoViewer;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->data:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/vkcoffee/android/PhotoViewer;-><init>(Landroid/app/Activity;Ljava/util/List;ILcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;)V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->viewer:Lcom/vkcoffee/android/PhotoViewer;

    .line 688
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->viewer:Lcom/vkcoffee/android/PhotoViewer;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget-object v2, v2, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/PhotoViewer;->setTitle(Ljava/lang/String;)V

    .line 689
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->viewer:Lcom/vkcoffee/android/PhotoViewer;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v2, v2, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/PhotoViewer;->setDisplayTotal(I)V

    .line 690
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->viewer:Lcom/vkcoffee/android/PhotoViewer;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v2, v2, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v3, v3, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/PhotoViewer;->setAlbumIDs(II)V

    .line 691
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->viewer:Lcom/vkcoffee/android/PhotoViewer;

    invoke-virtual {v1}, Lcom/vkcoffee/android/PhotoViewer;->show()V

    goto :goto_0
.end method

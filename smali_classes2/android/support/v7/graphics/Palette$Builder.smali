.class public final Landroid/support/v7/graphics/Palette$Builder;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mGenerator:Landroid/support/v7/graphics/Palette$Generator;

.field private mMaxColors:I

.field private mRegion:Landroid/graphics/Rect;

.field private mResizeMaxDimension:I

.field private final mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mMaxColors:I

    .line 449
    const/16 v0, 0xc0

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    .line 459
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bitmap is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_1
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-static {}, Landroid/support/v7/graphics/Palette;->access$000()Landroid/support/v7/graphics/Palette$Filter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    iput-object p1, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mSwatches:Ljava/util/List;

    .line 465
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mMaxColors:I

    .line 449
    const/16 v0, 0xc0

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    .line 472
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "List of Swatches is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_1
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-static {}, Landroid/support/v7/graphics/Palette;->access$000()Landroid/support/v7/graphics/Palette$Filter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    iput-object p1, p0, Landroid/support/v7/graphics/Palette$Builder;->mSwatches:Ljava/util/List;

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 478
    return-void
.end method

.method private getPixelsFromBitmap(Landroid/graphics/Bitmap;)[I
    .locals 20
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 679
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 680
    .local v5, "bitmapWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 681
    .local v9, "bitmapHeight":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 683
    .local v3, "pixels":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 685
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 702
    .end local v3    # "pixels":[I
    :goto_0
    return-object v3

    .line 690
    .restart local v3    # "pixels":[I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 691
    .local v16, "regionWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v17

    .line 693
    .local v17, "regionHeight":I
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget v14, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget v15, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v10, p1

    move-object v11, v3

    move v13, v5

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 697
    mul-int v2, v16, v17

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 698
    .local v19, "subsetPixels":[I
    const/16 v18, 0x0

    .local v18, "row":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v2, v2, v18

    mul-int/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    mul-int v4, v18, v16

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-static {v3, v2, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 698
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v3, v19

    .line 702
    goto :goto_0
.end method


# virtual methods
.method public addFilter(Landroid/support/v7/graphics/Palette$Filter;)Landroid/support/v7/graphics/Palette$Builder;
    .locals 1
    .param p1, "filter"    # Landroid/support/v7/graphics/Palette$Filter;

    .prologue
    .line 533
    if-eqz p1, :cond_0

    .line 534
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_0
    return-object p0
.end method

.method public clearFilters()Landroid/support/v7/graphics/Palette$Builder;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 523
    return-object p0
.end method

.method public clearRegion()Landroid/support/v7/graphics/Palette$Builder;
    .locals 1

    .prologue
    .line 566
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 567
    return-object p0
.end method

.method public generate(Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .locals 4
    .param p1, "listener"    # Landroid/support/v7/graphics/Palette$PaletteAsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/graphics/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Landroid/support/v7/graphics/Palette;",
            ">;"
        }
    .end annotation

    .prologue
    .line 655
    if-nez p1, :cond_0

    .line 656
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_0
    new-instance v0, Landroid/support/v7/graphics/Palette$Builder$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/graphics/Palette$Builder$1;-><init>(Landroid/support/v7/graphics/Palette$Builder;Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/os/AsyncTaskCompat;->executeParallel(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public generate()Landroid/support/v7/graphics/Palette;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 574
    const/4 v1, 0x0

    .line 580
    .local v1, "logger":Landroid/util/TimingLogger;
    iget-object v7, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_9

    .line 583
    iget v7, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    if-gtz v7, :cond_0

    .line 584
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Minimum dimension size for resizing should should be >= 1"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 589
    :cond_0
    iget-object v7, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    iget v9, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    invoke-static {v7, v9}, Landroid/support/v7/graphics/Palette;->access$100(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 591
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 592
    const-string/jumbo v7, "Processed Bitmap"

    invoke-virtual {v1, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 595
    :cond_1
    iget-object v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 596
    .local v4, "region":Landroid/graphics/Rect;
    iget-object v7, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v7, :cond_2

    if-eqz v4, :cond_2

    .line 599
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v9, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v5, v7, v9

    .line 600
    .local v5, "scale":F
    iget v7, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v7, v10

    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 601
    iget v7, v4, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v7, v10

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 602
    iget v7, v4, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 603
    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 607
    .end local v5    # "scale":F
    :cond_2
    new-instance v3, Landroid/support/v7/graphics/ColorCutQuantizer;

    invoke-direct {p0, v0}, Landroid/support/v7/graphics/Palette$Builder;->getPixelsFromBitmap(Landroid/graphics/Bitmap;)[I

    move-result-object v9

    iget v10, p0, Landroid/support/v7/graphics/Palette$Builder;->mMaxColors:I

    iget-object v7, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v7, v8

    :goto_0
    invoke-direct {v3, v9, v10, v7}, Landroid/support/v7/graphics/ColorCutQuantizer;-><init>([II[Landroid/support/v7/graphics/Palette$Filter;)V

    .line 613
    .local v3, "quantizer":Landroid/support/v7/graphics/ColorCutQuantizer;
    iget-object v7, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v7, :cond_3

    .line 614
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 616
    :cond_3
    invoke-virtual {v3}, Landroid/support/v7/graphics/ColorCutQuantizer;->getQuantizedColors()Ljava/util/List;

    move-result-object v6

    .line 618
    .local v6, "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    if-eqz v1, :cond_4

    .line 619
    const-string/jumbo v7, "Color quantization completed"

    invoke-virtual {v1, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 627
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "quantizer":Landroid/support/v7/graphics/ColorCutQuantizer;
    .end local v4    # "region":Landroid/graphics/Rect;
    :cond_4
    :goto_1
    iget-object v7, p0, Landroid/support/v7/graphics/Palette$Builder;->mGenerator:Landroid/support/v7/graphics/Palette$Generator;

    if-nez v7, :cond_5

    .line 628
    new-instance v7, Landroid/support/v7/graphics/DefaultGenerator;

    invoke-direct {v7}, Landroid/support/v7/graphics/DefaultGenerator;-><init>()V

    iput-object v7, p0, Landroid/support/v7/graphics/Palette$Builder;->mGenerator:Landroid/support/v7/graphics/Palette$Generator;

    .line 632
    :cond_5
    iget-object v7, p0, Landroid/support/v7/graphics/Palette$Builder;->mGenerator:Landroid/support/v7/graphics/Palette$Generator;

    invoke-virtual {v7, v6}, Landroid/support/v7/graphics/Palette$Generator;->generate(Ljava/util/List;)V

    .line 634
    if-eqz v1, :cond_6

    .line 635
    const-string/jumbo v7, "Generator.generate() completed"

    invoke-virtual {v1, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 639
    :cond_6
    new-instance v2, Landroid/support/v7/graphics/Palette;

    iget-object v7, p0, Landroid/support/v7/graphics/Palette$Builder;->mGenerator:Landroid/support/v7/graphics/Palette$Generator;

    invoke-direct {v2, v6, v7, v8}, Landroid/support/v7/graphics/Palette;-><init>(Ljava/util/List;Landroid/support/v7/graphics/Palette$Generator;Landroid/support/v7/graphics/Palette$1;)V

    .line 641
    .local v2, "p":Landroid/support/v7/graphics/Palette;
    if-eqz v1, :cond_7

    .line 642
    const-string/jumbo v7, "Created Palette"

    invoke-virtual {v1, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v1}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 646
    :cond_7
    return-object v2

    .line 607
    .end local v2    # "p":Landroid/support/v7/graphics/Palette;
    .end local v6    # "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "region":Landroid/graphics/Rect;
    :cond_8
    iget-object v7, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    iget-object v11, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Landroid/support/v7/graphics/Palette$Filter;

    invoke-interface {v7, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/support/v7/graphics/Palette$Filter;

    goto :goto_0

    .line 623
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "region":Landroid/graphics/Rect;
    :cond_9
    iget-object v6, p0, Landroid/support/v7/graphics/Palette$Builder;->mSwatches:Ljava/util/List;

    .restart local v6    # "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    goto :goto_1
.end method

.method generator(Landroid/support/v7/graphics/Palette$Generator;)Landroid/support/v7/graphics/Palette$Builder;
    .locals 0
    .param p1, "generator"    # Landroid/support/v7/graphics/Palette$Generator;

    .prologue
    .line 485
    iput-object p1, p0, Landroid/support/v7/graphics/Palette$Builder;->mGenerator:Landroid/support/v7/graphics/Palette$Generator;

    .line 486
    return-object p0
.end method

.method public maximumColorCount(I)Landroid/support/v7/graphics/Palette$Builder;
    .locals 0
    .param p1, "colors"    # I

    .prologue
    .line 498
    iput p1, p0, Landroid/support/v7/graphics/Palette$Builder;->mMaxColors:I

    .line 499
    return-object p0
.end method

.method public resizeBitmapSize(I)Landroid/support/v7/graphics/Palette$Builder;
    .locals 0
    .param p1, "maxDimension"    # I

    .prologue
    .line 513
    iput p1, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 514
    return-object p0
.end method

.method public setRegion(IIII)Landroid/support/v7/graphics/Palette$Builder;
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 549
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 552
    :cond_0
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 554
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The given region must intersect with the Bitmap\'s dimensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_1
    return-object p0
.end method

.class public final Landroid/support/v7/graphics/Palette;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/graphics/Palette$Filter;,
        Landroid/support/v7/graphics/Palette$Generator;,
        Landroid/support/v7/graphics/Palette$Builder;,
        Landroid/support/v7/graphics/Palette$Swatch;,
        Landroid/support/v7/graphics/Palette$PaletteAsyncListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_CALCULATE_NUMBER_COLORS:I = 0x10

.field private static final DEFAULT_FILTER:Landroid/support/v7/graphics/Palette$Filter;

.field private static final DEFAULT_RESIZE_BITMAP_MAX_DIMENSION:I = 0xc0

.field private static final LOG_TAG:Ljava/lang/String; = "Palette"

.field private static final LOG_TIMINGS:Z = false

.field private static final MIN_CONTRAST_BODY_TEXT:F = 4.5f

.field private static final MIN_CONTRAST_TITLE_TEXT:F = 3.0f


# instance fields
.field private final mGenerator:Landroid/support/v7/graphics/Palette$Generator;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 782
    new-instance v0, Landroid/support/v7/graphics/Palette$1;

    invoke-direct {v0}, Landroid/support/v7/graphics/Palette$1;-><init>()V

    sput-object v0, Landroid/support/v7/graphics/Palette;->DEFAULT_FILTER:Landroid/support/v7/graphics/Palette$Filter;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Landroid/support/v7/graphics/Palette$Generator;)V
    .locals 0
    .param p2, "generator"    # Landroid/support/v7/graphics/Palette$Generator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;",
            "Landroid/support/v7/graphics/Palette$Generator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    .line 147
    iput-object p2, p0, Landroid/support/v7/graphics/Palette;->mGenerator:Landroid/support/v7/graphics/Palette$Generator;

    .line 148
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroid/support/v7/graphics/Palette$Generator;Landroid/support/v7/graphics/Palette$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Landroid/support/v7/graphics/Palette$Generator;
    .param p3, "x2"    # Landroid/support/v7/graphics/Palette$1;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/support/v7/graphics/Palette;-><init>(Ljava/util/List;Landroid/support/v7/graphics/Palette$Generator;)V

    return-void
.end method

.method static synthetic access$000()Landroid/support/v7/graphics/Palette$Filter;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Landroid/support/v7/graphics/Palette;->DEFAULT_FILTER:Landroid/support/v7/graphics/Palette$Filter;

    return-object v0
.end method

.method static synthetic access$100(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/Bitmap;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-static {p0, p1}, Landroid/support/v7/graphics/Palette;->scaleBitmapDown(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 96
    new-instance v0, Landroid/support/v7/graphics/Palette$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static from(Ljava/util/List;)Landroid/support/v7/graphics/Palette;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;)",
            "Landroid/support/v7/graphics/Palette;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    new-instance v0, Landroid/support/v7/graphics/Palette$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/graphics/Palette$Builder;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 113
    invoke-static {p0}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Landroid/graphics/Bitmap;I)Landroid/support/v7/graphics/Palette;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "numColors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    invoke-static {p0}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/graphics/Palette$Builder;->maximumColorCount(I)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v0

    return-object v0
.end method

.method public static generateAsync(Landroid/graphics/Bitmap;ILandroid/support/v7/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "numColors"    # I
    .param p2, "listener"    # Landroid/support/v7/graphics/Palette$PaletteAsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "I",
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    invoke-static {p0}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/graphics/Palette$Builder;->maximumColorCount(I)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/graphics/Palette$Builder;->generate(Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static generateAsync(Landroid/graphics/Bitmap;Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "listener"    # Landroid/support/v7/graphics/Palette$PaletteAsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    invoke-static {p0}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/graphics/Palette$Builder;->generate(Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private static scaleBitmapDown(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "targetMaxDimension"    # I

    .prologue
    .line 276
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 278
    .local v0, "maxDimension":I
    if-gt v0, p1, :cond_0

    .line 284
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 283
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    int-to-double v4, p1

    int-to-double v6, v0

    div-double v2, v4, v6

    .line 284
    .local v2, "scaleRatio":D
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {p0, v1, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public getDarkMutedColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/support/v7/graphics/Palette;->getDarkMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    .line 268
    .local v0, "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method

.method public getDarkMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/v7/graphics/Palette;->mGenerator:Landroid/support/v7/graphics/Palette$Generator;

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Generator;->getDarkMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getDarkVibrantColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/support/v7/graphics/Palette;->getDarkVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    .line 235
    .local v0, "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method

.method public getDarkVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Landroid/support/v7/graphics/Palette;->mGenerator:Landroid/support/v7/graphics/Palette$Generator;

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Generator;->getDarkVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getLightMutedColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/support/v7/graphics/Palette;->getLightMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    .line 257
    .local v0, "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method

.method public getLightMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Landroid/support/v7/graphics/Palette;->mGenerator:Landroid/support/v7/graphics/Palette$Generator;

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Generator;->getLightMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getLightVibrantColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/support/v7/graphics/Palette;->getLightVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    .line 224
    .local v0, "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method

.method public getLightVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Landroid/support/v7/graphics/Palette;->mGenerator:Landroid/support/v7/graphics/Palette$Generator;

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Generator;->getLightVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getMutedColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0}, Landroid/support/v7/graphics/Palette;->getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    .line 246
    .local v0, "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method

.method public getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v7/graphics/Palette;->mGenerator:Landroid/support/v7/graphics/Palette$Generator;

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Generator;->getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getSwatches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVibrantColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    .line 213
    .local v0, "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method

.method public getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Landroid/support/v7/graphics/Palette;->mGenerator:Landroid/support/v7/graphics/Palette$Generator;

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Generator;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

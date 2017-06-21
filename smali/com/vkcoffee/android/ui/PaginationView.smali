.class public Lcom/vkcoffee/android/ui/PaginationView;
.super Landroid/view/View;
.source "PaginationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/PaginationView$Listener;
    }
.end annotation


# static fields
.field static final DP_10:I

.field static final DP_2:I

.field static final DP_3:I

.field static final DP_32:I

.field static final DP_4:I

.field static final DP_4_24_4:I

.field static final DP_8:I


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private currentPage:I

.field private innerWidth:I

.field private leftArrow:Landroid/graphics/drawable/Drawable;

.field private listener:Lcom/vkcoffee/android/ui/PaginationView$Listener;

.field private numPages:I

.field private pageMap:[I

.field private rightArrow:Landroid/graphics/drawable/Drawable;

.field private selectColor:I

.field private textSecondPaint:Landroid/graphics/Paint;

.field private textSelectPaint:Landroid/graphics/Paint;

.field private widths:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/PaginationView;->DP_2:I

    .line 19
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/PaginationView;->DP_3:I

    .line 20
    sget v0, Lcom/vkcoffee/android/ui/PaginationView;->DP_2:I

    shl-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vkcoffee/android/ui/PaginationView;->DP_4:I

    .line 21
    sget v0, Lcom/vkcoffee/android/ui/PaginationView;->DP_4:I

    shl-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vkcoffee/android/ui/PaginationView;->DP_8:I

    .line 22
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/PaginationView;->DP_10:I

    .line 23
    sget v0, Lcom/vkcoffee/android/ui/PaginationView;->DP_8:I

    shl-int/lit8 v0, v0, 0x2

    sput v0, Lcom/vkcoffee/android/ui/PaginationView;->DP_32:I

    .line 24
    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/PaginationView;->DP_4_24_4:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x6

    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    const/16 v0, 0x14

    iput v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->numPages:I

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    .line 32
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->widths:[I

    .line 34
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->pageMap:[I

    .line 42
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/PaginationView;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x6

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/16 v0, 0x14

    iput v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->numPages:I

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    .line 32
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->widths:[I

    .line 34
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->pageMap:[I

    .line 47
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/PaginationView;->init()V

    .line 48
    return-void
.end method

.method static drawNumber(Landroid/graphics/Canvas;Ljava/lang/String;IIIILandroid/graphics/Paint;III)V
    .locals 9
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "paint"    # Landroid/graphics/Paint;
    .param p7, "lineSize"    # I
    .param p8, "lineColor"    # I
    .param p9, "lineY"    # I

    .prologue
    .line 200
    invoke-virtual {p6, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 201
    .local v8, "w":F
    invoke-virtual {p6}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    .line 202
    .local v7, "color":I
    int-to-float v1, p2

    int-to-float v2, p4

    sub-float/2addr v2, v8

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    int-to-float v2, p3

    invoke-virtual {p6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    add-float/2addr v2, v3

    int-to-float v3, p5

    invoke-virtual {p6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p0, p1, v1, v2, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 203
    move/from16 v0, p8

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    int-to-float v2, p2

    move/from16 v0, p9

    int-to-float v3, v0

    add-int v1, p2, p4

    int-to-float v4, v1

    add-int v1, p9, p7

    int-to-float v5, v1

    move-object v1, p0

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 205
    invoke-virtual {p6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    return-void
.end method

.method static getNumberSize(I)I
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 195
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sget v1, Lcom/vkcoffee/android/ui/PaginationView;->DP_8:I

    mul-int/2addr v0, v1

    sget v1, Lcom/vkcoffee/android/ui/PaginationView;->DP_32:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaginationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->selectColor:I

    .line 52
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaginationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->background:Landroid/graphics/drawable/Drawable;

    .line 53
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaginationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->leftArrow:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaginationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02014f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->rightArrow:Landroid/graphics/drawable/Drawable;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->textSelectPaint:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->textSelectPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->textSelectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->textSelectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/vkcoffee/android/ui/PaginationView;->selectColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/PaginationView;->textSelectPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->textSecondPaint:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->textSecondPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaginationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    return v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->numPages:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 107
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->widths:[I

    array-length v0, v0

    if-ge v10, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->widths:[I

    const/4 v1, 0x0

    aput v1, v0, v10

    .line 109
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->pageMap:[I

    const/4 v1, -0x1

    aput v1, v0, v10

    .line 107
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 111
    :cond_0
    const/4 v10, 0x0

    .line 113
    const/4 v12, 0x0

    .line 115
    .local v12, "numberAdd":I
    sget v0, Lcom/vkcoffee/android/ui/PaginationView;->DP_3:I

    iput v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->innerWidth:I

    .line 116
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_5

    .line 117
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->innerWidth:I

    iget-object v1, p0, Lcom/vkcoffee/android/ui/PaginationView;->widths:[I

    sget v3, Lcom/vkcoffee/android/ui/PaginationView;->DP_4_24_4:I

    aput v3, v1, v10

    add-int/2addr v0, v3

    iput v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->innerWidth:I

    .line 118
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->pageMap:[I

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .local v11, "i":I
    const/4 v1, 0x1

    aput v1, v0, v10

    move v10, v11

    .line 123
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :goto_1
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 124
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->innerWidth:I

    iget v1, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/vkcoffee/android/ui/PaginationView;->getNumberSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->innerWidth:I

    .line 125
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->widths:[I

    iget v1, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/vkcoffee/android/ui/PaginationView;->getNumberSize(I)I

    move-result v1

    add-int/2addr v1, v12

    aput v1, v0, v10

    .line 126
    const/4 v12, 0x0

    .line 127
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->pageMap:[I

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .restart local v11    # "i":I
    iget v1, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v10

    move v10, v11

    .line 130
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_1
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->innerWidth:I

    iget v1, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    invoke-static {v1}, Lcom/vkcoffee/android/ui/PaginationView;->getNumberSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->innerWidth:I

    .line 131
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->widths:[I

    iget v1, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    invoke-static {v1}, Lcom/vkcoffee/android/ui/PaginationView;->getNumberSize(I)I

    move-result v1

    add-int/2addr v1, v12

    aput v1, v0, v10

    .line 132
    const/4 v12, 0x0

    .line 133
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->pageMap:[I

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .restart local v11    # "i":I
    const/4 v1, -0x1

    aput v1, v0, v10

    .line 135
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    iget v1, p0, Lcom/vkcoffee/android/ui/PaginationView;->numPages:I

    if-ge v0, v1, :cond_8

    .line 136
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->innerWidth:I

    iget v1, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/vkcoffee/android/ui/PaginationView;->getNumberSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->innerWidth:I

    .line 137
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->widths:[I

    iget v1, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/vkcoffee/android/ui/PaginationView;->getNumberSize(I)I

    move-result v1

    add-int/2addr v1, v12

    aput v1, v0, v11

    .line 138
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->pageMap:[I

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "i":I
    .restart local v10    # "i":I
    iget v1, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v11

    .line 141
    :goto_2
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    iget v1, p0, Lcom/vkcoffee/android/ui/PaginationView;->numPages:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_6

    .line 142
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->innerWidth:I

    iget-object v1, p0, Lcom/vkcoffee/android/ui/PaginationView;->widths:[I

    sget v3, Lcom/vkcoffee/android/ui/PaginationView;->DP_4_24_4:I

    aput v3, v1, v10

    add-int/2addr v0, v3

    iput v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->innerWidth:I

    .line 143
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->pageMap:[I

    iget v1, p0, Lcom/vkcoffee/android/ui/PaginationView;->numPages:I

    aput v1, v0, v10

    .line 148
    :goto_3
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->innerWidth:I

    sget v1, Lcom/vkcoffee/android/ui/PaginationView;->DP_3:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->innerWidth:I

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 151
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaginationView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/ui/PaginationView;->innerWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->background:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/vkcoffee/android/ui/PaginationView;->innerWidth:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaginationView;->getHeight()I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 156
    sget v2, Lcom/vkcoffee/android/ui/PaginationView;->DP_3:I

    .line 157
    .local v2, "currentX":I
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_7

    .line 158
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaginationView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/PaginationView;->leftArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v13, v0, 0x2

    .line 159
    .local v13, "top":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->leftArrow:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/vkcoffee/android/ui/PaginationView;->DP_4:I

    add-int/2addr v1, v2

    sget v3, Lcom/vkcoffee/android/ui/PaginationView;->DP_4:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/vkcoffee/android/ui/PaginationView;->leftArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/vkcoffee/android/ui/PaginationView;->leftArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v13

    invoke-virtual {v0, v1, v13, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 160
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->leftArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    sget v0, Lcom/vkcoffee/android/ui/PaginationView;->DP_4_24_4:I

    add-int/2addr v2, v0

    .line 167
    .end local v13    # "top":I
    :goto_4
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 168
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/vkcoffee/android/ui/PaginationView;->DP_2:I

    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PaginationView;->getNumberSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaginationView;->getHeight()I

    move-result v0

    sget v5, Lcom/vkcoffee/android/ui/PaginationView;->DP_8:I

    sub-int v5, v0, v5

    iget-object v6, p0, Lcom/vkcoffee/android/ui/PaginationView;->textSecondPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    const/high16 v8, 0x26000000

    .line 169
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaginationView;->getHeight()I

    move-result v0

    sget v9, Lcom/vkcoffee/android/ui/PaginationView;->DP_10:I

    sub-int/2addr v0, v9

    sget v9, Lcom/vkcoffee/android/ui/PaginationView;->DP_4:I

    sub-int v9, v0, v9

    move-object v0, p1

    .line 168
    invoke-static/range {v0 .. v9}, Lcom/vkcoffee/android/ui/PaginationView;->drawNumber(Landroid/graphics/Canvas;Ljava/lang/String;IIIILandroid/graphics/Paint;III)V

    .line 170
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PaginationView;->getNumberSize(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 174
    :cond_2
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/vkcoffee/android/ui/PaginationView;->DP_2:I

    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PaginationView;->getNumberSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaginationView;->getHeight()I

    move-result v0

    sget v5, Lcom/vkcoffee/android/ui/PaginationView;->DP_8:I

    sub-int v5, v0, v5

    iget-object v6, p0, Lcom/vkcoffee/android/ui/PaginationView;->textSelectPaint:Landroid/graphics/Paint;

    sget v7, Lcom/vkcoffee/android/ui/PaginationView;->DP_2:I

    iget v8, p0, Lcom/vkcoffee/android/ui/PaginationView;->selectColor:I

    .line 175
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaginationView;->getHeight()I

    move-result v0

    sget v9, Lcom/vkcoffee/android/ui/PaginationView;->DP_10:I

    sub-int/2addr v0, v9

    sget v9, Lcom/vkcoffee/android/ui/PaginationView;->DP_4:I

    sub-int v9, v0, v9

    move-object v0, p1

    .line 174
    invoke-static/range {v0 .. v9}, Lcom/vkcoffee/android/ui/PaginationView;->drawNumber(Landroid/graphics/Canvas;Ljava/lang/String;IIIILandroid/graphics/Paint;III)V

    .line 176
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PaginationView;->getNumberSize(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 179
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    iget v1, p0, Lcom/vkcoffee/android/ui/PaginationView;->numPages:I

    if-ge v0, v1, :cond_3

    .line 180
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/vkcoffee/android/ui/PaginationView;->DP_2:I

    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PaginationView;->getNumberSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaginationView;->getHeight()I

    move-result v0

    sget v5, Lcom/vkcoffee/android/ui/PaginationView;->DP_8:I

    sub-int v5, v0, v5

    iget-object v6, p0, Lcom/vkcoffee/android/ui/PaginationView;->textSecondPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    const/high16 v8, 0x26000000

    .line 181
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaginationView;->getHeight()I

    move-result v0

    sget v9, Lcom/vkcoffee/android/ui/PaginationView;->DP_10:I

    sub-int/2addr v0, v9

    sget v9, Lcom/vkcoffee/android/ui/PaginationView;->DP_4:I

    sub-int v9, v0, v9

    move-object v0, p1

    .line 180
    invoke-static/range {v0 .. v9}, Lcom/vkcoffee/android/ui/PaginationView;->drawNumber(Landroid/graphics/Canvas;Ljava/lang/String;IIIILandroid/graphics/Paint;III)V

    .line 182
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PaginationView;->getNumberSize(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 185
    :cond_3
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    iget v1, p0, Lcom/vkcoffee/android/ui/PaginationView;->numPages:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    .line 186
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaginationView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/PaginationView;->rightArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v13, v0, 0x2

    .line 187
    .restart local v13    # "top":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->rightArrow:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/vkcoffee/android/ui/PaginationView;->DP_4:I

    add-int/2addr v1, v2

    sget v3, Lcom/vkcoffee/android/ui/PaginationView;->DP_4:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/vkcoffee/android/ui/PaginationView;->rightArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/vkcoffee/android/ui/PaginationView;->rightArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v13

    invoke-virtual {v0, v1, v13, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 188
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->rightArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 191
    .end local v13    # "top":I
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 192
    return-void

    .line 120
    .end local v2    # "currentX":I
    :cond_5
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->innerWidth:I

    sget v12, Lcom/vkcoffee/android/ui/PaginationView;->DP_8:I

    add-int/2addr v0, v12

    iput v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->innerWidth:I

    goto/16 :goto_1

    .line 145
    :cond_6
    iget v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->innerWidth:I

    sget v1, Lcom/vkcoffee/android/ui/PaginationView;->DP_8:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->innerWidth:I

    .line 146
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaginationView;->widths:[I

    add-int/lit8 v1, v10, -0x1

    aget v3, v0, v1

    sget v4, Lcom/vkcoffee/android/ui/PaginationView;->DP_8:I

    add-int/2addr v3, v4

    aput v3, v0, v1

    goto/16 :goto_3

    .line 163
    .restart local v2    # "currentX":I
    :cond_7
    sget v0, Lcom/vkcoffee/android/ui/PaginationView;->DP_8:I

    add-int/2addr v2, v0

    goto/16 :goto_4

    .end local v2    # "currentX":I
    .end local v10    # "i":I
    .restart local v11    # "i":I
    :cond_8
    move v10, v11

    .end local v11    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 80
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaginationView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaginationView;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 103
    :cond_1
    :goto_0
    return v3

    .line 84
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaginationView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/vkcoffee/android/ui/PaginationView;->innerWidth:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v2, v5

    .line 86
    .local v2, "x":I
    if-ltz v2, :cond_3

    iget v5, p0, Lcom/vkcoffee/android/ui/PaginationView;->innerWidth:I

    if-le v2, v5, :cond_4

    :cond_3
    move v3, v4

    .line 87
    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v3, :cond_1

    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "w":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/vkcoffee/android/ui/PaginationView;->widths:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 93
    if-lt v2, v1, :cond_6

    iget-object v4, p0, Lcom/vkcoffee/android/ui/PaginationView;->widths:[I

    aget v4, v4, v0

    add-int/2addr v4, v1

    if-gt v2, v4, :cond_6

    .line 94
    iget-object v4, p0, Lcom/vkcoffee/android/ui/PaginationView;->listener:Lcom/vkcoffee/android/ui/PaginationView$Listener;

    if-eqz v4, :cond_5

    .line 95
    iget-object v4, p0, Lcom/vkcoffee/android/ui/PaginationView;->listener:Lcom/vkcoffee/android/ui/PaginationView$Listener;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/PaginationView;->pageMap:[I

    aget v5, v5, v0

    invoke-interface {v4, v5}, Lcom/vkcoffee/android/ui/PaginationView$Listener;->onPageSelected(I)V

    .line 97
    :cond_5
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaginationView;->invalidate()V

    goto :goto_0

    .line 100
    :cond_6
    iget-object v4, p0, Lcom/vkcoffee/android/ui/PaginationView;->widths:[I

    aget v4, v4, v0

    add-int/2addr v1, v4

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setCurrentPage(I)V
    .locals 0
    .param p1, "p"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/vkcoffee/android/ui/PaginationView;->currentPage:I

    .line 72
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaginationView;->invalidate()V

    .line 73
    return-void
.end method

.method public setListener(Lcom/vkcoffee/android/ui/PaginationView$Listener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkcoffee/android/ui/PaginationView$Listener;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/vkcoffee/android/ui/PaginationView;->listener:Lcom/vkcoffee/android/ui/PaginationView$Listener;

    .line 210
    return-void
.end method

.method public setPageCount(I)V
    .locals 0
    .param p1, "c"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/vkcoffee/android/ui/PaginationView;->numPages:I

    .line 67
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaginationView;->invalidate()V

    .line 68
    return-void
.end method

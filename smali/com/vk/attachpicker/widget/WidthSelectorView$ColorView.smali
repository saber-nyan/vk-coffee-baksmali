.class Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;
.super Landroid/view/View;
.source "WidthSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/widget/WidthSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorView"
.end annotation


# static fields
.field private static final borderPadding:I

.field private static final borderPaint:Landroid/graphics/Paint;

.field private static final borderWidth:I

.field private static final grayBorder:Landroid/graphics/Paint;


# instance fields
.field private final color:I

.field private final coloredPaint:Landroid/graphics/Paint;

.field private isChecked:Z

.field private final width:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 104
    invoke-static {v1}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->borderPadding:I

    .line 105
    invoke-static {v1}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->borderWidth:I

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->borderPaint:Landroid/graphics/Paint;

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->grayBorder:Landroid/graphics/Paint;

    .line 111
    sget-object v0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->grayBorder:Landroid/graphics/Paint;

    const v1, -0x3b3734

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    sget-object v0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->grayBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    sget-object v0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->grayBorder:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    sget-object v0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->borderPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0070

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    sget-object v0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    sget-object v0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->borderPaint:Landroid/graphics/Paint;

    sget v1, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->borderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "width"    # F

    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->coloredPaint:Landroid/graphics/Paint;

    .line 129
    iput p2, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->color:I

    .line 130
    iput p3, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->width:F

    .line 131
    iget-object v0, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->coloredPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object v0, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->coloredPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->isChecked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 140
    .local v0, "cx":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 142
    .local v1, "cy":I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-static {}, Lcom/vk/attachpicker/widget/WidthSelectorView;->access$000()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->width:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->coloredPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 144
    iget v2, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->color:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->isChecked:Z

    if-nez v2, :cond_0

    .line 145
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-static {}, Lcom/vk/attachpicker/widget/WidthSelectorView;->access$000()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->width:F

    mul-float/2addr v4, v5

    sget-object v5, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->grayBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 148
    :cond_0
    iget-boolean v2, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->isChecked:Z

    if-eqz v2, :cond_1

    .line 149
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-static {}, Lcom/vk/attachpicker/widget/WidthSelectorView;->access$000()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->width:F

    mul-float/2addr v4, v5

    sget v5, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->borderPadding:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->borderWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget-object v5, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 151
    :cond_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->isChecked:Z

    .line 159
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->invalidate()V

    .line 160
    return-void
.end method

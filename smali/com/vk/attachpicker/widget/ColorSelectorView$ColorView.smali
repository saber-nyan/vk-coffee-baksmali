.class Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;
.super Landroid/view/View;
.source "ColorSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/widget/ColorSelectorView;
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

.field private static final radius:I


# instance fields
.field private final color:I

.field private final coloredPaint:Landroid/graphics/Paint;

.field private isChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 102
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->radius:I

    .line 103
    invoke-static {v1}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->borderPadding:I

    .line 104
    invoke-static {v1}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->borderWidth:I

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->borderPaint:Landroid/graphics/Paint;

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->grayBorder:Landroid/graphics/Paint;

    .line 110
    sget-object v0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->grayBorder:Landroid/graphics/Paint;

    const v1, -0x3b3734

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    sget-object v0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->grayBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    sget-object v0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->grayBorder:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 114
    sget-object v0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->borderPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0070

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    sget-object v0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    sget-object v0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->borderPaint:Landroid/graphics/Paint;

    sget v1, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->borderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->coloredPaint:Landroid/graphics/Paint;

    .line 127
    iput p2, p0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->color:I

    .line 128
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->coloredPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->coloredPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->isChecked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 137
    .local v0, "cx":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 139
    .local v1, "cy":I
    int-to-float v2, v0

    int-to-float v3, v1

    sget v4, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->radius:I

    sget v5, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->borderWidth:I

    sub-int/2addr v4, v5

    sget v5, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->borderPadding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->coloredPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 141
    iget v2, p0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->color:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->isChecked:Z

    if-nez v2, :cond_0

    .line 142
    int-to-float v2, v0

    int-to-float v3, v1

    sget v4, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->radius:I

    sget v5, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->borderWidth:I

    sub-int/2addr v4, v5

    sget v5, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->borderPadding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget-object v5, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->grayBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 145
    :cond_0
    iget-boolean v2, p0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->isChecked:Z

    if-eqz v2, :cond_1

    .line 146
    int-to-float v2, v0

    int-to-float v3, v1

    sget v4, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->radius:I

    sget v5, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->borderWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget-object v5, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 148
    :cond_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->isChecked:Z

    .line 156
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->invalidate()V

    .line 157
    return-void
.end method

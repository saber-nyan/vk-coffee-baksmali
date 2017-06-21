.class public Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
.super Ljava/lang/Object;
.source "ColorPickerDialogBuilder.java"


# instance fields
.field private builder:Landroid/app/AlertDialog$Builder;

.field private colorPickerView:Lcom/flask/colorpicker/ColorPickerView;

.field private colorPreview:Landroid/widget/LinearLayout;

.field private defaultMargin:I

.field private initialColor:[Ljava/lang/Integer;

.field private isAlphaSliderEnabled:Z

.field private isColorEditEnabled:Z

.field private isLightnessSliderEnabled:Z

.field private isPreviewEnabled:Z

.field private pickerContainer:Landroid/widget/LinearLayout;

.field private pickerCount:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v3, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isLightnessSliderEnabled:Z

    .line 22
    iput-boolean v3, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isAlphaSliderEnabled:Z

    .line 23
    iput-boolean v4, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isColorEditEnabled:Z

    .line 24
    iput-boolean v4, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isPreviewEnabled:Z

    .line 25
    iput v3, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerCount:I

    .line 26
    iput v4, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->defaultMargin:I

    .line 27
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Integer;

    aput-object v5, v1, v4

    aput-object v5, v1, v3

    const/4 v2, 0x2

    aput-object v5, v1, v2

    const/4 v2, 0x3

    aput-object v5, v1, v2

    const/4 v2, 0x4

    aput-object v5, v1, v2

    iput-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    .line 30
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/app/AlertDialog$Builder;

    .line 31
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerContainer:Landroid/widget/LinearLayout;

    .line 32
    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 33
    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 35
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 36
    .local v0, "layoutParamsForColorPickerView":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 37
    new-instance v1, Lcom/flask/colorpicker/ColorPickerView;

    invoke-direct {v1, p1}, Lcom/flask/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/flask/colorpicker/ColorPickerView;

    .line 39
    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/flask/colorpicker/ColorPickerView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;)Lcom/flask/colorpicker/ColorPickerView;
    .locals 1
    .param p0, "x0"    # Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/flask/colorpicker/ColorPickerView;

    return-object v0
.end method

.method private static getDimensionAsPx(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # I

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getStartColor([Ljava/lang/Integer;)I
    .locals 2
    .param p1, "colors"    # [Ljava/lang/Integer;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->getStartOffset([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 172
    .local v0, "startColor":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private getStartOffset([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .param p1, "colors"    # [Ljava/lang/Integer;

    .prologue
    .line 160
    const/4 v1, 0x0

    .line 161
    .local v1, "start":Ljava/lang/Integer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 162
    aget-object v2, p1, v0

    if-nez v2, :cond_1

    .line 167
    :cond_0
    return-object v1

    .line 165
    :cond_1
    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static with(Landroid/content/Context;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    new-instance v0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    invoke-direct {v0, p0}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public alphaSliderOnly()Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isLightnessSliderEnabled:Z

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isAlphaSliderEnabled:Z

    .line 108
    return-object p0
.end method

.method public build()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 152
    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 153
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/flask/colorpicker/ColorPickerView;

    iget-object v2, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    iget-object v3, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->getStartOffset([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/flask/colorpicker/ColorPickerView;->setInitialColors([Ljava/lang/Integer;I)V

    .line 156
    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public density(I)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1
    .param p1, "density"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/flask/colorpicker/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/flask/colorpicker/ColorPickerView;->setDensity(I)V

    .line 74
    return-object p0
.end method

.method public initialColor(I)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 3
    .param p1, "initialColor"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 55
    return-object p0
.end method

.method public initialColors([I)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 3
    .param p1, "initialColor"    # [I

    .prologue
    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-object p0
.end method

.method public lightnessSliderOnly()Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isLightnessSliderEnabled:Z

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isAlphaSliderEnabled:Z

    .line 114
    return-object p0
.end method

.method public noSliders()Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isLightnessSliderEnabled:Z

    .line 101
    iput-boolean v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isAlphaSliderEnabled:Z

    .line 102
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    return-object p0
.end method

.method public setOnColorSelectedListener(Lcom/flask/colorpicker/OnColorSelectedListener;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1
    .param p1, "onColorSelectedListener"    # Lcom/flask/colorpicker/OnColorSelectedListener;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/flask/colorpicker/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/flask/colorpicker/ColorPickerView;->addOnColorSelectedListener(Lcom/flask/colorpicker/OnColorSelectedListener;)V

    .line 79
    return-object p0
.end method

.method public setPickerCount(I)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 2
    .param p1, "pickerCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 141
    if-lt p1, v1, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Picker Can Only Support 1-5 Colors"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    iput p1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerCount:I

    .line 145
    iget v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerCount:I

    if-le v0, v1, :cond_2

    .line 146
    iput-boolean v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isPreviewEnabled:Z

    .line 148
    :cond_2
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Lcom/flask/colorpicker/builder/ColorPickerClickListener;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Lcom/flask/colorpicker/builder/ColorPickerClickListener;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder$1;

    invoke-direct {v1, p0, p2}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder$1;-><init>(Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;Lcom/flask/colorpicker/builder/ColorPickerClickListener;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 50
    return-object p0
.end method

.method public showAlphaSlider(Z)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 0
    .param p1, "showAlpha"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isAlphaSliderEnabled:Z

    .line 119
    return-object p0
.end method

.method public showColorEdit(Z)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 0
    .param p1, "showEdit"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isColorEditEnabled:Z

    .line 129
    return-object p0
.end method

.method public showColorPreview(Z)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1
    .param p1, "showPreview"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isPreviewEnabled:Z

    .line 134
    if-nez p1, :cond_0

    .line 135
    const/4 v0, 0x1

    iput v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerCount:I

    .line 137
    :cond_0
    return-object p0
.end method

.method public showLightnessSlider(Z)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 0
    .param p1, "showLightness"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isLightnessSliderEnabled:Z

    .line 124
    return-object p0
.end method

.method public wheelType(Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 2
    .param p1, "wheelType"    # Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    .prologue
    .line 67
    invoke-static {p1}, Lcom/flask/colorpicker/builder/ColorWheelRendererBuilder;->getRenderer(Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;)Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

    move-result-object v0

    .line 68
    .local v0, "renderer":Lcom/flask/colorpicker/renderer/ColorWheelRenderer;
    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/flask/colorpicker/ColorPickerView;

    invoke-virtual {v1, v0}, Lcom/flask/colorpicker/ColorPickerView;->setRenderer(Lcom/flask/colorpicker/renderer/ColorWheelRenderer;)V

    .line 69
    return-object p0
.end method

.class public Lcom/vk/attachpicker/widget/ColorSelectorView;
.super Landroid/widget/LinearLayout;
.source "ColorSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/widget/ColorSelectorView$OnColorSelectedListener;,
        Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;
    }
.end annotation


# static fields
.field private static final viewSize:I


# instance fields
.field private onColorSelectedListener:Lcom/vk/attachpicker/widget/ColorSelectorView$OnColorSelectedListener;

.field private selectedColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/widget/ColorSelectorView;->viewSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    sget-object v0, Lcom/vk/attachpicker/drawing/DrawingColors;->COLORS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/vk/attachpicker/widget/ColorSelectorView;->selectedColor:I

    .line 27
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/ColorSelectorView;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    sget-object v0, Lcom/vk/attachpicker/drawing/DrawingColors;->COLORS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/vk/attachpicker/widget/ColorSelectorView;->selectedColor:I

    .line 32
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/ColorSelectorView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    sget-object v0, Lcom/vk/attachpicker/drawing/DrawingColors;->COLORS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/vk/attachpicker/widget/ColorSelectorView;->selectedColor:I

    .line 37
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/ColorSelectorView;->init()V

    .line 38
    return-void
.end method

.method private addColorView(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 72
    new-instance v0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ColorSelectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;-><init>(Landroid/content/Context;I)V

    .line 73
    .local v0, "colorView":Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;
    sget-object v2, Lcom/vk/attachpicker/drawing/DrawingColors;->COLORS:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne p1, v2, :cond_0

    .line 74
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->setChecked(Z)V

    .line 76
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/vk/attachpicker/widget/ColorSelectorView;->viewSize:I

    sget v3, Lcom/vk/attachpicker/widget/ColorSelectorView;->viewSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/vk/attachpicker/widget/ColorSelectorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-static {p0, p1, v0}, Lcom/vk/attachpicker/widget/ColorSelectorView$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/widget/ColorSelectorView;ILcom/vk/attachpicker/widget/ColorSelectorView$ColorView;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-virtual {p0, v3}, Lcom/vk/attachpicker/widget/ColorSelectorView;->setOrientation(I)V

    .line 42
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v2

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/vk/attachpicker/widget/ColorSelectorView;->setPadding(IIII)V

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/vk/attachpicker/drawing/DrawingColors;->COLORS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 45
    sget-object v1, Lcom/vk/attachpicker/drawing/DrawingColors;->COLORS:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/vk/attachpicker/widget/ColorSelectorView;->addColorView(I)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public getOnColorSelectedListener()Lcom/vk/attachpicker/widget/ColorSelectorView$OnColorSelectedListener;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ColorSelectorView;->onColorSelectedListener:Lcom/vk/attachpicker/widget/ColorSelectorView$OnColorSelectedListener;

    return-object v0
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/vk/attachpicker/widget/ColorSelectorView;->selectedColor:I

    return v0
.end method

.method synthetic lambda$addColorView$71(ILcom/vk/attachpicker/widget/ColorSelectorView$ColorView;Landroid/view/View;)V
    .locals 3
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iput p1, p0, Lcom/vk/attachpicker/widget/ColorSelectorView;->selectedColor:I

    .line 82
    iget-object v2, p0, Lcom/vk/attachpicker/widget/ColorSelectorView;->onColorSelectedListener:Lcom/vk/attachpicker/widget/ColorSelectorView$OnColorSelectedListener;

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/vk/attachpicker/widget/ColorSelectorView;->onColorSelectedListener:Lcom/vk/attachpicker/widget/ColorSelectorView$OnColorSelectedListener;

    invoke-interface {v2, p1}, Lcom/vk/attachpicker/widget/ColorSelectorView$OnColorSelectedListener;->onColorSelected(I)V

    .line 85
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ColorSelectorView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 86
    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/widget/ColorSelectorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;

    .line 87
    .local v0, "cv":Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;
    if-ne v0, p2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->setChecked(Z)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 89
    .end local v0    # "cv":Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;
    :cond_2
    return-void
.end method

.method public setOnColorSelectedListener(Lcom/vk/attachpicker/widget/ColorSelectorView$OnColorSelectedListener;)V
    .locals 0
    .param p1, "onColorSelectedListener"    # Lcom/vk/attachpicker/widget/ColorSelectorView$OnColorSelectedListener;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/vk/attachpicker/widget/ColorSelectorView;->onColorSelectedListener:Lcom/vk/attachpicker/widget/ColorSelectorView$OnColorSelectedListener;

    .line 98
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/vk/attachpicker/widget/ColorSelectorView;->selectedColor:I

    .line 52
    const/4 v2, -0x1

    .line 53
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/vk/attachpicker/drawing/DrawingColors;->COLORS:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 54
    sget-object v3, Lcom/vk/attachpicker/drawing/DrawingColors;->COLORS:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_1

    .line 55
    move v2, v1

    .line 59
    :cond_0
    if-ltz v2, :cond_3

    .line 60
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ColorSelectorView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 61
    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/widget/ColorSelectorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;

    .line 62
    .local v0, "cv":Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;
    if-ne v2, v1, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v0, v3}, Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;->setChecked(Z)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 53
    .end local v0    # "cv":Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .restart local v0    # "cv":Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 65
    .end local v0    # "cv":Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;
    :cond_3
    return-void
.end method

.class public Lcom/vk/attachpicker/stickers/TextStickerDialog;
.super Landroid/app/Dialog;
.source "TextStickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;
    }
.end annotation


# instance fields
.field private bottomPanel:Landroid/view/View;

.field private final callback:Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;

.field private colorSelectorView:Lcom/vk/attachpicker/widget/ColorSelectorView;

.field private editText:Lcom/vk/attachpicker/widget/BackPressEditText;

.field private editorBottomPanel:Lcom/vk/attachpicker/widget/EditorBottomPanel;

.field private fontChange:Landroid/widget/ImageView;

.field private stickerFont:Lcom/vk/attachpicker/stickers/StickerFont;

.field private tooltip:Landroid/widget/TextView;

.field private tooltipController:Lcom/vk/attachpicker/util/TooltipController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;

    .prologue
    .line 34
    const-string/jumbo v2, ""

    sget-object v0, Lcom/vk/attachpicker/drawing/DrawingColors;->COLORS:[I

    sget-object v1, Lcom/vk/attachpicker/drawing/DrawingColors;->COLORS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v3, v0, v1

    sget-object v4, Lcom/vk/attachpicker/stickers/StickerFont;->ROBOTO_BOLD:Lcom/vk/attachpicker/stickers/StickerFont;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vk/attachpicker/stickers/TextStickerDialog;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/vk/attachpicker/stickers/StickerFont;Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/vk/attachpicker/stickers/StickerFont;Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "initialColor"    # I
    .param p4, "initialStickerFont"    # Lcom/vk/attachpicker/stickers/StickerFont;
    .param p5, "callback"    # Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;

    .prologue
    const/4 v4, 0x0

    .line 38
    const v1, 0x7f0c008d

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 22
    sget-object v1, Lcom/vk/attachpicker/stickers/StickerFont;->ROBOTO_BOLD:Lcom/vk/attachpicker/stickers/StickerFont;

    iput-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->stickerFont:Lcom/vk/attachpicker/stickers/StickerFont;

    .line 39
    iput-object p5, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->callback:Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;

    .line 40
    iput-object p4, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->stickerFont:Lcom/vk/attachpicker/stickers/StickerFont;

    .line 42
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0c0124

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030123

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->setContentView(Landroid/view/View;)V

    .line 46
    const v1, 0x7f10030f

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/widget/BackPressEditText;

    iput-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->editText:Lcom/vk/attachpicker/widget/BackPressEditText;

    .line 47
    const v1, 0x7f100310

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->bottomPanel:Landroid/view/View;

    .line 48
    const v1, 0x7f100312

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/widget/ColorSelectorView;

    iput-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->colorSelectorView:Lcom/vk/attachpicker/widget/ColorSelectorView;

    .line 49
    const v1, 0x7f100313

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/widget/EditorBottomPanel;

    iput-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->editorBottomPanel:Lcom/vk/attachpicker/widget/EditorBottomPanel;

    .line 50
    const v1, 0x7f100311

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->fontChange:Landroid/widget/ImageView;

    .line 51
    const v1, 0x7f100314

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->tooltip:Landroid/widget/TextView;

    .line 52
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->tooltip:Landroid/widget/TextView;

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->realWidth()I

    move-result v2

    const/16 v3, 0x90

    invoke-static {v3}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 53
    new-instance v1, Lcom/vk/attachpicker/util/TooltipController;

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->tooltip:Landroid/widget/TextView;

    invoke-direct {v1, v2}, Lcom/vk/attachpicker/util/TooltipController;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->tooltipController:Lcom/vk/attachpicker/util/TooltipController;

    .line 55
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->editText:Lcom/vk/attachpicker/widget/BackPressEditText;

    sget-object v2, Lcom/vk/attachpicker/widget/EmptyLineTextWatcher;->INSTANCE:Lcom/vk/attachpicker/widget/EmptyLineTextWatcher;

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/BackPressEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 56
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->editText:Lcom/vk/attachpicker/widget/BackPressEditText;

    const v2, 0xa4001

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/BackPressEditText;->setInputType(I)V

    .line 57
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->editText:Lcom/vk/attachpicker/widget/BackPressEditText;

    invoke-virtual {v1, p2}, Lcom/vk/attachpicker/widget/BackPressEditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->editText:Lcom/vk/attachpicker/widget/BackPressEditText;

    invoke-virtual {v1, p3}, Lcom/vk/attachpicker/widget/BackPressEditText;->setTextColor(I)V

    .line 59
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->editText:Lcom/vk/attachpicker/widget/BackPressEditText;

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/BackPressEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/vk/attachpicker/stickers/TextStickerDialog$1;

    invoke-direct {v2, p0}, Lcom/vk/attachpicker/stickers/TextStickerDialog$1;-><init>(Lcom/vk/attachpicker/stickers/TextStickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 74
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->editText:Lcom/vk/attachpicker/widget/BackPressEditText;

    invoke-static {p0}, Lcom/vk/attachpicker/stickers/TextStickerDialog$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/stickers/TextStickerDialog;)Lcom/vk/attachpicker/widget/BackPressEditText$OnBackPressedCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/BackPressEditText;->setCallback(Lcom/vk/attachpicker/widget/BackPressEditText$OnBackPressedCallback;)V

    .line 78
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->colorSelectorView:Lcom/vk/attachpicker/widget/ColorSelectorView;

    invoke-virtual {v1, p3}, Lcom/vk/attachpicker/widget/ColorSelectorView;->setSelectedColor(I)V

    .line 79
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->colorSelectorView:Lcom/vk/attachpicker/widget/ColorSelectorView;

    invoke-static {p0}, Lcom/vk/attachpicker/stickers/TextStickerDialog$$Lambda$2;->lambdaFactory$(Lcom/vk/attachpicker/stickers/TextStickerDialog;)Lcom/vk/attachpicker/widget/ColorSelectorView$OnColorSelectedListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/ColorSelectorView;->setOnColorSelectedListener(Lcom/vk/attachpicker/widget/ColorSelectorView$OnColorSelectedListener;)V

    .line 83
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->editorBottomPanel:Lcom/vk/attachpicker/widget/EditorBottomPanel;

    invoke-static {p0, p1}, Lcom/vk/attachpicker/stickers/TextStickerDialog$$Lambda$3;->lambdaFactory$(Lcom/vk/attachpicker/stickers/TextStickerDialog;Landroid/content/Context;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/EditorBottomPanel;->setOnCancelClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->editorBottomPanel:Lcom/vk/attachpicker/widget/EditorBottomPanel;

    invoke-static {p0, p5, p1}, Lcom/vk/attachpicker/stickers/TextStickerDialog$$Lambda$4;->lambdaFactory$(Lcom/vk/attachpicker/stickers/TextStickerDialog;Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;Landroid/content/Context;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/EditorBottomPanel;->setOnApplyClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->fontChange:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/vk/attachpicker/stickers/TextStickerDialog$$Lambda$5;->lambdaFactory$(Lcom/vk/attachpicker/stickers/TextStickerDialog;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->editText:Lcom/vk/attachpicker/widget/BackPressEditText;

    invoke-virtual {v1, v4}, Lcom/vk/attachpicker/widget/BackPressEditText;->setAlpha(F)V

    .line 117
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->bottomPanel:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 119
    invoke-direct {p0}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->setStickerFont()V

    .line 121
    const-string/jumbo v1, "font_tooltip"

    invoke-static {v1}, Lcom/vk/attachpicker/util/TooltipController;->shouldShowTooltip(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->tooltipController:Lcom/vk/attachpicker/util/TooltipController;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Lcom/vk/attachpicker/util/TooltipController;->showTooltip(J)V

    .line 124
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/stickers/TextStickerDialog;)Lcom/vk/attachpicker/widget/BackPressEditText;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/stickers/TextStickerDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->editText:Lcom/vk/attachpicker/widget/BackPressEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/stickers/TextStickerDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/stickers/TextStickerDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->bottomPanel:Landroid/view/View;

    return-object v0
.end method

.method private setStickerFont()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->stickerFont:Lcom/vk/attachpicker/stickers/StickerFont;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->editText:Lcom/vk/attachpicker/widget/BackPressEditText;

    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->stickerFont:Lcom/vk/attachpicker/stickers/StickerFont;

    iget-object v1, v1, Lcom/vk/attachpicker/stickers/StickerFont;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/BackPressEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 135
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->fontChange:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->stickerFont:Lcom/vk/attachpicker/stickers/StickerFont;

    iget v1, v1, Lcom/vk/attachpicker/stickers/StickerFont;->iconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->tooltipController:Lcom/vk/attachpicker/util/TooltipController;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TooltipController;->cancel()V

    .line 129
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 130
    return-void
.end method

.method synthetic lambda$new$144()V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->dismiss()V

    .line 76
    return-void
.end method

.method synthetic lambda$new$145(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->editText:Lcom/vk/attachpicker/widget/BackPressEditText;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/widget/BackPressEditText;->setTextColor(I)V

    .line 81
    return-void
.end method

.method synthetic lambda$new$146(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-static {p1}, Lcom/vk/attachpicker/util/KeyboardUtils;->hideKeyboard(Landroid/content/Context;)V

    .line 85
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->dismiss()V

    .line 86
    return-void
.end method

.method synthetic lambda$new$147(Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->editText:Lcom/vk/attachpicker/widget/BackPressEditText;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/BackPressEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->editText:Lcom/vk/attachpicker/widget/BackPressEditText;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/BackPressEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->colorSelectorView:Lcom/vk/attachpicker/widget/ColorSelectorView;

    .line 90
    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/ColorSelectorView;->getSelectedColor()I

    move-result v1

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->stickerFont:Lcom/vk/attachpicker/stickers/StickerFont;

    .line 89
    invoke-interface {p1, v0, v1, v2}, Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;->onApply(Ljava/lang/String;ILcom/vk/attachpicker/stickers/StickerFont;)V

    .line 93
    :cond_0
    invoke-static {p2}, Lcom/vk/attachpicker/util/KeyboardUtils;->hideKeyboard(Landroid/content/Context;)V

    .line 94
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->dismiss()V

    .line 95
    return-void
.end method

.method synthetic lambda$new$148(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->tooltipController:Lcom/vk/attachpicker/util/TooltipController;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TooltipController;->hideTooltip()V

    .line 100
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->stickerFont:Lcom/vk/attachpicker/stickers/StickerFont;

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lcom/vk/attachpicker/stickers/StickerFont;->ROBOTO_BOLD:Lcom/vk/attachpicker/stickers/StickerFont;

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->stickerFont:Lcom/vk/attachpicker/stickers/StickerFont;

    .line 113
    :goto_0
    invoke-direct {p0}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->setStickerFont()V

    .line 114
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->stickerFont:Lcom/vk/attachpicker/stickers/StickerFont;

    sget-object v1, Lcom/vk/attachpicker/stickers/StickerFont;->ROBOTO_BOLD:Lcom/vk/attachpicker/stickers/StickerFont;

    if-ne v0, v1, :cond_1

    .line 104
    sget-object v0, Lcom/vk/attachpicker/stickers/StickerFont;->LOBSTER_REGULAR:Lcom/vk/attachpicker/stickers/StickerFont;

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->stickerFont:Lcom/vk/attachpicker/stickers/StickerFont;

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->stickerFont:Lcom/vk/attachpicker/stickers/StickerFont;

    sget-object v1, Lcom/vk/attachpicker/stickers/StickerFont;->LOBSTER_REGULAR:Lcom/vk/attachpicker/stickers/StickerFont;

    if-ne v0, v1, :cond_2

    .line 107
    sget-object v0, Lcom/vk/attachpicker/stickers/StickerFont;->IMPACT:Lcom/vk/attachpicker/stickers/StickerFont;

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->stickerFont:Lcom/vk/attachpicker/stickers/StickerFont;

    goto :goto_0

    .line 110
    :cond_2
    sget-object v0, Lcom/vk/attachpicker/stickers/StickerFont;->ROBOTO_BOLD:Lcom/vk/attachpicker/stickers/StickerFont;

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog;->stickerFont:Lcom/vk/attachpicker/stickers/StickerFont;

    goto :goto_0
.end method

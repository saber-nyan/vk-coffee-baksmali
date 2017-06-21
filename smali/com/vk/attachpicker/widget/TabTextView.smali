.class public Lcom/vk/attachpicker/widget/TabTextView;
.super Landroid/widget/TextView;
.source "TabTextView.java"


# instance fields
.field private notSelectedColor:I

.field private selectedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/widget/TabTextView;->init(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/widget/TabTextView;->init(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/widget/TabTextView;->init(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const v0, 0x7f0f007c

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/TabTextView;->notSelectedColor:I

    .line 32
    const v0, 0x7f0f007d

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/TabTextView;->selectedColor:I

    .line 33
    return-void
.end method


# virtual methods
.method public setSelection(IIF)V
    .locals 3
    .param p1, "holderPosition"    # I
    .param p2, "realCurrentPage"    # I
    .param p3, "positionOffset"    # F

    .prologue
    .line 37
    if-ne p1, p2, :cond_0

    .line 38
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, p3

    .line 44
    .local v0, "selection":F
    :goto_0
    iget v1, p0, Lcom/vk/attachpicker/widget/TabTextView;->notSelectedColor:I

    iget v2, p0, Lcom/vk/attachpicker/widget/TabTextView;->selectedColor:I

    invoke-static {v1, v2, v0}, Lcom/vk/attachpicker/util/Utils;->interpolateColors(IIF)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/widget/TabTextView;->setTextColor(I)V

    .line 45
    return-void

    .line 39
    .end local v0    # "selection":F
    :cond_0
    add-int/lit8 v1, p2, 0x1

    if-ne p1, v1, :cond_1

    .line 40
    move v0, p3

    .restart local v0    # "selection":F
    goto :goto_0

    .line 42
    .end local v0    # "selection":F
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "selection":F
    goto :goto_0
.end method

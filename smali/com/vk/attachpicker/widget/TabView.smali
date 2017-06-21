.class public Lcom/vk/attachpicker/widget/TabView;
.super Landroid/widget/FrameLayout;
.source "TabView.java"


# instance fields
.field private icon:Lcom/vk/attachpicker/widget/TabImageView;

.field private title:Lcom/vk/attachpicker/widget/TabTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/widget/TabView;->init(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/widget/TabView;->init(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/widget/TabView;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030114

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    const v0, 0x7f1002f5

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/widget/TabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/widget/TabImageView;

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TabView;->icon:Lcom/vk/attachpicker/widget/TabImageView;

    .line 35
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TabView;->icon:Lcom/vk/attachpicker/widget/TabImageView;

    const v1, 0x7f0f007b

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/TabImageView;->setColorFilter(I)V

    .line 36
    const v0, 0x7f1002f2

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/widget/TabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/widget/TabTextView;

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TabView;->title:Lcom/vk/attachpicker/widget/TabTextView;

    .line 37
    return-void
.end method


# virtual methods
.method public setSelection(IIF)V
    .locals 1
    .param p1, "holderPosition"    # I
    .param p2, "realCurrentPage"    # I
    .param p3, "positionOffset"    # F

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TabView;->icon:Lcom/vk/attachpicker/widget/TabImageView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vk/attachpicker/widget/TabImageView;->setSelection(IIF)V

    .line 48
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TabView;->title:Lcom/vk/attachpicker/widget/TabTextView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vk/attachpicker/widget/TabTextView;->setSelection(IIF)V

    .line 49
    return-void
.end method

.method public update(Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;IIF)V
    .locals 2
    .param p1, "tabInfo"    # Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;
    .param p2, "holderPosition"    # I
    .param p3, "realCurrentPage"    # I
    .param p4, "positionOffset"    # F

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TabView;->icon:Lcom/vk/attachpicker/widget/TabImageView;

    iget v1, p1, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;->iconResId:I

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/TabImageView;->setImageResource(I)V

    .line 41
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TabView;->title:Lcom/vk/attachpicker/widget/TabTextView;

    iget v1, p1, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;->titleResId:I

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/TabTextView;->setText(I)V

    .line 43
    invoke-virtual {p0, p2, p3, p4}, Lcom/vk/attachpicker/widget/TabView;->setSelection(IIF)V

    .line 44
    return-void
.end method

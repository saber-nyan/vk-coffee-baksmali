.class public Lcom/vk/attachpicker/widget/EditorBottomPanel;
.super Landroid/widget/FrameLayout;
.source "EditorBottomPanel.java"


# instance fields
.field private applyButton:Landroid/widget/ImageView;

.field private cancelButton:Landroid/widget/ImageView;

.field private centerViewContainer:Landroid/widget/FrameLayout;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vk/attachpicker/widget/EditorBottomPanel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/vk/attachpicker/widget/EditorBottomPanel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/vk/attachpicker/widget/EditorBottomPanel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 39
    invoke-static {}, Lcom/vk/attachpicker/widget/EditorBottomPanel$$Lambda$1;->lambdaFactory$()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vk/attachpicker/widget/EditorBottomPanel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03011d

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    const v3, 0x7f1002f2

    invoke-virtual {p0, v3}, Lcom/vk/attachpicker/widget/EditorBottomPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vk/attachpicker/widget/EditorBottomPanel;->title:Landroid/widget/TextView;

    .line 43
    const v3, 0x7f100301

    invoke-virtual {p0, v3}, Lcom/vk/attachpicker/widget/EditorBottomPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/vk/attachpicker/widget/EditorBottomPanel;->cancelButton:Landroid/widget/ImageView;

    .line 44
    const v3, 0x7f100302

    invoke-virtual {p0, v3}, Lcom/vk/attachpicker/widget/EditorBottomPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/vk/attachpicker/widget/EditorBottomPanel;->applyButton:Landroid/widget/ImageView;

    .line 45
    const v3, 0x7f100300

    invoke-virtual {p0, v3}, Lcom/vk/attachpicker/widget/EditorBottomPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/vk/attachpicker/widget/EditorBottomPanel;->centerViewContainer:Landroid/widget/FrameLayout;

    .line 47
    if-eqz p2, :cond_1

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/vkcoffee/android/R$styleable;->EditorBottomPanel:[I

    invoke-virtual {v3, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 54
    .local v2, "titleResId":I
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 56
    .local v1, "applyVisible":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    if-eqz v2, :cond_0

    .line 59
    iget-object v3, p0, Lcom/vk/attachpicker/widget/EditorBottomPanel;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 61
    :cond_0
    if-nez v1, :cond_1

    .line 62
    iget-object v3, p0, Lcom/vk/attachpicker/widget/EditorBottomPanel;->applyButton:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "applyVisible":Z
    .end local v2    # "titleResId":I
    :cond_1
    return-void

    .line 56
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method static synthetic lambda$init$84(Landroid/view/View;)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 39
    return-void
.end method


# virtual methods
.method public setCenterView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    const/16 v1, 0x30

    invoke-static {v1}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 69
    iget-object v1, p0, Lcom/vk/attachpicker/widget/EditorBottomPanel;->centerViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 70
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 71
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 72
    iget-object v1, p0, Lcom/vk/attachpicker/widget/EditorBottomPanel;->centerViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-void
.end method

.method public setOnApplyClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vk/attachpicker/widget/EditorBottomPanel;->applyButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method public setOnCancelClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vk/attachpicker/widget/EditorBottomPanel;->cancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

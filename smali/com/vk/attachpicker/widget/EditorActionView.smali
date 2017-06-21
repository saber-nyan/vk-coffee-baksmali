.class public Lcom/vk/attachpicker/widget/EditorActionView;
.super Landroid/widget/FrameLayout;
.source "EditorActionView.java"


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vk/attachpicker/widget/EditorActionView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/vk/attachpicker/widget/EditorActionView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/vk/attachpicker/widget/EditorActionView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 33
    const v3, 0x7f0202b3

    invoke-virtual {p0, v3}, Lcom/vk/attachpicker/widget/EditorActionView;->setBackgroundResource(I)V

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03011c

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    const v3, 0x7f1002f5

    invoke-virtual {p0, v3}, Lcom/vk/attachpicker/widget/EditorActionView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/vk/attachpicker/widget/EditorActionView;->icon:Landroid/widget/ImageView;

    .line 36
    const v3, 0x7f1002f2

    invoke-virtual {p0, v3}, Lcom/vk/attachpicker/widget/EditorActionView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vk/attachpicker/widget/EditorActionView;->title:Landroid/widget/TextView;

    .line 38
    if-eqz p2, :cond_1

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/vkcoffee/android/R$styleable;->EditorActionView:[I

    invoke-virtual {v3, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 45
    .local v1, "iconResId":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 47
    .local v2, "titleResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    if-eqz v1, :cond_0

    .line 50
    iget-object v3, p0, Lcom/vk/attachpicker/widget/EditorActionView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    :cond_0
    if-eqz v2, :cond_1

    .line 53
    iget-object v3, p0, Lcom/vk/attachpicker/widget/EditorActionView;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 58
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "iconResId":I
    .end local v2    # "titleResId":I
    :cond_1
    return-void

    .line 47
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

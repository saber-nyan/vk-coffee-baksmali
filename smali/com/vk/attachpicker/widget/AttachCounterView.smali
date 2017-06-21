.class public Lcom/vk/attachpicker/widget/AttachCounterView;
.super Landroid/widget/FrameLayout;
.source "AttachCounterView.java"


# instance fields
.field private counterView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/AttachCounterView;->init()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/AttachCounterView;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/AttachCounterView;->init()V

    .line 27
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 30
    const v0, 0x7f02027f

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/widget/AttachCounterView;->setBackgroundResource(I)V

    .line 31
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/AttachCounterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030119

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    const v0, 0x7f1002f9

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/widget/AttachCounterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vk/attachpicker/widget/AttachCounterView;->counterView:Landroid/widget/TextView;

    .line 33
    return-void
.end method


# virtual methods
.method public setCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AttachCounterView;->counterView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AttachCounterView;->counterView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/vk/attachpicker/widget/AttachCounterView;->counterView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

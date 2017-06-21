.class public Lcom/vk/attachpicker/widget/FiltersFrameLayout;
.super Landroid/widget/FrameLayout;
.source "FiltersFrameLayout.java"


# instance fields
.field private stickersView:Lcom/vk/attachpicker/stickers/StickersDrawingView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

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
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method private static findStickersView(Landroid/view/ViewGroup;)Lcom/vk/attachpicker/stickers/StickersDrawingView;
    .locals 5
    .param p0, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 45
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 46
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/vk/attachpicker/stickers/StickersDrawingView;

    if-ne v3, v4, :cond_0

    .line 47
    check-cast v2, Lcom/vk/attachpicker/stickers/StickersDrawingView;

    .line 55
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .line 48
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 49
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "v":Landroid/view/View;
    invoke-static {v2}, Lcom/vk/attachpicker/widget/FiltersFrameLayout;->findStickersView(Landroid/view/ViewGroup;)Lcom/vk/attachpicker/stickers/StickersDrawingView;

    move-result-object v1

    .line 50
    .local v1, "p":Lcom/vk/attachpicker/stickers/StickersDrawingView;
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 51
    goto :goto_1

    .line 44
    .end local v1    # "p":Lcom/vk/attachpicker/stickers/StickersDrawingView;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 29
    iget-object v1, p0, Lcom/vk/attachpicker/widget/FiltersFrameLayout;->stickersView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/vk/attachpicker/widget/FiltersFrameLayout;->stickersView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    invoke-virtual {v1, p1}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 38
    :goto_0
    return v0

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/vk/attachpicker/widget/FiltersFrameLayout;->findStickersView(Landroid/view/ViewGroup;)Lcom/vk/attachpicker/stickers/StickersDrawingView;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/widget/FiltersFrameLayout;->stickersView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    .line 34
    iget-object v1, p0, Lcom/vk/attachpicker/widget/FiltersFrameLayout;->stickersView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    if-eqz v1, :cond_1

    .line 35
    iget-object v1, p0, Lcom/vk/attachpicker/widget/FiltersFrameLayout;->stickersView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    invoke-virtual {v1, p1}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

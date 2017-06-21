.class public Lcom/vkcoffee/android/ui/StateShadowTextView;
.super Landroid/widget/TextView;
.source "StateShadowTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;
    }
.end annotation


# instance fields
.field private currentState:[I

.field private shDisabled:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

.field private shNormal:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

.field private shPressed:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

.field private shSelected:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->currentState:[I

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/vkcoffee/android/ui/StateShadowTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->currentState:[I

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vkcoffee/android/ui/StateShadowTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->currentState:[I

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/StateShadowTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method private getShadow([I)Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;
    .locals 1
    .param p1, "ds"    # [I

    .prologue
    .line 73
    const v0, 0x101009e

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/StateShadowTextView;->inArray(I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->shDisabled:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    .line 82
    :goto_0
    return-object v0

    .line 76
    :cond_0
    const v0, 0x10100a7

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/StateShadowTextView;->inArray(I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->shPressed:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    goto :goto_0

    .line 79
    :cond_1
    const v0, 0x10100a1

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/StateShadowTextView;->inArray(I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->shSelected:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->shNormal:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    goto :goto_0
.end method

.method private inArray(I[I)Z
    .locals 4
    .param p1, "i"    # I
    .param p2, "a"    # [I

    .prologue
    const/4 v1, 0x0

    .line 86
    array-length v3, p2

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p2, v2

    .line 87
    .local v0, "aa":I
    if-ne v0, p1, :cond_1

    .line 88
    const/4 v1, 0x1

    .line 91
    .end local v0    # "aa":I
    :cond_0
    return v1

    .line 86
    .restart local v0    # "aa":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    if-eqz p2, :cond_3

    .line 33
    sget-object v1, Lcom/vkcoffee/android/R$styleable;->StateShadowTextView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    new-instance v1, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;-><init>(Lcom/vkcoffee/android/ui/StateShadowTextView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->shNormal:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    .line 37
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    new-instance v1, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;-><init>(Lcom/vkcoffee/android/ui/StateShadowTextView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->shPressed:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    .line 40
    :cond_1
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    new-instance v1, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;-><init>(Lcom/vkcoffee/android/ui/StateShadowTextView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->shSelected:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    .line 43
    :cond_2
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    new-instance v1, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;-><init>(Lcom/vkcoffee/android/ui/StateShadowTextView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->shDisabled:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    .line 47
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->shNormal:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    if-nez v1, :cond_4

    .line 48
    new-instance v1, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;-><init>(Lcom/vkcoffee/android/ui/StateShadowTextView;)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->shNormal:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    .line 50
    :cond_4
    iget-object v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->shPressed:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    if-nez v1, :cond_5

    .line 51
    iget-object v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->shNormal:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    iput-object v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->shPressed:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    .line 53
    :cond_5
    iget-object v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->shSelected:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    if-nez v1, :cond_6

    .line 54
    iget-object v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->shPressed:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    iput-object v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->shSelected:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    .line 56
    :cond_6
    iget-object v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->shDisabled:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    if-nez v1, :cond_7

    .line 57
    iget-object v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->shNormal:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    iput-object v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->shDisabled:Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    .line 60
    :cond_7
    return-void
.end method

.method private updateState([I)V
    .locals 5
    .param p1, "newState"    # [I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/StateShadowTextView;->getShadow([I)Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;

    move-result-object v0

    .line 65
    .local v0, "sl":Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;
    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget v1, v0, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;->radius:F

    iget v2, v0, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;->dx:F

    iget v3, v0, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;->dy:F

    iget v4, v0, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;->color:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/vkcoffee/android/ui/StateShadowTextView;->setShadowLayer(FFFI)V

    .line 69
    iput-object p1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->currentState:[I

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/StateShadowTextView;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView;->currentState:[I

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/StateShadowTextView;->getDrawableState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/StateShadowTextView;->updateState([I)V

    .line 98
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 99
    return-void
.end method

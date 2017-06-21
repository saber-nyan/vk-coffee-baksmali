.class public Lcom/vkcoffee/android/ui/TextView;
.super Landroid/widget/TextView;
.source "TextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/TextView;->init(Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/TextView;->init(Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/TextView;->init(Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/vkcoffee/android/R$styleable;->TextView:[I

    invoke-virtual {v6, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 41
    .local v5, "typeface":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/TextView;->isInEditMode()Z

    move-result v6

    if-nez v6, :cond_0

    .line 42
    invoke-static {v5}, Lcom/vkcoffee/android/ui/Font;->valueOf(Ljava/lang/String;)Lcom/vkcoffee/android/ui/Font;

    move-result-object v6

    iget-object v6, v6, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 45
    .local v4, "tint":I
    if-eqz v4, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 47
    .local v2, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_2

    .line 48
    aget-object v1, v2, v3

    .line 49
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v4, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 47
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method

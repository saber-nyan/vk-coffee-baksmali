.class public Lcom/vkcoffee/android/utils/TypefaceSpanAssets;
.super Landroid/text/style/MetricAffectingSpan;
.source "TypefaceSpanAssets.java"


# instance fields
.field private final typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/vkcoffee/android/utils/TypefaceSpanAssets;->typeface:Landroid/graphics/Typeface;

    .line 13
    return-void
.end method

.method private static apply(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .locals 4
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "type"    # Landroid/graphics/Typeface;

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 29
    .local v1, "old":Landroid/graphics/Typeface;
    if-nez v1, :cond_2

    .line 30
    const/4 v2, 0x0

    .line 35
    .local v2, "oldStyle":I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int v0, v2, v3

    .line 37
    .local v0, "fake":I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    .line 38
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 41
    :cond_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 42
    const/high16 v3, -0x41800000    # -0.25f

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 45
    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 46
    return-void

    .line 32
    .end local v0    # "fake":I
    .end local v2    # "oldStyle":I
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    .restart local v2    # "oldStyle":I
    goto :goto_0
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vkcoffee/android/utils/TypefaceSpanAssets;->typeface:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lcom/vkcoffee/android/utils/TypefaceSpanAssets;->apply(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 18
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vkcoffee/android/utils/TypefaceSpanAssets;->typeface:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lcom/vkcoffee/android/utils/TypefaceSpanAssets;->apply(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 23
    return-void
.end method

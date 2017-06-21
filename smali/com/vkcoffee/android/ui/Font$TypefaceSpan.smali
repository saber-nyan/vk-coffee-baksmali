.class public Lcom/vkcoffee/android/ui/Font$TypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypefaceSpan"
.end annotation


# instance fields
.field private mColor:Ljava/lang/Integer;

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ui/Font;)V
    .locals 1
    .param p1, "font"    # Lcom/vkcoffee/android/ui/Font;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;->mColor:Ljava/lang/Integer;

    .line 42
    iget-object v0, p1, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/ui/Font;I)V
    .locals 1
    .param p1, "font"    # Lcom/vkcoffee/android/ui/Font;
    .param p2, "color"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;-><init>(Lcom/vkcoffee/android/ui/Font;)V

    .line 50
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;->mColor:Ljava/lang/Integer;

    .line 51
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;->mColor:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;->mColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 72
    :cond_1
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 73
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "p"    # Landroid/text/TextPaint;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;->mColor:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;->mColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 61
    :cond_1
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 62
    return-void
.end method

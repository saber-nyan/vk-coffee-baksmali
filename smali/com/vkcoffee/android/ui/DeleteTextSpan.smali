.class public Lcom/vkcoffee/android/ui/DeleteTextSpan;
.super Landroid/text/style/ReplacementSpan;
.source "DeleteTextSpan.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "charSequence"    # Ljava/lang/CharSequence;
    .param p3, "i"    # I
    .param p4, "i1"    # I
    .param p5, "v"    # F
    .param p6, "i2"    # I
    .param p7, "i3"    # I
    .param p8, "i4"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 19
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "charSequence"    # Ljava/lang/CharSequence;
    .param p3, "i"    # I
    .param p4, "i1"    # I
    .param p5, "fontMetricsInt"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method

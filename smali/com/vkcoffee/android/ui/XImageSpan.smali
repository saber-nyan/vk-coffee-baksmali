.class public Lcom/vkcoffee/android/ui/XImageSpan;
.super Landroid/text/style/ImageSpan;
.source "XImageSpan.java"


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "verticalAlignment"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 12
    return-void
.end method


# virtual methods
.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    const/4 v5, 0x0

    .line 18
    invoke-super/range {p0 .. p5}, Landroid/text/style/ImageSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    .line 20
    .local v2, "sz":I
    if-eqz p5, :cond_0

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    float-to-int v3, v3

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result v3

    float-to-int v3, v3

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result v3

    float-to-int v3, v3

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v1, v3, v4

    .line 26
    .local v1, "fh":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/XImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 27
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v5, v5, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 32
    return v2
.end method

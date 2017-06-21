.class public Lcom/vkcoffee/android/ui/CorrectlyMeasuringTextView;
.super Lcom/vkcoffee/android/ui/LinkedTextView;
.source "CorrectlyMeasuringTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/LinkedTextView;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/LinkedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/LinkedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 8
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/ui/LinkedTextView;->onMeasure(II)V

    .line 26
    :try_start_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/CorrectlyMeasuringTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 27
    .local v1, "l":Landroid/text/Layout;
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_0

    .line 38
    .end local v1    # "l":Landroid/text/Layout;
    :goto_0
    return-void

    .line 30
    .restart local v1    # "l":Landroid/text/Layout;
    :cond_0
    const/4 v2, 0x0

    .line 31
    .local v2, "maxw":I
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 32
    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/CorrectlyMeasuringTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 31
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/CorrectlyMeasuringTextView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/CorrectlyMeasuringTextView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/CorrectlyMeasuringTextView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/CorrectlyMeasuringTextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/vkcoffee/android/ui/CorrectlyMeasuringTextView;->setMeasuredDimension(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    .end local v0    # "i":I
    .end local v1    # "l":Landroid/text/Layout;
    .end local v2    # "maxw":I
    :catch_0
    move-exception v3

    .line 36
    .local v3, "x":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method

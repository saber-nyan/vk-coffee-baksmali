.class Lcom/vkcoffee/android/NewsEntry$XColorSpan;
.super Landroid/text/style/ForegroundColorSpan;
.source "NewsEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/NewsEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XColorSpan"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 1338
    invoke-direct {p0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1339
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 4
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 1343
    invoke-super {p0, p1}, Landroid/text/style/ForegroundColorSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 1344
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 1345
    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    if-nez v2, :cond_0

    .line 1359
    :goto_0
    return-void

    .line 1348
    :cond_0
    const/4 v1, 0x0

    .line 1349
    .local v1, "isPressed":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1350
    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    aget v2, v2, v0

    const v3, 0x10100a7

    if-eq v2, v3, :cond_1

    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    aget v2, v2, v0

    const v3, 0x10100a1

    if-ne v2, v3, :cond_2

    .line 1351
    :cond_1
    const/4 v1, 0x1

    .line 1349
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1354
    :cond_3
    if-eqz v1, :cond_4

    .line 1355
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 1357
    :cond_4
    invoke-virtual {p0}, Lcom/vkcoffee/android/NewsEntry$XColorSpan;->getForegroundColor()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method

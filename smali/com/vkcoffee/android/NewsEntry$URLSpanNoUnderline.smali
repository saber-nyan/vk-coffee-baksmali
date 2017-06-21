.class Lcom/vkcoffee/android/NewsEntry$URLSpanNoUnderline;
.super Landroid/text/style/URLSpan;
.source "NewsEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/NewsEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "URLSpanNoUnderline"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1312
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 1313
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 4
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 1317
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 1318
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 1319
    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    if-nez v2, :cond_0

    .line 1333
    :goto_0
    return-void

    .line 1322
    :cond_0
    const/4 v1, 0x0

    .line 1323
    .local v1, "isPressed":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1324
    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    aget v2, v2, v0

    const v3, 0x10100a7

    if-eq v2, v3, :cond_1

    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    aget v2, v2, v0

    const v3, 0x10100a1

    if-ne v2, v3, :cond_2

    .line 1325
    :cond_1
    const/4 v1, 0x1

    .line 1323
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1331
    :cond_3
    const v2, -0xd4a786

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method

.class Lcom/vkcoffee/android/AttachInfoView$URLSpanNoUnderline;
.super Landroid/text/style/URLSpan;
.source "AttachInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/AttachInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "URLSpanNoUnderline"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AttachInfoView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/AttachInfoView;Ljava/lang/String;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vkcoffee/android/AttachInfoView$URLSpanNoUnderline;->this$0:Lcom/vkcoffee/android/AttachInfoView;

    .line 49
    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 4
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 55
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 56
    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    if-nez v2, :cond_0

    .line 70
    :goto_0
    return-void

    .line 59
    :cond_0
    const/4 v1, 0x0

    .line 60
    .local v1, "isPressed":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 61
    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    aget v2, v2, v0

    const v3, 0x10100a7

    if-eq v2, v3, :cond_1

    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    aget v2, v2, v0

    const v3, 0x10100a1

    if-ne v2, v3, :cond_2

    .line 62
    :cond_1
    const/4 v1, 0x1

    .line 60
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    :cond_3
    if-eqz v1, :cond_4

    .line 66
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 68
    :cond_4
    const v2, -0xd4a786

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method

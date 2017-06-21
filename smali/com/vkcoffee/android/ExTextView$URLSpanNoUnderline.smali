.class Lcom/vkcoffee/android/ExTextView$URLSpanNoUnderline;
.super Landroid/text/style/URLSpan;
.source "ExTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ExTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "URLSpanNoUnderline"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ExTextView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ExTextView;Ljava/lang/String;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vkcoffee/android/ExTextView$URLSpanNoUnderline;->this$0:Lcom/vkcoffee/android/ExTextView;

    .line 78
    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 79
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 85
    iget-object v0, p1, Landroid/text/TextPaint;->drawableState:[I

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ExTextView$URLSpanNoUnderline;->this$0:Lcom/vkcoffee/android/ExTextView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ExTextView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/ExTextView$URLSpanNoUnderline;->this$0:Lcom/vkcoffee/android/ExTextView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ExTextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 91
    :cond_2
    const v0, -0xd4a786

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method

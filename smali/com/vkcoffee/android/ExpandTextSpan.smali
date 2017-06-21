.class public Lcom/vkcoffee/android/ExpandTextSpan;
.super Lcom/vkcoffee/android/LinkSpan;
.source "ExpandTextSpan.java"


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "l"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/LinkSpan;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vkcoffee/android/ExpandTextSpan;->clickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/vkcoffee/android/ExpandTextSpan;->clickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 25
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vkcoffee/android/ExpandTextSpan;->clickListener:Landroid/view/View$OnClickListener;

    .line 29
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/vkcoffee/android/LinkSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 34
    sget-object v0, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 35
    return-void
.end method

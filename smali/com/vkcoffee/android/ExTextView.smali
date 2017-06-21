.class public Lcom/vkcoffee/android/ExTextView;
.super Landroid/widget/TextView;
.source "ExTextView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ExTextView$ResourceImageGetter;,
        Lcom/vkcoffee/android/ExTextView$URLSpanNoUnderline;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method private doIt(Landroid/text/Spannable;)Landroid/text/Spannable;
    .locals 9
    .param p1, "s"    # Landroid/text/Spannable;

    .prologue
    const/4 v6, 0x0

    .line 65
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v7, Landroid/text/style/URLSpan;

    invoke-interface {p1, v6, v5, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    .line 66
    .local v3, "spans":[Landroid/text/style/URLSpan;
    array-length v7, v3

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v1, v3, v5

    .line 67
    .local v1, "span":Landroid/text/style/URLSpan;
    invoke-interface {p1, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 68
    .local v4, "start":I
    invoke-interface {p1, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 69
    .local v0, "end":I
    invoke-interface {p1, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 70
    new-instance v2, Lcom/vkcoffee/android/ExTextView$URLSpanNoUnderline;

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, p0, v8}, Lcom/vkcoffee/android/ExTextView$URLSpanNoUnderline;-><init>(Lcom/vkcoffee/android/ExTextView;Ljava/lang/String;)V

    .line 71
    .end local v1    # "span":Landroid/text/style/URLSpan;
    .local v2, "span":Landroid/text/style/URLSpan;
    invoke-interface {p1, v2, v4, v0, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 66
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "end":I
    .end local v2    # "span":Landroid/text/style/URLSpan;
    .end local v4    # "start":I
    :cond_0
    return-object p1
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ExTextView;->setFocusable(Z)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ExTextView;->setFocusableInTouchMode(Z)V

    .line 35
    return-void
.end method

.method public setHTML(Ljava/lang/String;)V
    .locals 5
    .param p1, "h"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 48
    :try_start_0
    new-instance v2, Lcom/vkcoffee/android/ExTextView$ResourceImageGetter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vkcoffee/android/ExTextView$ResourceImageGetter;-><init>(Lcom/vkcoffee/android/ExTextView;Lcom/vkcoffee/android/ExTextView$1;)V

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/ExTextView;->doIt(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v0

    .line 49
    .local v0, "sp":Landroid/text/Spannable;
    invoke-static {v0}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "sp":Landroid/text/Spannable;
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "x":Ljava/lang/Exception;
    new-instance v2, Lcom/vkcoffee/android/ExTextView$ResourceImageGetter;

    invoke-direct {v2, p0, v4}, Lcom/vkcoffee/android/ExTextView$ResourceImageGetter;-><init>(Lcom/vkcoffee/android/ExTextView;Lcom/vkcoffee/android/ExTextView$1;)V

    invoke-static {p1, v2, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setHTML(Ljava/lang/String;Landroid/text/Html$ImageGetter;)V
    .locals 4
    .param p1, "h"    # Ljava/lang/String;
    .param p2, "igetter"    # Landroid/text/Html$ImageGetter;

    .prologue
    const/4 v3, 0x0

    .line 57
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, p2, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/ExTextView;->doIt(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v0

    .line 58
    .local v0, "sp":Landroid/text/Spannable;
    invoke-super {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0    # "sp":Landroid/text/Spannable;
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "x":Ljava/lang/Exception;
    new-instance v2, Lcom/vkcoffee/android/ExTextView$ResourceImageGetter;

    invoke-direct {v2, p0, v3}, Lcom/vkcoffee/android/ExTextView$ResourceImageGetter;-><init>(Lcom/vkcoffee/android/ExTextView;Lcom/vkcoffee/android/ExTextView$1;)V

    invoke-static {p1, v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTextEx(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 39
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v3, v0

    invoke-direct {p0, v3}, Lcom/vkcoffee/android/ExTextView;->doIt(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v1

    .line 40
    .local v1, "sp":Landroid/text/Spannable;
    invoke-super {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v1    # "sp":Landroid/text/Spannable;
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v2

    .line 42
    .local v2, "x":Ljava/lang/Exception;
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

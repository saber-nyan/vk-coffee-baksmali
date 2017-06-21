.class public Lcom/vkcoffee/android/AttachInfoView;
.super Landroid/widget/LinearLayout;
.source "AttachInfoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/AttachInfoView$URLSpanNoUnderline;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconID"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 19
    .local v1, "lparams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x40400000    # 3.0f

    sget v4, Lcom/vkcoffee/android/Global;->displayDensity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 20
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/AttachInfoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/AttachInfoView;->setGravity(I)V

    .line 22
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AttachInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    .local v0, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AttachInfoView;->addView(Landroid/view/View;)V

    .line 25
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AttachInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    .local v2, "textView":Landroid/widget/TextView;
    new-instance v3, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v3}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 27
    invoke-virtual {p0}, Lcom/vkcoffee/android/AttachInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 28
    invoke-virtual {p0}, Lcom/vkcoffee/android/AttachInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 29
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 30
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 31
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/AttachInfoView;->addView(Landroid/view/View;)V

    .line 32
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    return-void
.end method

.method private stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;
    .locals 9
    .param p1, "s"    # Landroid/text/Spannable;

    .prologue
    const/4 v6, 0x0

    .line 36
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v7, Landroid/text/style/URLSpan;

    invoke-interface {p1, v6, v5, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    .line 37
    .local v3, "spans":[Landroid/text/style/URLSpan;
    array-length v7, v3

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v1, v3, v5

    .line 38
    .local v1, "span":Landroid/text/style/URLSpan;
    invoke-interface {p1, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 39
    .local v4, "start":I
    invoke-interface {p1, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 40
    .local v0, "end":I
    invoke-interface {p1, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 41
    new-instance v2, Lcom/vkcoffee/android/AttachInfoView$URLSpanNoUnderline;

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, p0, v8}, Lcom/vkcoffee/android/AttachInfoView$URLSpanNoUnderline;-><init>(Lcom/vkcoffee/android/AttachInfoView;Ljava/lang/String;)V

    .line 42
    .end local v1    # "span":Landroid/text/style/URLSpan;
    .local v2, "span":Landroid/text/style/URLSpan;
    invoke-interface {p1, v2, v4, v0, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 37
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "end":I
    .end local v2    # "span":Landroid/text/style/URLSpan;
    .end local v4    # "start":I
    :cond_0
    return-object p1
.end method

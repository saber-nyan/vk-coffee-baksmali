.class public Lcom/vk/attachpicker/widget/RobotoMediumTextView;
.super Landroid/widget/TextView;
.source "RobotoMediumTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/RobotoMediumTextView;->init()V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/RobotoMediumTextView;->init()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/RobotoMediumTextView;->init()V

    .line 23
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/vk/attachpicker/util/Fonts;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/widget/RobotoMediumTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 27
    return-void
.end method

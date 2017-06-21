.class public Lcom/vk/attachpicker/widget/AnimatableTextView;
.super Lcom/vk/attachpicker/widget/RobotoMediumTextView;
.source "AnimatableTextView.java"


# instance fields
.field private backgroundColor:I

.field private textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/widget/RobotoMediumTextView;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/vk/attachpicker/widget/RobotoMediumTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/attachpicker/widget/RobotoMediumTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/vk/attachpicker/widget/AnimatableTextView;->backgroundColor:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/vk/attachpicker/widget/AnimatableTextView;->textColor:I

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/vk/attachpicker/widget/RobotoMediumTextView;->setBackgroundColor(I)V

    .line 40
    iput p1, p0, Lcom/vk/attachpicker/widget/AnimatableTextView;->backgroundColor:I

    .line 41
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/vk/attachpicker/widget/RobotoMediumTextView;->setTextColor(I)V

    .line 30
    iput p1, p0, Lcom/vk/attachpicker/widget/AnimatableTextView;->textColor:I

    .line 31
    return-void
.end method

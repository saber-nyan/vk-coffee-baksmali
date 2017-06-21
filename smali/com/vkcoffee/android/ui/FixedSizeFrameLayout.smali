.class public Lcom/vkcoffee/android/ui/FixedSizeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "FixedSizeFrameLayout.java"


# instance fields
.field private h:I

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 3
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 34
    iget v0, p0, Lcom/vkcoffee/android/ui/FixedSizeFrameLayout;->w:I

    or-int/2addr v0, v2

    iget v1, p0, Lcom/vkcoffee/android/ui/FixedSizeFrameLayout;->h:I

    or-int/2addr v1, v2

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 35
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/vkcoffee/android/ui/FixedSizeFrameLayout;->w:I

    .line 29
    iput p2, p0, Lcom/vkcoffee/android/ui/FixedSizeFrameLayout;->h:I

    .line 30
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FixedSizeFrameLayout;->requestLayout()V

    .line 31
    return-void
.end method

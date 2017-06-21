.class public abstract Lcom/vk/attachpicker/crop/CropOverlayView;
.super Landroid/view/View;
.source "CropOverlayView.java"

# interfaces
.implements Lcom/vk/attachpicker/crop/CropAreaProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public abstract calculatePosition(F)Landroid/graphics/RectF;
.end method

.method public abstract initWithAspectRatio(F)V
.end method

.method public abstract setForcedAspectRatio(FFZ)V
.end method

.method public abstract setLinesAndTransparentOverlayVisible(Z)V
.end method

.method public abstract setOnCropChangeListener(Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;)V
.end method

.method public abstract setTopSidePadding(F)V
.end method

.method public abstract setTouchEnabled(Z)V
.end method

.method public abstract setX0(F)V
.end method

.method public abstract setX1(F)V
.end method

.method public abstract setY0(F)V
.end method

.method public abstract setY1(F)V
.end method

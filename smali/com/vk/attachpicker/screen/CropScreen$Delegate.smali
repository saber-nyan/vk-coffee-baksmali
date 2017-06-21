.class public interface abstract Lcom/vk/attachpicker/screen/CropScreen$Delegate;
.super Ljava/lang/Object;
.source "CropScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/screen/CropScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract getDrawingRect(F)Landroid/graphics/RectF;
.end method

.method public abstract onCrop(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
.end method

.method public abstract onFixedAspectRatioChanged(Lcom/vk/attachpicker/crop/CropAspectRatio;)V
.end method

.method public abstract startCropCloseAnimation(Landroid/graphics/RectF;)V
.end method

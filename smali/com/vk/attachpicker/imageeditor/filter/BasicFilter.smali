.class public abstract Lcom/vk/attachpicker/imageeditor/filter/BasicFilter;
.super Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;
.source "BasicFilter.java"

# interfaces
.implements Lcom/vk/attachpicker/imageeditor/output/GLTextureInputRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public newTextureReady(ILcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;Z)V
    .locals 1
    .param p1, "texture"    # I
    .param p2, "source"    # Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;
    .param p3, "newData"    # Z

    .prologue
    .line 21
    if-eqz p3, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/filter/BasicFilter;->markAsDirty()V

    .line 24
    :cond_0
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/filter/BasicFilter;->texture_in:I

    .line 25
    invoke-virtual {p2}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/imageeditor/filter/BasicFilter;->setWidth(I)V

    .line 26
    invoke-virtual {p2}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/imageeditor/filter/BasicFilter;->setHeight(I)V

    .line 27
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/filter/BasicFilter;->onDrawFrame()V

    .line 28
    return-void
.end method

.method public setIntensity(F)V
    .locals 0
    .param p1, "intensity"    # F

    .prologue
    .line 32
    return-void
.end method

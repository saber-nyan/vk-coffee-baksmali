.class public Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;
.super Lcom/vk/attachpicker/imageeditor/GLRenderer;
.source "ScreenEndpoint.java"

# interfaces
.implements Lcom/vk/attachpicker/imageeditor/output/GLTextureInputRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint$RenderCallback;
    }
.end annotation


# instance fields
.field private renderCallback:Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint$RenderCallback;

.field private rendererContext:Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;)V
    .locals 0
    .param p1, "rendererContext"    # Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;->rendererContext:Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;

    .line 27
    return-void
.end method


# virtual methods
.method protected initWithGLContext()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;->rendererContext:Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;->rendererContext:Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;

    invoke-virtual {v1}, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;->setRenderSize(II)V

    .line 32
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->initWithGLContext()V

    .line 33
    return-void
.end method

.method public newTextureReady(ILcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;Z)V
    .locals 1
    .param p1, "texture"    # I
    .param p2, "source"    # Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;
    .param p3, "newData"    # Z

    .prologue
    .line 40
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;->texture_in:I

    .line 41
    invoke-virtual {p2}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;->setWidth(I)V

    .line 42
    invoke-virtual {p2}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;->setHeight(I)V

    .line 43
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;->onDrawFrame()V

    .line 44
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;->renderCallback:Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint$RenderCallback;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;->renderCallback:Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint$RenderCallback;

    invoke-interface {v0}, Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint$RenderCallback;->onRender()V

    .line 47
    :cond_0
    return-void
.end method

.method public setRenderCallback(Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint$RenderCallback;)V
    .locals 0
    .param p1, "renderCallback"    # Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint$RenderCallback;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;->renderCallback:Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint$RenderCallback;

    .line 51
    return-void
.end method

.class Lcom/vk/attachpicker/imageeditor/GLTextureView$SimpleEGLConfigChooser;
.super Lcom/vk/attachpicker/imageeditor/GLTextureView$ComponentSizeChooser;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/imageeditor/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/imageeditor/GLTextureView;


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/imageeditor/GLTextureView;Z)V
    .locals 8
    .param p2, "withDepthBuffer"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 739
    iput-object p1, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView$SimpleEGLConfigChooser;->this$0:Lcom/vk/attachpicker/imageeditor/GLTextureView;

    .line 740
    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/vk/attachpicker/imageeditor/GLTextureView$ComponentSizeChooser;-><init>(Lcom/vk/attachpicker/imageeditor/GLTextureView;IIIIII)V

    .line 741
    return-void

    :cond_0
    move v6, v5

    .line 740
    goto :goto_0
.end method

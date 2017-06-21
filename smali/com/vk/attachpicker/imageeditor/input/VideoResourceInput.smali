.class public Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;
.super Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;
.source "VideoResourceInput.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final UNIFORM_CAM_MATRIX:Ljava/lang/String; = "u_Matrix"


# instance fields
.field private context:Landroid/content/Context;

.field private id:I

.field private matrix:[F

.field private matrixHandle:I

.field private player:Landroid/media/MediaPlayer;

.field private ready:Z

.field private startWhenReady:Z

.field private videoTex:Landroid/graphics/SurfaceTexture;

.field private view:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;Landroid/content/Context;I)V
    .locals 2
    .param p1, "view"    # Landroid/opengl/GLSurfaceView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;-><init>()V

    .line 36
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->matrix:[F

    .line 49
    iput-object p1, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->view:Landroid/opengl/GLSurfaceView;

    .line 50
    invoke-static {p2, p3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->player:Landroid/media/MediaPlayer;

    .line 51
    iput-object p2, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->context:Landroid/content/Context;

    .line 52
    iput p3, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->id:I

    .line 53
    iput-boolean v1, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->startWhenReady:Z

    .line 54
    iput-boolean v1, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->ready:Z

    .line 55
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->setRenderSize(II)V

    .line 56
    return-void
.end method

.method private bindTexture()V
    .locals 2

    .prologue
    .line 59
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 60
    const v0, 0x8d65

    iget v1, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->texture_in:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 61
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 210
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->destroy()V

    .line 211
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 213
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 214
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->player:Landroid/media/MediaPlayer;

    .line 215
    iput-boolean v2, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->ready:Z

    .line 217
    :cond_0
    iget v1, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->texture_in:I

    if-eqz v1, :cond_1

    .line 218
    new-array v0, v3, [I

    .line 219
    .local v0, "tex":[I
    iget v1, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->texture_in:I

    aput v1, v0, v2

    .line 220
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 221
    iput v2, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->texture_in:I

    .line 223
    .end local v0    # "tex":[I
    :cond_1
    return-void
.end method

.method protected drawFrame()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->videoTex:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 66
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->drawFrame()V

    .line 67
    return-void
.end method

.method protected getFragmentShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES inputImageTexture;\nvarying vec2 textureCoordinate;\nvoid main() {\n   gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}\n"

    return-object v0
.end method

.method protected getVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string/jumbo v0, "uniform mat4 u_Matrix;\nattribute vec4 position;\nattribute vec2 inputTextureCoordinate;\nvarying vec2 textureCoordinate;\nvoid main() {\n   vec4 texPos = u_Matrix * vec4(inputTextureCoordinate, 1, 1);\n   textureCoordinate = texPos.xy;\n   gl_Position = position;\n}\n"

    return-object v0
.end method

.method protected initShaderHandles()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->initShaderHandles()V

    .line 100
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->programHandle:I

    const-string/jumbo v1, "u_Matrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->matrixHandle:I

    .line 101
    return-void
.end method

.method protected initWithGLContext()V
    .locals 12

    .prologue
    const v11, 0x812f

    const v10, 0x46180400    # 9729.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v7, 0x8d65

    .line 106
    iput-boolean v8, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->ready:Z

    .line 108
    :try_start_0
    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->context:Landroid/content/Context;

    iget v6, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->id:I

    invoke-static {v5, v6}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v5

    iput-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->player:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v5

    iget-object v6, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->setRenderSize(II)V

    .line 118
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->initWithGLContext()V

    .line 120
    new-array v4, v9, [I

    .line 121
    .local v4, "textures":[I
    invoke-static {v9, v4, v8}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 122
    aget v5, v4, v8

    invoke-static {v7, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 123
    const/16 v5, 0x2801

    invoke-static {v7, v5, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 124
    const/16 v5, 0x2800

    invoke-static {v7, v5, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 125
    const/16 v5, 0x2802

    invoke-static {v7, v5, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 126
    const/16 v5, 0x2803

    invoke-static {v7, v5, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 127
    aget v5, v4, v8

    iput v5, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->texture_in:I

    .line 129
    new-instance v5, Landroid/graphics/SurfaceTexture;

    iget v6, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->texture_in:I

    invoke-direct {v5, v6}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->videoTex:Landroid/graphics/SurfaceTexture;

    .line 130
    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->videoTex:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v5, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 132
    new-instance v2, Landroid/view/Surface;

    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->videoTex:Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v5}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 134
    .local v2, "surface":Landroid/view/Surface;
    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 136
    iput-boolean v9, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->ready:Z

    .line 137
    iget-boolean v5, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->startWhenReady:Z

    if-eqz v5, :cond_0

    .line 138
    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 140
    :cond_0
    return-void

    .line 109
    .end local v2    # "surface":Landroid/view/Surface;
    .end local v4    # "textures":[I
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "VideoPlayer"

    const-string/jumbo v6, "Failed to load video"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 112
    .local v3, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 113
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 114
    const-string/jumbo v5, "VideoPlayer"

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "arg0"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->markAsDirty()V

    .line 148
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 149
    return-void
.end method

.method protected passShaderValues()V
    .locals 7

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 153
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->renderVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->positionHandle:I

    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->renderVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 155
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 156
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->textureVertices:[Ljava/nio/FloatBuffer;

    iget v5, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->curRotation:I

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 157
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->texCoordHandle:I

    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->textureVertices:[Ljava/nio/FloatBuffer;

    iget v6, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->curRotation:I

    aget-object v5, v5, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 158
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->texCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 160
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->bindTexture()V

    .line 161
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->textureHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 163
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->videoTex:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->matrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 164
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->matrixHandle:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->matrix:[F

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 165
    return-void
.end method

.method public setVideoSource(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->id:I

    .line 174
    return-void
.end method

.method public startWhenReady()V
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->ready:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->startWhenReady:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/VideoResourceInput;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 203
    return-void
.end method

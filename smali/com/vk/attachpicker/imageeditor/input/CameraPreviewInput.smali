.class public Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;
.super Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;
.source "CameraPreviewInput.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final UNIFORM_CAM_MATRIX:Ljava/lang/String; = "u_Matrix"


# instance fields
.field private camTex:Landroid/graphics/SurfaceTexture;

.field private camera:Landroid/hardware/Camera;

.field private matrix:[F

.field private matrixHandle:I

.field private view:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .locals 1
    .param p1, "view"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;-><init>()V

    .line 34
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->matrix:[F

    .line 43
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->createCamera()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camera:Landroid/hardware/Camera;

    .line 44
    iput-object p1, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->view:Landroid/opengl/GLSurfaceView;

    .line 45
    return-void
.end method

.method private bindTexture()V
    .locals 2

    .prologue
    .line 48
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 49
    const v0, 0x8d65

    iget v1, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->texture_in:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 50
    return-void
.end method

.method private setRenderSizeToCameraSize()V
    .locals 4

    .prologue
    .line 210
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 211
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 212
    .local v1, "previewSize":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p0, v2, v3}, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->setRenderSize(II)V

    .line 213
    return-void
.end method


# virtual methods
.method protected createCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->destroy()V

    .line 63
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 65
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 66
    iput-object v4, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camera:Landroid/hardware/Camera;

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camTex:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camTex:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 70
    iput-object v4, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camTex:Landroid/graphics/SurfaceTexture;

    .line 72
    :cond_1
    iget v1, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->texture_in:I

    if-eqz v1, :cond_2

    .line 73
    new-array v0, v3, [I

    .line 74
    .local v0, "tex":[I
    iget v1, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->texture_in:I

    aput v1, v0, v2

    .line 75
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 76
    iput v2, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->texture_in:I

    .line 78
    .end local v0    # "tex":[I
    :cond_2
    return-void
.end method

.method protected drawFrame()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camTex:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 83
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->drawFrame()V

    .line 84
    return-void
.end method

.method protected getFragmentShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string/jumbo v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES inputImageTexture;\nvarying vec2 textureCoordinate;\nvoid main() {\n   gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}\n"

    return-object v0
.end method

.method protected getVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string/jumbo v0, "uniform mat4 u_Matrix;\nattribute vec4 position;\nattribute vec2 inputTextureCoordinate;\nvarying vec2 textureCoordinate;\nvoid main() {\n   vec4 texPos = u_Matrix * vec4(inputTextureCoordinate, 1, 1);\n   textureCoordinate = texPos.xy;\n   gl_Position = position;\n}\n"

    return-object v0
.end method

.method protected initShaderHandles()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->initShaderHandles()V

    .line 118
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->programHandle:I

    const-string/jumbo v1, "u_Matrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->matrixHandle:I

    .line 119
    return-void
.end method

.method protected initWithGLContext()V
    .locals 10

    .prologue
    const v9, 0x812f

    const/4 v5, 0x1

    const v8, 0x46180400    # 9729.0f

    const/4 v7, 0x0

    const v6, 0x8d65

    .line 123
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->initWithGLContext()V

    .line 125
    new-array v4, v5, [I

    .line 126
    .local v4, "textures":[I
    invoke-static {v5, v4, v7}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 127
    aget v5, v4, v7

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 128
    const/16 v5, 0x2801

    invoke-static {v6, v5, v8}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 129
    const/16 v5, 0x2800

    invoke-static {v6, v5, v8}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 130
    const/16 v5, 0x2802

    invoke-static {v6, v5, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 131
    const/16 v5, 0x2803

    invoke-static {v6, v5, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 132
    aget v5, v4, v7

    iput v5, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->texture_in:I

    .line 134
    new-instance v5, Landroid/graphics/SurfaceTexture;

    iget v6, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->texture_in:I

    invoke-direct {v5, v6}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camTex:Landroid/graphics/SurfaceTexture;

    .line 135
    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camTex:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v5, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 137
    const/4 v1, 0x1

    .line 138
    .local v1, "failed":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 140
    :try_start_0
    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camera:Landroid/hardware/Camera;

    if-eqz v5, :cond_1

    .line 141
    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->stopPreview()V

    .line 142
    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->release()V

    .line 143
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camera:Landroid/hardware/Camera;

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->createCamera()Landroid/hardware/Camera;

    move-result-object v5

    iput-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camera:Landroid/hardware/Camera;

    .line 146
    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camera:Landroid/hardware/Camera;

    iget-object v6, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camTex:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 147
    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->startPreview()V

    .line 148
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->setRenderSizeToCameraSize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    const/4 v1, 0x0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 152
    .local v3, "sw":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 153
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 154
    const-string/jumbo v5, "CameraInput"

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camera:Landroid/hardware/Camera;

    if-eqz v5, :cond_0

    .line 156
    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->release()V

    .line 157
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camera:Landroid/hardware/Camera;

    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "sw":Ljava/io/StringWriter;
    :cond_2
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "arg0"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->markAsDirty()V

    .line 169
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 170
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 180
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camera:Landroid/hardware/Camera;

    .line 183
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->reInitialize()V

    .line 191
    return-void
.end method

.method protected passShaderValues()V
    .locals 7

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 195
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->renderVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->positionHandle:I

    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->renderVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 197
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 198
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->textureVertices:[Ljava/nio/FloatBuffer;

    iget v5, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->curRotation:I

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 199
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->texCoordHandle:I

    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->textureVertices:[Ljava/nio/FloatBuffer;

    iget v6, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->curRotation:I

    aget-object v5, v5, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 200
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->texCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 202
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->bindTexture()V

    .line 203
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->textureHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 205
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->camTex:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->matrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 206
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->matrixHandle:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/input/CameraPreviewInput;->matrix:[F

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 207
    return-void
.end method

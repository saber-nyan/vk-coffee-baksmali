.class Lnet/ypresto/androidtranscoder/engine/TextureRender;
.super Ljava/lang/Object;
.source "TextureRender.java"


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final TAG:Ljava/lang/String; = "TextureRender"

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"


# instance fields
.field private mMVPMatrix:[F

.field private mProgram:I

.field private mSTMatrix:[F

.field private mTextureID:I

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private final mTriangleVerticesData:[F

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mTriangleVerticesData:[F

    .line 65
    new-array v0, v1, [F

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mMVPMatrix:[F

    .line 66
    new-array v0, v1, [F

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mSTMatrix:[F

    .line 68
    const/16 v0, -0x3039

    iput v0, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mTextureID:I

    .line 74
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mTriangleVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 76
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 77
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mTriangleVerticesData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 78
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mSTMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 79
    return-void

    .line 39
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "vertexSource"    # Ljava/lang/String;
    .param p2, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 176
    const v5, 0x8b31

    invoke-direct {p0, v5, p1}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 177
    .local v3, "vertexShader":I
    if-nez v3, :cond_1

    move v2, v4

    .line 202
    :cond_0
    :goto_0
    return v2

    .line 180
    :cond_1
    const v5, 0x8b30

    invoke-direct {p0, v5, p2}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 181
    .local v1, "pixelShader":I
    if-nez v1, :cond_2

    move v2, v4

    .line 182
    goto :goto_0

    .line 184
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 185
    .local v2, "program":I
    const-string/jumbo v5, "glCreateProgram"

    invoke-virtual {p0, v5}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 186
    if-nez v2, :cond_3

    .line 187
    const-string/jumbo v5, "TextureRender"

    const-string/jumbo v6, "Could not create program"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_3
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 190
    const-string/jumbo v5, "glAttachShader"

    invoke-virtual {p0, v5}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 191
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 192
    const-string/jumbo v5, "glAttachShader"

    invoke-virtual {p0, v5}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 193
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 194
    new-array v0, v7, [I

    .line 195
    .local v0, "linkStatus":[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 196
    aget v4, v0, v4

    if-eq v4, v7, :cond_0

    .line 197
    const-string/jumbo v4, "TextureRender"

    const-string/jumbo v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string/jumbo v4, "TextureRender"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 200
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 161
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 162
    .local v1, "shader":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "glCreateShader type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 163
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 164
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 165
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 166
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 167
    aget v2, v0, v4

    if-nez v2, :cond_0

    .line 168
    const-string/jumbo v2, "TextureRender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string/jumbo v2, "TextureRender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 171
    const/4 v1, 0x0

    .line 173
    :cond_0
    return v1
.end method

.method public static saveFrame(Ljava/lang/String;II)V
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 217
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public changeFragmentShader(Ljava/lang/String;)V
    .locals 2
    .param p1, "fragmentShader"    # Ljava/lang/String;

    .prologue
    .line 158
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p1, "op"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 207
    const-string/jumbo v1, "TextureRender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_0
    return-void
.end method

.method public drawFrame(Landroid/graphics/SurfaceTexture;)V
    .locals 7
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 84
    const-string/jumbo v0, "onDrawFrame start"

    invoke-virtual {p0, v0}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mSTMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 86
    invoke-static {v2, v4, v2, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 87
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 88
    iget v0, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 89
    const-string/jumbo v0, "glUseProgram"

    invoke-virtual {p0, v0}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 90
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 91
    const v0, 0x8d65

    iget v2, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mTextureID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 92
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 93
    iget v0, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->maPositionHandle:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 95
    const-string/jumbo v0, "glVertexAttribPointer maPosition"

    invoke-virtual {p0, v0}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 96
    iget v0, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 97
    const-string/jumbo v0, "glEnableVertexAttribArray maPositionHandle"

    invoke-virtual {p0, v0}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    iget v0, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->maTextureHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 101
    const-string/jumbo v0, "glVertexAttribPointer maTextureHandle"

    invoke-virtual {p0, v0}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 102
    iget v0, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 103
    const-string/jumbo v0, "glEnableVertexAttribArray maTextureHandle"

    invoke-virtual {p0, v0}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mMVPMatrix:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 105
    iget v0, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->muMVPMatrixHandle:I

    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mMVPMatrix:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 106
    iget v0, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->muSTMatrixHandle:I

    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mSTMatrix:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 107
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 108
    const-string/jumbo v0, "glDrawArrays"

    invoke-virtual {p0, v0}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 110
    return-void
.end method

.method public getTextureId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mTextureID:I

    return v0
.end method

.method public surfaceCreated()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x46180400    # 9729.0f

    const/4 v4, -0x1

    const v3, 0x8d65

    .line 115
    const-string/jumbo v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string/jumbo v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {p0, v1, v2}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mProgram:I

    .line 116
    iget v1, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mProgram:I

    if-nez v1, :cond_0

    .line 117
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "failed creating program"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_0
    iget v1, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mProgram:I

    const-string/jumbo v2, "aPosition"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->maPositionHandle:I

    .line 120
    const-string/jumbo v1, "glGetAttribLocation aPosition"

    invoke-virtual {p0, v1}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 121
    iget v1, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->maPositionHandle:I

    if-ne v1, v4, :cond_1

    .line 122
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not get attrib location for aPosition"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_1
    iget v1, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mProgram:I

    const-string/jumbo v2, "aTextureCoord"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->maTextureHandle:I

    .line 125
    const-string/jumbo v1, "glGetAttribLocation aTextureCoord"

    invoke-virtual {p0, v1}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 126
    iget v1, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->maTextureHandle:I

    if-ne v1, v4, :cond_2

    .line 127
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not get attrib location for aTextureCoord"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_2
    iget v1, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mProgram:I

    const-string/jumbo v2, "uMVPMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->muMVPMatrixHandle:I

    .line 130
    const-string/jumbo v1, "glGetUniformLocation uMVPMatrix"

    invoke-virtual {p0, v1}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 131
    iget v1, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->muMVPMatrixHandle:I

    if-ne v1, v4, :cond_3

    .line 132
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_3
    iget v1, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mProgram:I

    const-string/jumbo v2, "uSTMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->muSTMatrixHandle:I

    .line 135
    const-string/jumbo v1, "glGetUniformLocation uSTMatrix"

    invoke-virtual {p0, v1}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 136
    iget v1, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->muSTMatrixHandle:I

    if-ne v1, v4, :cond_4

    .line 137
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not get attrib location for uSTMatrix"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_4
    new-array v0, v7, [I

    .line 140
    .local v0, "textures":[I
    invoke-static {v7, v0, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 141
    aget v1, v0, v6

    iput v1, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mTextureID:I

    .line 142
    iget v1, p0, Lnet/ypresto/androidtranscoder/engine/TextureRender;->mTextureID:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 143
    const-string/jumbo v1, "glBindTexture mTextureID"

    invoke-virtual {p0, v1}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 144
    const/16 v1, 0x2801

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 146
    const/16 v1, 0x2800

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 148
    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 150
    const/16 v1, 0x2803

    const v2, 0x812f

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 152
    const-string/jumbo v1, "glTexParameter"

    invoke-virtual {p0, v1}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 153
    return-void
.end method

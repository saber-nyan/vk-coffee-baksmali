.class public Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;
.super Ljava/lang/Object;
.source "PaintBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flask/colorpicker/builder/PaintBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaintHolder"
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->paint:Landroid/graphics/Paint;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/flask/colorpicker/builder/PaintBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flask/colorpicker/builder/PaintBuilder$1;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public antiAlias(Z)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 29
    iget-object v0, p0, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    return-object p0
.end method

.method public build()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 24
    iget-object v0, p0, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    return-object p0
.end method

.method public mode(Landroid/graphics/PorterDuff$Mode;)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;
    .locals 2
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v1, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 40
    return-object p0
.end method

.method public shader(Landroid/graphics/Shader;)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;
    .locals 1
    .param p1, "shader"    # Landroid/graphics/Shader;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 55
    return-object p0
.end method

.method public stroke(F)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 44
    iget-object v0, p0, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    return-object p0
.end method

.method public style(Landroid/graphics/Paint$Style;)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;
    .locals 1
    .param p1, "style"    # Landroid/graphics/Paint$Style;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    return-object p0
.end method

.method public xPerMode(Landroid/graphics/PorterDuff$Mode;)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;
    .locals 2
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v1, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 50
    return-object p0
.end method

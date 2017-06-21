.class public Lcom/vk/attachpicker/widget/ClippingView;
.super Landroid/view/View;
.source "ClippingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/widget/ClippingView$OnDrawListener;
    }
.end annotation


# static fields
.field public static final CLIP_BOTTOM:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/vk/attachpicker/widget/ClippingView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CLIP_HORIZONTAL:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/vk/attachpicker/widget/ClippingView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CLIP_LEFT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/vk/attachpicker/widget/ClippingView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CLIP_RIGHT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/vk/attachpicker/widget/ClippingView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CLIP_TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/vk/attachpicker/widget/ClippingView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CLIP_VERTICAL:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/vk/attachpicker/widget/ClippingView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private clipBottom:I

.field private clipLeft:I

.field private clipRight:I

.field private clipTop:I

.field private drawListener:Lcom/vk/attachpicker/widget/ClippingView$OnDrawListener;

.field private drawRect:Landroid/graphics/Rect;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Lcom/vk/attachpicker/widget/ClippingView$1;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "clipLeft"

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/widget/ClippingView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/vk/attachpicker/widget/ClippingView;->CLIP_LEFT:Landroid/util/Property;

    .line 27
    new-instance v0, Lcom/vk/attachpicker/widget/ClippingView$2;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "clipTop"

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/widget/ClippingView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/vk/attachpicker/widget/ClippingView;->CLIP_TOP:Landroid/util/Property;

    .line 39
    new-instance v0, Lcom/vk/attachpicker/widget/ClippingView$3;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "clipRight"

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/widget/ClippingView$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/vk/attachpicker/widget/ClippingView;->CLIP_RIGHT:Landroid/util/Property;

    .line 51
    new-instance v0, Lcom/vk/attachpicker/widget/ClippingView$4;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "clipBottom"

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/widget/ClippingView$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/vk/attachpicker/widget/ClippingView;->CLIP_BOTTOM:Landroid/util/Property;

    .line 63
    new-instance v0, Lcom/vk/attachpicker/widget/ClippingView$5;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "clipBottom"

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/widget/ClippingView$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/vk/attachpicker/widget/ClippingView;->CLIP_VERTICAL:Landroid/util/Property;

    .line 77
    new-instance v0, Lcom/vk/attachpicker/widget/ClippingView$6;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "clipBottom"

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/widget/ClippingView$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/vk/attachpicker/widget/ClippingView;->CLIP_HORIZONTAL:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/ClippingView;->init()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/ClippingView;->init()V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/ClippingView;->init()V

    .line 113
    return-void
.end method

.method static synthetic access$002(Lcom/vk/attachpicker/widget/ClippingView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/ClippingView;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/vk/attachpicker/widget/ClippingView;->clipBottom:I

    return p1
.end method

.method static synthetic access$102(Lcom/vk/attachpicker/widget/ClippingView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/ClippingView;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/vk/attachpicker/widget/ClippingView;->clipTop:I

    return p1
.end method

.method static synthetic access$202(Lcom/vk/attachpicker/widget/ClippingView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/ClippingView;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/vk/attachpicker/widget/ClippingView;->clipLeft:I

    return p1
.end method

.method static synthetic access$302(Lcom/vk/attachpicker/widget/ClippingView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/ClippingView;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/vk/attachpicker/widget/ClippingView;->clipRight:I

    return p1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ClippingView;->paint:Landroid/graphics/Paint;

    .line 117
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ClippingView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ClippingView;->drawRect:Landroid/graphics/Rect;

    .line 119
    return-void
.end method


# virtual methods
.method public getClipBottom()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/vk/attachpicker/widget/ClippingView;->clipBottom:I

    return v0
.end method

.method public getClipHorizontal()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/vk/attachpicker/widget/ClippingView;->clipRight:I

    return v0
.end method

.method public getClipLeft()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/vk/attachpicker/widget/ClippingView;->clipLeft:I

    return v0
.end method

.method public getClipRight()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/vk/attachpicker/widget/ClippingView;->clipRight:I

    return v0
.end method

.method public getClipTop()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/vk/attachpicker/widget/ClippingView;->clipTop:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 148
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ClippingView;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ClippingView;->drawListener:Lcom/vk/attachpicker/widget/ClippingView$OnDrawListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ClippingView;->getScaleY()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ClippingView;->drawListener:Lcom/vk/attachpicker/widget/ClippingView$OnDrawListener;

    invoke-interface {v0}, Lcom/vk/attachpicker/widget/ClippingView$OnDrawListener;->onDraw()V

    .line 152
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 153
    iget v0, p0, Lcom/vk/attachpicker/widget/ClippingView;->clipLeft:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ClippingView;->getScaleY()F

    move-result v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/vk/attachpicker/widget/ClippingView;->clipTop:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ClippingView;->getScaleY()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ClippingView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/vk/attachpicker/widget/ClippingView;->clipRight:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ClippingView;->getScaleY()F

    move-result v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ClippingView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/vk/attachpicker/widget/ClippingView;->clipBottom:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ClippingView;->getScaleY()F

    move-result v5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 154
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ClippingView;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ClippingView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ClippingView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ClippingView;->bmp:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vk/attachpicker/widget/ClippingView;->drawRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/vk/attachpicker/widget/ClippingView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 162
    :cond_1
    return-void

    .line 157
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setClipBottom(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/vk/attachpicker/widget/ClippingView;->clipBottom:I

    .line 166
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ClippingView;->invalidate()V

    .line 167
    return-void
.end method

.method public setClipHorizontal(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/vk/attachpicker/widget/ClippingView;->clipRight:I

    .line 171
    iput p1, p0, Lcom/vk/attachpicker/widget/ClippingView;->clipLeft:I

    .line 172
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ClippingView;->invalidate()V

    .line 173
    return-void
.end method

.method public setClipLeft(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/vk/attachpicker/widget/ClippingView;->clipLeft:I

    .line 177
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ClippingView;->invalidate()V

    .line 178
    return-void
.end method

.method public setClipRight(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 181
    iput p1, p0, Lcom/vk/attachpicker/widget/ClippingView;->clipRight:I

    .line 182
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ClippingView;->invalidate()V

    .line 183
    return-void
.end method

.method public setClipTop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/vk/attachpicker/widget/ClippingView;->clipTop:I

    .line 187
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ClippingView;->invalidate()V

    .line 188
    return-void
.end method

.method public setClipVertical(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/vk/attachpicker/widget/ClippingView;->clipBottom:I

    .line 192
    iput p1, p0, Lcom/vk/attachpicker/widget/ClippingView;->clipTop:I

    .line 193
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ClippingView;->invalidate()V

    .line 194
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/vk/attachpicker/widget/ClippingView;->bmp:Landroid/graphics/Bitmap;

    .line 198
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ClippingView;->invalidate()V

    .line 199
    return-void
.end method

.method public setOnDrawListener(Lcom/vk/attachpicker/widget/ClippingView$OnDrawListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vk/attachpicker/widget/ClippingView$OnDrawListener;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/vk/attachpicker/widget/ClippingView;->drawListener:Lcom/vk/attachpicker/widget/ClippingView$OnDrawListener;

    .line 203
    return-void
.end method

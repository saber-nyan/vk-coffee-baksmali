.class final Lcom/vk/attachpicker/crop/CropUtils$1;
.super Ljava/lang/Object;
.source "CropUtils.java"

# interfaces
.implements Lcom/vk/attachpicker/crop/CropAreaProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/crop/CropUtils;->createCropAreaProvider(II)Lcom/vk/attachpicker/crop/CropAreaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ar:F

.field final synthetic val$centerX:F

.field final synthetic val$centerY:F

.field final synthetic val$cropHeight:I

.field final synthetic val$cropWidth:I


# direct methods
.method constructor <init>(FFFII)V
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/vk/attachpicker/crop/CropUtils$1;->val$ar:F

    iput p2, p0, Lcom/vk/attachpicker/crop/CropUtils$1;->val$centerX:F

    iput p3, p0, Lcom/vk/attachpicker/crop/CropUtils$1;->val$centerY:F

    iput p4, p0, Lcom/vk/attachpicker/crop/CropUtils$1;->val$cropWidth:I

    iput p5, p0, Lcom/vk/attachpicker/crop/CropUtils$1;->val$cropHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCenterX()F
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/vk/attachpicker/crop/CropUtils$1;->val$centerX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/vk/attachpicker/crop/CropUtils$1;->val$centerY:F

    return v0
.end method

.method public getCropAspectRatio()F
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/vk/attachpicker/crop/CropUtils$1;->val$ar:F

    return v0
.end method

.method public getCropHeight()F
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/vk/attachpicker/crop/CropUtils$1;->val$cropHeight:I

    int-to-float v0, v0

    return v0
.end method

.method public getCropRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCropScale()F
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public getCropWidth()F
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/vk/attachpicker/crop/CropUtils$1;->val$cropWidth:I

    int-to-float v0, v0

    return v0
.end method

.method public getX0()F
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getX1()F
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getY0()F
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getY1()F
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

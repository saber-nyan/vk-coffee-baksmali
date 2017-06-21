.class Lcom/vkcoffee/android/attachments/GraffitiAttachment$2;
.super Landroid/widget/ImageView;
.source "GraffitiAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/attachments/GraffitiAttachment;->getFullView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/attachments/GraffitiAttachment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/attachments/GraffitiAttachment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/attachments/GraffitiAttachment;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment$2;->this$0:Lcom/vkcoffee/android/attachments/GraffitiAttachment;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 8
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 102
    iget-object v5, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment$2;->this$0:Lcom/vkcoffee/android/attachments/GraffitiAttachment;

    iget v4, v5, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->width:I

    .line 103
    .local v4, "width":I
    iget-object v5, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment$2;->this$0:Lcom/vkcoffee/android/attachments/GraffitiAttachment;

    iget v1, v5, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->height:I

    .line 107
    .local v1, "height":I
    if-eqz v4, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/GraffitiAttachment$2;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 109
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 113
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    sget v5, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->GRAFFITI_SIZE:I

    if-ge v4, v5, :cond_4

    sget v5, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->GRAFFITI_SIZE:I

    if-ge v1, v5, :cond_4

    .line 114
    const v5, 0x3fd9999a    # 1.7f

    sget v6, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->GRAFFITI_SIZE:I

    int-to-float v6, v6

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 115
    .local v2, "scale":F
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v3, v5

    .line 120
    .end local v2    # "scale":F
    .local v3, "viewSize":I
    :goto_0
    if-eqz v4, :cond_2

    if-nez v1, :cond_3

    .line 121
    :cond_2
    move v1, v3

    move v4, v3

    .line 124
    :cond_3
    if-le v4, v1, :cond_5

    .line 125
    move p1, v3

    .line 126
    mul-int v5, p1, v1

    int-to-float v5, v5

    int-to-float v6, v4

    div-float/2addr v5, v6

    float-to-int p2, v5

    .line 131
    :goto_1
    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    add-int/2addr v5, p2

    invoke-virtual {p0, p1, v5}, Lcom/vkcoffee/android/attachments/GraffitiAttachment$2;->setMeasuredDimension(II)V

    .line 132
    return-void

    .line 117
    .end local v3    # "viewSize":I
    :cond_4
    sget v3, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->GRAFFITI_SIZE:I

    .restart local v3    # "viewSize":I
    goto :goto_0

    .line 128
    :cond_5
    move p2, v3

    .line 129
    mul-int v5, p2, v4

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    float-to-int p1, v5

    goto :goto_1
.end method

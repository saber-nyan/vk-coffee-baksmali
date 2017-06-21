.class Lcom/vkcoffee/android/ui/AttachmentsEditorView$14;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/AttachmentsEditorView;->createLocationView(Lcom/vkcoffee/android/attachments/GeoAttachment;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

.field final synthetic val$att:Lcom/vkcoffee/android/attachments/GeoAttachment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/GeoAttachment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .prologue
    .line 838
    iput-object p1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$14;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$14;->val$att:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iput-object p3, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$14;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 841
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$14;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v13

    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$14;->val$att:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-wide v0, v0, Lcom/vkcoffee/android/attachments/GeoAttachment;->lat:D

    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$14;->val$att:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-wide v2, v2, Lcom/vkcoffee/android/attachments/GeoAttachment;->lon:D

    const/16 v4, 0x60

    const/16 v5, 0x48

    const/16 v6, 0xe

    invoke-static/range {v0 .. v6}, Lcom/vkcoffee/android/Global;->getStaticMapURL(DDIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 842
    .local v9, "map":Landroid/graphics/Bitmap;
    const/high16 v0, 0x42c00000    # 96.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 843
    .local v7, "bmp":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 844
    .local v8, "c":Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 845
    .local v11, "paint":Landroid/graphics/Paint;
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 846
    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x42c00000    # 96.0f

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    const/high16 v5, 0x42900000    # 72.0f

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v9, v0, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 847
    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$14;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 848
    .local v10, "marker":Landroid/graphics/drawable/Drawable;
    const/high16 v0, 0x42c00000    # 96.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x42c00000    # 96.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/high16 v3, 0x42900000    # 72.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 849
    invoke-virtual {v10, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 850
    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$14;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    new-instance v1, Lcom/vkcoffee/android/ui/AttachmentsEditorView$14$1;

    invoke-direct {v1, p0, v7}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$14$1;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView$14;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "c":Landroid/graphics/Canvas;
    .end local v9    # "map":Landroid/graphics/Bitmap;
    .end local v10    # "marker":Landroid/graphics/drawable/Drawable;
    .end local v11    # "paint":Landroid/graphics/Paint;
    :goto_0
    return-void

    .line 855
    :catch_0
    move-exception v12

    .line 856
    .local v12, "x":Ljava/lang/Exception;
    const-string/jumbo v0, "vk"

    invoke-static {v0, v12}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

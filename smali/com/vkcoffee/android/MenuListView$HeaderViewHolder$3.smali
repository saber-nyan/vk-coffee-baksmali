.class Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->setImage(ILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3;->this$1:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;

    iput-object p2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3;->val$bitmap:Landroid/graphics/Bitmap;

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3;)Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3;->this$1:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v2, 0x2

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/16 v10, 0x32

    .line 461
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v10, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 462
    .local v7, "small":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v11, v11, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, v4, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 463
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "blurMenu"

    const/4 v8, 0x1

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-static {v7, v2}, Lme/grishka/appkit/imageloader/StackBlur;->blurBitmap(Landroid/graphics/Bitmap;I)V

    .line 464
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v6

    .line 465
    .local v6, "palette":Landroid/support/v7/graphics/Palette;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 466
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 467
    .local v5, "paint":Landroid/graphics/Paint;
    const v2, -0xab8b67

    invoke-virtual {v6, v2}, Landroid/support/v7/graphics/Palette;->getDarkMutedColor(I)I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v2, v3

    const/high16 v3, 0x66000000

    or-int/2addr v2, v3

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 468
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 469
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3;->this$1:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->access$5(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)Lcom/vkcoffee/android/MenuListView;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3$1;

    invoke-direct {v2, p0, v7}, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3$1;-><init>(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/MenuListView;->post(Ljava/lang/Runnable;)Z

    .line 474
    return-void

    .line 463
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "palette":Landroid/support/v7/graphics/Palette;
    :cond_0
    const/16 v2, 0xf

    goto :goto_0
.end method
